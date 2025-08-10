#!/usr/bin/env python3
"""
Simulador Simple de la Máquina Virtual TM (Tiny Machine)
Ejecuta archivos .tm generados por el compilador Tiny
"""

import sys
import re

class TMSimulator:
    def __init__(self):
        self.registers = [0] * 8  # 8 registros (r0-r7)
        self.memory = [1024] + [0] * 1023  # memoria[0] = 1024 (tamaño), resto inicializado a 0
        self.pc = 0  # program counter
        self.instructions = []
        self.halted = False
        self.step_count = 0
        self.max_steps = 10000  # Límite para evitar bucles infinitos
        
    def load_program(self, filename):
        """Cargar programa desde archivo .tm"""
        try:
            with open(filename, 'r') as f:
                lines = f.readlines()
            
            for line in lines:
                line = line.strip()
                if line and not line.startswith('*'):
                    # Parsear instrucción: "numero: OPCODE operandos"
                    match = re.match(r'(\d+):\s*(\w+)\s+(.*)', line)
                    if match:
                        addr = int(match.group(1))
                        opcode = match.group(2)
                        operands = match.group(3).strip()
                        
                        # Asegurar que hay suficiente espacio en instructions
                        while len(self.instructions) <= addr:
                            self.instructions.append(None)
                        
                        self.instructions[addr] = (opcode, operands)
            
            print(f"Programa cargado: {len([i for i in self.instructions if i])} instrucciones")
            return True
            
        except Exception as e:
            print(f"Error cargando programa: {e}")
            return False
    
    def parse_operands(self, operands):
        """Parsear operandos de una instrucción"""
        if not operands:
            return []
        
        # Separar por comas
        parts = operands.split(',')
        result = []
        
        for part in parts:
            part = part.strip()
            
            # Formato registro(registro): ej "5(7)" -> registro 5 con base en registro 7
            if '(' in part and ')' in part:
                match = re.match(r'(-?\d+)\((\d+)\)', part)
                if match:
                    offset = int(match.group(1))
                    base_reg = int(match.group(2))
                    result.append(('memory', offset, base_reg))
                else:
                    result.append(('invalid', part))
            else:
                # Número simple (registro o constante)
                try:
                    result.append(('register', int(part)))
                except:
                    result.append(('invalid', part))
        
        return result
    
    def get_memory_address(self, offset, base_reg):
        """Calcular dirección de memoria"""
        return offset + self.registers[base_reg]
    
    def execute_instruction(self, opcode, operands):
        """Ejecutar una instrucción"""
        ops = self.parse_operands(operands)
        
        if opcode == "HALT":
            self.halted = True
            print("Programa terminado (HALT)")
            return
        
        elif opcode == "LD":  # Load: reg = mem[addr]
            if len(ops) >= 2:
                reg = ops[0][1]
                if ops[1][0] == 'memory':
                    addr = self.get_memory_address(ops[1][1], ops[1][2])
                    if 0 <= addr < len(self.memory):
                        self.registers[reg] = self.memory[addr]
                        # print(f"LD: r{reg} = mem[{addr}] = {self.memory[addr]}")
        
        elif opcode == "ST":  # Store: mem[addr] = reg
            if len(ops) >= 2:
                reg = ops[0][1]
                if ops[1][0] == 'memory':
                    addr = self.get_memory_address(ops[1][1], ops[1][2])
                    if 0 <= addr < len(self.memory):
                        self.memory[addr] = self.registers[reg]
                        # print(f"ST: mem[{addr}] = r{reg} = {self.registers[reg]}")
        
        elif opcode == "LDC":  # Load constant: reg = constant
            if len(ops) >= 2:
                reg = ops[0][1]
                const = ops[1][1]
                self.registers[reg] = const
                # print(f"LDC: r{reg} = {const}")
        
        elif opcode == "LDA":  # Load address: reg = address
            if len(ops) >= 2:
                reg = ops[0][1]
                if ops[1][0] == 'memory':
                    addr = self.get_memory_address(ops[1][1], ops[1][2])
                    self.registers[reg] = addr
        
        elif opcode == "ADD":  # Add: reg1 = reg2 + reg3
            if len(ops) >= 3:
                reg1 = ops[0][1]
                reg2 = ops[1][1]
                reg3 = ops[2][1]
                self.registers[reg1] = self.registers[reg2] + self.registers[reg3]
        
        elif opcode == "SUB":  # Subtract: reg1 = reg2 - reg3
            if len(ops) >= 3:
                reg1 = ops[0][1]
                reg2 = ops[1][1]
                reg3 = ops[2][1]
                self.registers[reg1] = self.registers[reg2] - self.registers[reg3]
        
        elif opcode == "MUL":  # Multiply: reg1 = reg2 * reg3
            if len(ops) >= 3:
                reg1 = ops[0][1]
                reg2 = ops[1][1]
                reg3 = ops[2][1]
                self.registers[reg1] = self.registers[reg2] * self.registers[reg3]
        
        elif opcode == "DIV":  # Divide: reg1 = reg2 / reg3
            if len(ops) >= 3:
                reg1 = ops[0][1]
                reg2 = ops[1][1]
                reg3 = ops[2][1]
                if self.registers[reg3] != 0:
                    self.registers[reg1] = self.registers[reg2] // self.registers[reg3]
                else:
                    print("Error: División por cero")
                    self.halted = True
        
        elif opcode == "IN":  # Input: reg = input()
            if len(ops) >= 1:
                reg = ops[0][1]
                try:
                    value = int(input("Ingrese un número: "))
                    self.registers[reg] = value
                except:
                    print("Error de entrada, usando 0")
                    self.registers[reg] = 0
        
        elif opcode == "OUT":  # Output: print(reg)
            if len(ops) >= 1:
                reg = ops[0][1]
                print(self.registers[reg])
        
        # Saltos condicionales
        elif opcode == "JEQ":  # Jump if equal to zero
            if len(ops) >= 2:
                reg = ops[0][1]
                if self.registers[reg] == 0:
                    if ops[1][0] == 'memory':
                        self.pc = self.get_memory_address(ops[1][1], ops[1][2])
                        return  # No incrementar PC
        
        elif opcode == "JNE":  # Jump if not equal to zero
            if len(ops) >= 2:
                reg = ops[0][1]
                if self.registers[reg] != 0:
                    if ops[1][0] == 'memory':
                        self.pc = self.get_memory_address(ops[1][1], ops[1][2])
                        return
        
        elif opcode == "JLT":  # Jump if less than zero
            if len(ops) >= 2:
                reg = ops[0][1]
                if self.registers[reg] < 0:
                    if ops[1][0] == 'memory':
                        self.pc = self.get_memory_address(ops[1][1], ops[1][2])
                        return
        
        elif opcode == "JLE":  # Jump if less than or equal to zero
            if len(ops) >= 2:
                reg = ops[0][1]
                if self.registers[reg] <= 0:
                    if ops[1][0] == 'memory':
                        self.pc = self.get_memory_address(ops[1][1], ops[1][2])
                        return
        
        elif opcode == "JGT":  # Jump if greater than zero
            if len(ops) >= 2:
                reg = ops[0][1]
                if self.registers[reg] > 0:
                    if ops[1][0] == 'memory':
                        self.pc = self.get_memory_address(ops[1][1], ops[1][2])
                        return
        
        elif opcode == "JGE":  # Jump if greater than or equal to zero
            if len(ops) >= 2:
                reg = ops[0][1]
                if self.registers[reg] >= 0:
                    if ops[1][0] == 'memory':
                        self.pc = self.get_memory_address(ops[1][1], ops[1][2])
                        return
        
        else:
            print(f"Instrucción no implementada: {opcode}")
        
        # Incrementar PC para la siguiente instrucción
        self.pc += 1
    
    def run(self):
        """Ejecutar el programa"""
        print("Iniciando ejecución...")
        print("=" * 50)
        
        # Configurar registros iniciales
        self.registers[6] = 1023  # MP apunta al tope de memoria
        self.registers[5] = 0     # GP apunta al inicio de variables globales
        
        while not self.halted and self.step_count < self.max_steps:
            if self.pc >= len(self.instructions) or self.instructions[self.pc] is None:
                print(f"Error: Instrucción no encontrada en PC={self.pc}")
                break
            
            opcode, operands = self.instructions[self.pc]
            self.execute_instruction(opcode, operands)
            self.step_count += 1
        
        if self.step_count >= self.max_steps:
            print(f"Advertencia: Programa detenido después de {self.max_steps} pasos")
        
        print("=" * 50)
        print(f"Ejecución finalizada después de {self.step_count} pasos")
        print(f"Estado final de registros: {self.registers}")

def main():
    if len(sys.argv) != 2:
        print("Uso: python3 tm_simulator.py <archivo.tm>")
        return
    
    simulator = TMSimulator()
    if simulator.load_program(sys.argv[1]):
        simulator.run()

if __name__ == "__main__":
    main()