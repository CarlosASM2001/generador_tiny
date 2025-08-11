#!/usr/bin/env python3
"""
Simple TM (Tiny Machine) Simulator
For testing the generated code from the Tiny compiler
"""

import sys
import re

class TMSimulator:
    def __init__(self):
        self.memory = [0] * 1000  # 1000 memory locations
        self.registers = [0] * 8  # AC(0), AC1(1), AC2(2), ..., GP(5), MP(6), PC(7)
        self.instructions = []
        self.running = True
        self.instruction_count = 0
        self.max_instructions = 10000  # Prevent infinite loops
        
    def load_program(self, filename):
        """Load TM program from file"""
        with open(filename, 'r') as f:
            lines = f.readlines()
        
        for line in lines:
            line = line.strip()
            if not line or line.startswith('*'):
                continue
                
            # Parse instruction: address: opcode arg1,arg2(arg3) comment
            match = re.match(r'(\d+):\s*(\w+)\s+([^*]+)', line)
            if match:
                addr = int(match.group(1))
                opcode = match.group(2)
                args_str = match.group(3).strip()
                
                # Extract just the arguments part (before any comment)
                args_part = args_str.split()[0] if args_str else ""
                
                # Parse arguments
                args = []
                if args_part:
                    # Handle different argument formats
                    if '(' in args_part:
                        # Format: r,d(s) or r,s,t
                        parts = args_part.split(',')
                        for i, part in enumerate(parts):
                            part = part.strip()
                            if '(' in part:
                                # d(s) format
                                offset_reg = part.split('(')
                                offset = int(offset_reg[0])
                                reg = int(offset_reg[1].rstrip(')'))
                                args.extend([offset, reg])
                            else:
                                args.append(int(part))
                    else:
                        # Simple comma-separated
                        args = [int(x.strip()) for x in args_part.split(',') if x.strip()]
                
                while len(self.instructions) <= addr:
                    self.instructions.append(None)
                self.instructions[addr] = (opcode, args)
    
    def execute(self):
        """Execute the loaded program"""
        self.registers[7] = 0  # PC starts at 0
        
        while self.running and self.instruction_count < self.max_instructions:
            pc = self.registers[7]
            if pc >= len(self.instructions) or self.instructions[pc] is None:
                print(f"Error: No instruction at PC={pc}")
                break
                
            opcode, args = self.instructions[pc]
            self.registers[7] += 1  # Increment PC
            self.instruction_count += 1
            
            self.execute_instruction(opcode, args)
            
        if self.instruction_count >= self.max_instructions:
            print("Program terminated: Maximum instruction limit reached (possible infinite loop)")
    
    def execute_instruction(self, opcode, args):
        """Execute a single instruction"""
        if opcode == "HALT":
            self.running = False
            print("Program terminated with HALT")
            
        elif opcode == "LD":
            # LD r,d(s) - Load: r = mem[d + reg[s]]
            r, d, s = args[0], args[1], args[2]
            addr = d + self.registers[s]
            self.registers[r] = self.memory[addr]
            
        elif opcode == "LDC":
            # LDC r,c(0) - Load constant: r = c
            r, c = args[0], args[1]
            self.registers[r] = c
            
        elif opcode == "ST":
            # ST r,d(s) - Store: mem[d + reg[s]] = r
            r, d, s = args[0], args[1], args[2]
            addr = d + self.registers[s]
            self.memory[addr] = self.registers[r]
            
        elif opcode == "ADD":
            # ADD r,s,t - Add: r = s + t
            r, s, t = args[0], args[1], args[2]
            self.registers[r] = self.registers[s] + self.registers[t]
            
        elif opcode == "SUB":
            # SUB r,s,t - Subtract: r = s - t
            r, s, t = args[0], args[1], args[2]
            self.registers[r] = self.registers[s] - self.registers[t]
            
        elif opcode == "MUL":
            # MUL r,s,t - Multiply: r = s * t
            r, s, t = args[0], args[1], args[2]
            self.registers[r] = self.registers[s] * self.registers[t]
            
        elif opcode == "DIV":
            # DIV r,s,t - Divide: r = s / t
            r, s, t = args[0], args[1], args[2]
            if self.registers[t] != 0:
                self.registers[r] = self.registers[s] // self.registers[t]
            else:
                print("Error: Division by zero")
                self.running = False
                
        elif opcode == "IN":
            # IN r,0,0 - Input: r = input()
            r = args[0]
            try:
                value = int(input("Enter value for IN instruction: "))
                self.registers[r] = value
            except:
                self.registers[r] = 0
                
        elif opcode == "OUT":
            # OUT r,0,0 - Output: print(r)
            r = args[0]
            print(f"OUT instruction prints: {self.registers[r]}")
            
        elif opcode in ["JEQ", "JNE", "JLT", "JLE", "JGT", "JGE"]:
            # Conditional jumps
            r, offset = args[0], args[1]
            condition = False
            
            if opcode == "JEQ" and self.registers[r] == 0:
                condition = True
            elif opcode == "JNE" and self.registers[r] != 0:
                condition = True
            elif opcode == "JLT" and self.registers[r] < 0:
                condition = True
            elif opcode == "JLE" and self.registers[r] <= 0:
                condition = True
            elif opcode == "JGT" and self.registers[r] > 0:
                condition = True
            elif opcode == "JGE" and self.registers[r] >= 0:
                condition = True
                
            if condition:
                self.registers[7] += offset  # Jump relative to current PC
                
        elif opcode == "LDA":
            # LDA r,d(s) - Load address: r = d + reg[s]
            r, d, s = args[0], args[1], args[2]
            self.registers[r] = d + self.registers[s]
            
        else:
            print(f"Unknown instruction: {opcode}")

def main():
    if len(sys.argv) != 2:
        print("Usage: python tm_simulator.py <program.tm>")
        sys.exit(1)
        
    simulator = TMSimulator()
    simulator.load_program(sys.argv[1])
    simulator.execute()

if __name__ == "__main__":
    main()