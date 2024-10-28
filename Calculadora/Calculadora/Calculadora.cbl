      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *Tenemos 5 opciones (1-5).
       01  Opciones PIC 9 VALUE ZERO.
           88 Sumar VALUE 1.
           88 Restar VALUE 2.
           88 Multiplicar VALUE 3.
           88 Dividir VALUE 4.
           88 Salir VALUE 5.

       77  Numero1 PIC 999 VALUE ZEROS.
       77  Numero2 PIC 999 VALUE ZEROS.

       77  Resultado PIC 9(6) VALUE ZEROS.

       PROCEDURE DIVISION.
      *Presenta un menú al usuario y le solicita una opción.
       AceptaDatos.
       DISPLAY "Elige una operacion.".
       DISPLAY "1-Sumar (+)".
       DISPLAY "2-Restar (-)".
       DISPLAY "3-Multiplicar (*)".
       DISPLAY "4-Dividir (/)".
       DISPLAY "5-Salir".
       ACCEPT Opciones.

      *> Con las opciones 1-5 vamos a la PERFORM
       IF Sumar THEN
           PERFORM Suma
       ELSE
           IF Restar THEN
               PERFORM Resta
           ELSE
               IF Multiplicar THEN
                   PERFORM Multiplicacion
               ELSE
                   IF Dividir THEN
                       PERFORM Dividiendo
                   ELSE
                       IF Salir
                           DISPLAY "Saliendo del programa..."
                           STOP RUN
                       ELSE
                           DISPLAY "Opcion invalida. Intentar de nuevo."
                           PERFORM AceptaDatos
                       END-IF
                   END-IF
               END-IF
           END-IF
       END-IF

       Suma.
           DISPLAY "Has elegido sumar".
           PERFORM SolicitarNumeros.
           ADD Numero1 TO Numero2 GIVING Resultado.
           DISPLAY "EL resultado de la suma es: "Resultado.
           PERFORM AceptaDatos.

       Resta.
           DISPLAY "Has elegido restar".
           PERFORM SolicitarNumeros.
           ADD Numero1 TO Numero2 GIVING Resultado.
           DISPLAY "EL resultado de la suma es: "Resultado.
           PERFORM AceptaDatos.
       Multiplicacion.
           DISPLAY "Has elegido Multiplicacion".
           PERFORM SolicitarNumeros.
           ADD Numero1 TO Numero2 GIVING Resultado.
           DISPLAY "EL resultado de la suma es: "Resultado.
           PERFORM AceptaDatos.
       Dividiendo.
           DISPLAY "Has elegido Division".
           PERFORM SolicitarNumeros.
           ADD Numero1 TO Numero2 GIVING Resultado.
           DISPLAY "EL resultado de la suma es: "Resultado.
           PERFORM AceptaDatos.

       SolicitarNumeros.
       DISPLAY "Porfavor, introduzca el primer numero.".
       ACCEPT Numero1.
       DISPLAY "Porfavor, introduzca el segundo numero.".
       ACCEPT Numero2.

       MAIN-PROCEDURE.

       END PROGRAM CALCULADORA.
