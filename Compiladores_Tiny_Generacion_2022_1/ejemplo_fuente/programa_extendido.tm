*      Compilacion TINY EXTENDIDO para el codigo objeto TM
*      Archivo: programa_extendido.tiny
*      Preludio estandar:
0:       LD       6,0(0)
2:       ST       0,0(0)
4:       LDC       5,0(0)
*      Total de memoria reservada para variables: 18 posiciones
*      -> programa
*      -> declaracion: x
*      Declaracion de variable: x (global)
6:       LDC       0,0(0)
8:       ST       0,0(5)
*      <- declaracion
*      -> declaracion: arr
*      Declaracion de array: arr tamaño definido
*      -> constante
10:       LDC       0,10(0)
*      <- constante
12:       LDC       0,0(0)
14:       ST       0,1(5)
16:       LDC       0,0(0)
18:       ST       0,2(5)
20:       LDC       0,0(0)
22:       ST       0,3(5)
24:       LDC       0,0(0)
26:       ST       0,4(5)
28:       LDC       0,0(0)
30:       ST       0,5(5)
32:       LDC       0,0(0)
34:       ST       0,6(5)
36:       LDC       0,0(0)
38:       ST       0,7(5)
40:       LDC       0,0(0)
42:       ST       0,8(5)
44:       LDC       0,0(0)
46:       ST       0,9(5)
48:       LDC       0,0(0)
50:       ST       0,10(5)
*      <- declaracion
*      -> funcion: suma_vector
*      === INICIO FUNCION suma_vector ===
52:       ST       0,0(6)
*      Procesamiento de parametros
*      -> declaracion: i
*      Declaracion de variable: i (local)
54:       LDC       0,0(0)
56:       ST       0,14(5)
*      <- declaracion
*      -> declaracion: total
*      Declaracion de variable: total (local)
58:       LDC       0,0(0)
60:       ST       0,15(5)
*      <- declaracion
*      -> asignacion
*      -> constante
62:       LDC       0,0(0)
*      <- constante
64:       ST       0,15(5)
*      <- asignacion
*      -> for
*      -> constante
66:       LDC       0,0(0)
*      <- constante
68:       ST       0,14(5)
*      for: inicio del bucle
70:       LD       0,14(5)
72:       ST       0,-1(6)
*      -> Operacion: menos
*      -> identificador
74:       LD       0,13(5)
*      <- identificador
76:       ST       0,-2(6)
*      -> constante
78:       LDC       0,1(0)
*      <- constante
80:       LD       1,-2(6)
82:       SUB       0,1,0
*      <- Operacion: menos
84:       LD       1,-1(6)
86:       SUB       0,1,0
*      for: salto condicional al final
*      -> asignacion
*      -> Operacion: mas
*      -> identificador
89:       LD       0,15(5)
*      <- identificador
91:       ST       0,-1(6)
*      -> identificador
*      -> identificador
93:       LD       0,14(5)
*      <- identificador
95:       ADD       0,0,12
97:       LD       0,0(0)
*      <- identificador
99:       LD       1,-1(6)
101:       ADD       0,1,0
*      <- Operacion: mas
103:       ST       0,15(5)
*      <- asignacion
*      -> if
*      -> Operacion: menor
*      -> identificador
*      -> identificador
105:       LD       0,14(5)
*      <- identificador
107:       ADD       0,0,12
109:       LD       0,0(0)
*      <- identificador
111:       ST       0,-1(6)
*      -> constante
113:       LDC       0,0(0)
*      <- constante
115:       LD       1,-1(6)
117:       SUB       0,1,0
119:       JLT       0,2(7)
121:       LDC       0,0(0)
123:       LDA       7,1(7)
125:       LDC       0,1(0)
*      <- Operacion: menor
*      If: el salto hacia el else debe estar aqui
*      -> continue
*      continue: salto al incremento del bucle
*      <- continue
*      If: el salto hacia el final debe estar aqui
127:       JEQ       0,1(7)
*      <- if
*      -> if
*      -> Operacion: mayor
*      -> identificador
129:       LD       0,15(5)
*      <- identificador
131:       ST       0,-1(6)
*      -> constante
133:       LDC       0,1000(0)
*      <- constante
135:       LD       1,-1(6)
137:       SUB       0,1,0
139:       JGT       0,2(7)
141:       LDC       0,0(0)
143:       LDA       7,1(7)
145:       LDC       0,1(0)
*      <- Operacion: mayor
*      If: el salto hacia el else debe estar aqui
*      -> break
*      break: salto al final del bucle
*      <- break
*      If: el salto hacia el final debe estar aqui
147:       JEQ       0,1(7)
*      <- if
*      for: punto de continue
149:       LD       0,14(5)
151:       ST       0,-1(6)
*      -> constante
153:       LDC       0,1(0)
*      <- constante
155:       LD       1,-1(6)
157:       ADD       0,1,0
159:       ST       0,14(5)
161:       LDA       7,-92(7)
*      for: fin del bucle
88:       JGT       0,73(7)
*      <- for
*      -> return
*      -> identificador
162:       LD       0,15(5)
*      <- identificador
164:       LD       1,0(6)
166:       LD       7,0(1)
*      <- return
*      Return implicito de funcion
168:       LD       0,1(6)
170:       LD       7,0(0)
*      === FIN FUNCION suma_vector ===
*      <- funcion
*      -> declaracion: i
*      Declaracion de variable: i (local)
172:       LDC       0,0(0)
174:       ST       0,14(5)
*      <- declaracion
*      -> declaracion: num
*      Declaracion de variable: num (local)
176:       LDC       0,0(0)
178:       ST       0,16(5)
*      <- declaracion
*      -> declaracion: resultado
*      Declaracion de variable: resultado (local)
180:       LDC       0,0(0)
182:       ST       0,17(5)
*      <- declaracion
*      -> escribir
*      -> string
*      String: "Ingrese un número: "
184:       LDC       0,73(0)
186:       OUT       0,0,0
188:       LDC       0,110(0)
190:       OUT       0,0,0
192:       LDC       0,103(0)
194:       OUT       0,0,0
196:       LDC       0,114(0)
198:       OUT       0,0,0
200:       LDC       0,101(0)
202:       OUT       0,0,0
204:       LDC       0,115(0)
206:       OUT       0,0,0
208:       LDC       0,101(0)
210:       OUT       0,0,0
212:       LDC       0,32(0)
214:       OUT       0,0,0
216:       LDC       0,117(0)
218:       OUT       0,0,0
220:       LDC       0,110(0)
222:       OUT       0,0,0
224:       LDC       0,32(0)
226:       OUT       0,0,0
228:       LDC       0,110(0)
230:       OUT       0,0,0
232:       LDC       0,250(0)
234:       OUT       0,0,0
236:       LDC       0,109(0)
238:       OUT       0,0,0
240:       LDC       0,101(0)
242:       OUT       0,0,0
244:       LDC       0,114(0)
246:       OUT       0,0,0
248:       LDC       0,111(0)
250:       OUT       0,0,0
252:       LDC       0,58(0)
254:       OUT       0,0,0
256:       LDC       0,32(0)
258:       OUT       0,0,0
*      <- string
260:       OUT       0,0,0
*      <- escribir
*      -> leer
262:       IN       0,0,0
264:       ST       0,16(5)
*      <- leer
*      -> for
*      -> constante
266:       LDC       0,0(0)
*      <- constante
268:       ST       0,14(5)
*      for: inicio del bucle
270:       LD       0,14(5)
272:       ST       0,1(6)
*      -> constante
274:       LDC       0,9(0)
*      <- constante
276:       LD       1,1(6)
278:       SUB       0,1,0
*      for: salto condicional al final
*      -> asignacion
*      -> Operacion: mas
*      -> Operacion: por
*      -> identificador
281:       LD       0,14(5)
*      <- identificador
283:       ST       0,1(6)
*      -> constante
285:       LDC       0,2(0)
*      <- constante
287:       LD       1,1(6)
289:       MUL       0,1,0
*      <- Operacion: por
291:       ST       0,1(6)
*      -> constante
293:       LDC       0,1(0)
*      <- constante
295:       LD       1,1(6)
297:       ADD       0,1,0
*      <- Operacion: mas
299:       ST       0,1(6)
*      -> identificador
301:       LD       0,14(5)
*      <- identificador
303:       ADD       0,0,1
305:       LD       1,1(6)
307:       ST       1,0(0)
*      <- asignacion
*      for: punto de continue
309:       LD       0,14(5)
311:       ST       0,1(6)
*      -> constante
313:       LDC       0,1(0)
*      <- constante
315:       LD       1,1(6)
317:       ADD       0,1,0
319:       ST       0,14(5)
321:       LDA       7,-52(7)
*      for: fin del bucle
280:       JGT       0,41(7)
*      <- for
*      -> if
*      -> Operacion: and
*      -> Operacion: mayorigual
*      -> identificador
322:       LD       0,16(5)
*      <- identificador
324:       ST       0,1(6)
*      -> constante
326:       LDC       0,0(0)
*      <- constante
328:       LD       1,1(6)
330:       SUB       0,1,0
332:       JGE       0,2(7)
334:       LDC       0,0(0)
336:       LDA       7,1(7)
338:       LDC       0,1(0)
*      <- Operacion: mayorigual
340:       ST       0,1(6)
*      -> Operacion: menorigual
*      -> identificador
342:       LD       0,16(5)
*      <- identificador
344:       ST       0,0(6)
*      -> constante
346:       LDC       0,10(0)
*      <- constante
348:       LD       1,0(6)
350:       SUB       0,1,0
352:       JLE       0,2(7)
354:       LDC       0,0(0)
356:       LDA       7,1(7)
358:       LDC       0,1(0)
*      <- Operacion: menorigual
360:       LD       1,1(6)
362:       JEQ       1,3(7)
364:       JEQ       0,2(7)
366:       LDC       0,1(0)
368:       LDA       7,1(7)
370:       LDC       0,0(0)
*      <- Operacion: and
*      If: el salto hacia el else debe estar aqui
*      -> escribir
*      -> string
*      String: "El número está en rango"
373:       LDC       0,69(0)
375:       OUT       0,0,0
377:       LDC       0,108(0)
379:       OUT       0,0,0
381:       LDC       0,32(0)
383:       OUT       0,0,0
385:       LDC       0,110(0)
387:       OUT       0,0,0
389:       LDC       0,250(0)
391:       OUT       0,0,0
393:       LDC       0,109(0)
395:       OUT       0,0,0
397:       LDC       0,101(0)
399:       OUT       0,0,0
401:       LDC       0,114(0)
403:       OUT       0,0,0
405:       LDC       0,111(0)
407:       OUT       0,0,0
409:       LDC       0,32(0)
411:       OUT       0,0,0
413:       LDC       0,101(0)
415:       OUT       0,0,0
417:       LDC       0,115(0)
419:       OUT       0,0,0
421:       LDC       0,116(0)
423:       OUT       0,0,0
425:       LDC       0,225(0)
427:       OUT       0,0,0
429:       LDC       0,32(0)
431:       OUT       0,0,0
433:       LDC       0,101(0)
435:       OUT       0,0,0
437:       LDC       0,110(0)
439:       OUT       0,0,0
441:       LDC       0,32(0)
443:       OUT       0,0,0
445:       LDC       0,114(0)
447:       OUT       0,0,0
449:       LDC       0,97(0)
451:       OUT       0,0,0
453:       LDC       0,110(0)
455:       OUT       0,0,0
457:       LDC       0,103(0)
459:       OUT       0,0,0
461:       LDC       0,111(0)
463:       OUT       0,0,0
*      <- string
465:       OUT       0,0,0
*      <- escribir
*      -> escribir
*      -> identificador
467:       LD       0,16(5)
*      <- identificador
469:       OUT       0,0,0
*      <- escribir
*      -> if
*      -> Operacion: igual
*      -> Operacion: modulo
*      -> identificador
471:       LD       0,16(5)
*      <- identificador
473:       ST       0,1(6)
*      -> constante
475:       LDC       0,2(0)
*      <- constante
477:       LD       1,1(6)
479:       ST       0,1(6)
481:       ST       1,0(6)
483:       DIV       0,1,0
485:       LD       1,0(6)
487:       LD       2,1(6)
489:       MUL       0,0,2
491:       SUB       0,1,0
*      <- Operacion: modulo
493:       ST       0,1(6)
*      -> constante
495:       LDC       0,0(0)
*      <- constante
497:       LD       1,1(6)
499:       SUB       0,1,0
501:       JEQ       0,2(7)
503:       LDC       0,0(0)
505:       LDA       7,1(7)
507:       LDC       0,1(0)
*      <- Operacion: igual
*      If: el salto hacia el else debe estar aqui
*      -> escribir
*      -> string
*      String: "El número es par"
510:       LDC       0,69(0)
512:       OUT       0,0,0
514:       LDC       0,108(0)
516:       OUT       0,0,0
518:       LDC       0,32(0)
520:       OUT       0,0,0
522:       LDC       0,110(0)
524:       OUT       0,0,0
526:       LDC       0,250(0)
528:       OUT       0,0,0
530:       LDC       0,109(0)
532:       OUT       0,0,0
534:       LDC       0,101(0)
536:       OUT       0,0,0
538:       LDC       0,114(0)
540:       OUT       0,0,0
542:       LDC       0,111(0)
544:       OUT       0,0,0
546:       LDC       0,32(0)
548:       OUT       0,0,0
550:       LDC       0,101(0)
552:       OUT       0,0,0
554:       LDC       0,115(0)
556:       OUT       0,0,0
558:       LDC       0,32(0)
560:       OUT       0,0,0
562:       LDC       0,112(0)
564:       OUT       0,0,0
566:       LDC       0,97(0)
568:       OUT       0,0,0
570:       LDC       0,114(0)
572:       OUT       0,0,0
*      <- string
574:       OUT       0,0,0
*      <- escribir
*      If: el salto hacia el final debe estar aqui
509:       JEQ       0,67(7)
*      -> escribir
*      -> string
*      String: "El número es impar"
577:       LDC       0,69(0)
579:       OUT       0,0,0
581:       LDC       0,108(0)
583:       OUT       0,0,0
585:       LDC       0,32(0)
587:       OUT       0,0,0
589:       LDC       0,110(0)
591:       OUT       0,0,0
593:       LDC       0,250(0)
595:       OUT       0,0,0
597:       LDC       0,109(0)
599:       OUT       0,0,0
601:       LDC       0,101(0)
603:       OUT       0,0,0
605:       LDC       0,114(0)
607:       OUT       0,0,0
609:       LDC       0,111(0)
611:       OUT       0,0,0
613:       LDC       0,32(0)
615:       OUT       0,0,0
617:       LDC       0,101(0)
619:       OUT       0,0,0
621:       LDC       0,115(0)
623:       OUT       0,0,0
625:       LDC       0,32(0)
627:       OUT       0,0,0
629:       LDC       0,105(0)
631:       OUT       0,0,0
633:       LDC       0,109(0)
635:       OUT       0,0,0
637:       LDC       0,112(0)
639:       OUT       0,0,0
641:       LDC       0,97(0)
643:       OUT       0,0,0
645:       LDC       0,114(0)
647:       OUT       0,0,0
*      <- string
649:       OUT       0,0,0
*      <- escribir
576:       LDA       7,74(7)
*      <- if
*      -> asignacion
*      -> Operacion: potencia
*      -> identificador
651:       LD       0,16(5)
*      <- identificador
653:       ST       0,1(6)
*      -> constante
655:       LDC       0,2(0)
*      <- constante
657:       LD       1,1(6)
*      potencia: implementación simplificada
659:       MUL       0,1,0
*      <- Operacion: potencia
661:       ST       0,0(5)
*      <- asignacion
*      -> escribir
*      -> string
*      String: "El cuadrado es: "
663:       LDC       0,69(0)
665:       OUT       0,0,0
667:       LDC       0,108(0)
669:       OUT       0,0,0
671:       LDC       0,32(0)
673:       OUT       0,0,0
675:       LDC       0,99(0)
677:       OUT       0,0,0
679:       LDC       0,117(0)
681:       OUT       0,0,0
683:       LDC       0,97(0)
685:       OUT       0,0,0
687:       LDC       0,100(0)
689:       OUT       0,0,0
691:       LDC       0,114(0)
693:       OUT       0,0,0
695:       LDC       0,97(0)
697:       OUT       0,0,0
699:       LDC       0,100(0)
701:       OUT       0,0,0
703:       LDC       0,111(0)
705:       OUT       0,0,0
707:       LDC       0,32(0)
709:       OUT       0,0,0
711:       LDC       0,101(0)
713:       OUT       0,0,0
715:       LDC       0,115(0)
717:       OUT       0,0,0
719:       LDC       0,58(0)
721:       OUT       0,0,0
723:       LDC       0,32(0)
725:       OUT       0,0,0
*      <- string
727:       OUT       0,0,0
*      <- escribir
*      -> escribir
*      -> identificador
729:       LD       0,0(5)
*      <- identificador
731:       OUT       0,0,0
*      <- escribir
*      If: el salto hacia el final debe estar aqui
372:       JEQ       0,361(7)
*      -> escribir
*      -> string
*      String: "Número fuera de rango"
734:       LDC       0,78(0)
736:       OUT       0,0,0
738:       LDC       0,250(0)
740:       OUT       0,0,0
742:       LDC       0,109(0)
744:       OUT       0,0,0
746:       LDC       0,101(0)
748:       OUT       0,0,0
750:       LDC       0,114(0)
752:       OUT       0,0,0
754:       LDC       0,111(0)
756:       OUT       0,0,0
758:       LDC       0,32(0)
760:       OUT       0,0,0
762:       LDC       0,102(0)
764:       OUT       0,0,0
766:       LDC       0,117(0)
768:       OUT       0,0,0
770:       LDC       0,101(0)
772:       OUT       0,0,0
774:       LDC       0,114(0)
776:       OUT       0,0,0
778:       LDC       0,97(0)
780:       OUT       0,0,0
782:       LDC       0,32(0)
784:       OUT       0,0,0
786:       LDC       0,100(0)
788:       OUT       0,0,0
790:       LDC       0,101(0)
792:       OUT       0,0,0
794:       LDC       0,32(0)
796:       OUT       0,0,0
798:       LDC       0,114(0)
800:       OUT       0,0,0
802:       LDC       0,97(0)
804:       OUT       0,0,0
806:       LDC       0,110(0)
808:       OUT       0,0,0
810:       LDC       0,103(0)
812:       OUT       0,0,0
814:       LDC       0,111(0)
816:       OUT       0,0,0
*      <- string
818:       OUT       0,0,0
*      <- escribir
733:       LDA       7,86(7)
*      <- if
*      -> asignacion
*      -> llamada funcion: suma_vector
820:       ST       7,1(6)
*      Procesando argumentos de la llamada
*      -> identificador
822:       LD       0,1(5)
*      <- identificador
*      -> constante
824:       LDC       0,10(0)
*      <- constante
826:       ST       0,0(6)
*      -> constante
828:       LDC       0,10(0)
*      <- constante
830:       ST       0,-1(6)
*      Llamada a funcion suma_vector (implementación simplificada)
*      <- llamada funcion
832:       ST       0,17(5)
*      <- asignacion
*      -> escribir
*      -> string
*      String: "La suma del vector es: "
834:       LDC       0,76(0)
836:       OUT       0,0,0
838:       LDC       0,97(0)
840:       OUT       0,0,0
842:       LDC       0,32(0)
844:       OUT       0,0,0
846:       LDC       0,115(0)
848:       OUT       0,0,0
850:       LDC       0,117(0)
852:       OUT       0,0,0
854:       LDC       0,109(0)
856:       OUT       0,0,0
858:       LDC       0,97(0)
860:       OUT       0,0,0
862:       LDC       0,32(0)
864:       OUT       0,0,0
866:       LDC       0,100(0)
868:       OUT       0,0,0
870:       LDC       0,101(0)
872:       OUT       0,0,0
874:       LDC       0,108(0)
876:       OUT       0,0,0
878:       LDC       0,32(0)
880:       OUT       0,0,0
882:       LDC       0,118(0)
884:       OUT       0,0,0
886:       LDC       0,101(0)
888:       OUT       0,0,0
890:       LDC       0,99(0)
892:       OUT       0,0,0
894:       LDC       0,116(0)
896:       OUT       0,0,0
898:       LDC       0,111(0)
900:       OUT       0,0,0
902:       LDC       0,114(0)
904:       OUT       0,0,0
906:       LDC       0,32(0)
908:       OUT       0,0,0
910:       LDC       0,101(0)
912:       OUT       0,0,0
914:       LDC       0,115(0)
916:       OUT       0,0,0
918:       LDC       0,58(0)
920:       OUT       0,0,0
922:       LDC       0,32(0)
924:       OUT       0,0,0
*      <- string
926:       OUT       0,0,0
*      <- escribir
*      -> escribir
*      -> identificador
928:       LD       0,17(5)
*      <- identificador
930:       OUT       0,0,0
*      <- escribir
*      -> if
*      -> Operacion: or
*      -> Operacion: mayor
*      -> identificador
932:       LD       0,16(5)
*      <- identificador
934:       ST       0,-2(6)
*      -> constante
936:       LDC       0,5(0)
*      <- constante
938:       LD       1,-2(6)
940:       SUB       0,1,0
942:       JGT       0,2(7)
944:       LDC       0,0(0)
946:       LDA       7,1(7)
948:       LDC       0,1(0)
*      <- Operacion: mayor
950:       ST       0,-2(6)
*      -> Operacion: menor
*      -> identificador
952:       LD       0,16(5)
*      <- identificador
954:       ST       0,-3(6)
*      -> constante
956:       LDC       0,0(0)
*      <- constante
958:       LD       1,-3(6)
960:       SUB       0,1,0
962:       JLT       0,2(7)
964:       LDC       0,0(0)
966:       LDA       7,1(7)
968:       LDC       0,1(0)
*      <- Operacion: menor
970:       LD       1,-2(6)
972:       JNE       1,3(7)
974:       JNE       0,2(7)
976:       LDC       0,0(0)
978:       LDA       7,1(7)
980:       LDC       0,1(0)
*      <- Operacion: or
*      If: el salto hacia el else debe estar aqui
*      -> escribir
*      -> string
*      String: "Condición compleja verdadera"
983:       LDC       0,67(0)
985:       OUT       0,0,0
987:       LDC       0,111(0)
989:       OUT       0,0,0
991:       LDC       0,110(0)
993:       OUT       0,0,0
995:       LDC       0,100(0)
997:       OUT       0,0,0
999:       LDC       0,105(0)
1001:       OUT       0,0,0
1003:       LDC       0,99(0)
1005:       OUT       0,0,0
1007:       LDC       0,105(0)
1009:       OUT       0,0,0
1011:       LDC       0,243(0)
1013:       OUT       0,0,0
1015:       LDC       0,110(0)
1017:       OUT       0,0,0
1019:       LDC       0,32(0)
1021:       OUT       0,0,0
1023:       LDC       0,99(0)
1025:       OUT       0,0,0
1027:       LDC       0,111(0)
1029:       OUT       0,0,0
1031:       LDC       0,109(0)
1033:       OUT       0,0,0
1035:       LDC       0,112(0)
1037:       OUT       0,0,0
1039:       LDC       0,108(0)
1041:       OUT       0,0,0
1043:       LDC       0,101(0)
1045:       OUT       0,0,0
1047:       LDC       0,106(0)
1049:       OUT       0,0,0
1051:       LDC       0,97(0)
1053:       OUT       0,0,0
1055:       LDC       0,32(0)
1057:       OUT       0,0,0
1059:       LDC       0,118(0)
1061:       OUT       0,0,0
1063:       LDC       0,101(0)
1065:       OUT       0,0,0
1067:       LDC       0,114(0)
1069:       OUT       0,0,0
1071:       LDC       0,100(0)
1073:       OUT       0,0,0
1075:       LDC       0,97(0)
1077:       OUT       0,0,0
1079:       LDC       0,100(0)
1081:       OUT       0,0,0
1083:       LDC       0,101(0)
1085:       OUT       0,0,0
1087:       LDC       0,114(0)
1089:       OUT       0,0,0
1091:       LDC       0,97(0)
1093:       OUT       0,0,0
*      <- string
1095:       OUT       0,0,0
*      <- escribir
*      If: el salto hacia el final debe estar aqui
982:       JEQ       0,115(7)
*      <- if
*      -> if
*      -> Operacion: not
*      -> Operacion: diferente
*      -> identificador
1098:       LD       0,16(5)
*      <- identificador
1100:       ST       0,-2(6)
*      -> constante
1102:       LDC       0,5(0)
*      <- constante
1104:       LD       1,-2(6)
1106:       SUB       0,1,0
1108:       JNE       0,2(7)
1110:       LDC       0,0(0)
1112:       LDA       7,1(7)
1114:       LDC       0,1(0)
*      <- Operacion: diferente
1116:       JEQ       0,2(7)
1118:       LDC       0,0(0)
1120:       LDA       7,1(7)
1122:       LDC       0,1(0)
*      <- Operacion: not
*      If: el salto hacia el else debe estar aqui
*      -> escribir
*      -> string
*      String: "El número es 5"
1125:       LDC       0,69(0)
1127:       OUT       0,0,0
1129:       LDC       0,108(0)
1131:       OUT       0,0,0
1133:       LDC       0,32(0)
1135:       OUT       0,0,0
1137:       LDC       0,110(0)
1139:       OUT       0,0,0
1141:       LDC       0,250(0)
1143:       OUT       0,0,0
1145:       LDC       0,109(0)
1147:       OUT       0,0,0
1149:       LDC       0,101(0)
1151:       OUT       0,0,0
1153:       LDC       0,114(0)
1155:       OUT       0,0,0
1157:       LDC       0,111(0)
1159:       OUT       0,0,0
1161:       LDC       0,32(0)
1163:       OUT       0,0,0
1165:       LDC       0,101(0)
1167:       OUT       0,0,0
1169:       LDC       0,115(0)
1171:       OUT       0,0,0
1173:       LDC       0,32(0)
1175:       OUT       0,0,0
1177:       LDC       0,53(0)
1179:       OUT       0,0,0
*      <- string
1181:       OUT       0,0,0
*      <- escribir
*      If: el salto hacia el final debe estar aqui
1124:       JEQ       0,59(7)
*      <- if
*      <- programa
*      Fin de la ejecucion.
1184:       HALT       0,0,0
