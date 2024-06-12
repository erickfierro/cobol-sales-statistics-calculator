      *----------------------------------------------------------------*
      *         I D E N T I F I C A T I O N   D I V I S I O N          *
      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
       PROGRAM-ID.    SalesDataProcessor.
       AUTHOR.        ERICK STIVEN FIERRO PERDOOMO.
       DATE-WRITTEN.  2024.04.18
      *----------------------------------------------------------------*
      *            E N V I R O N M E N T   D I V I S I O N             *
      *----------------------------------------------------------------*
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *----------------------------------------------------------------*
      *                   D A T A   D I V I S I O N                    *
      *----------------------------------------------------------------*
       DATA DIVISION.
       FILE SECTION.
       FD SALES-DATA-FILE.
       01 SALES-DATA-RECORD.
           05 PRODUCT-NAME                 PIC X(60).
           05 FILLER                       PIC X(01).
           05 UNIT-PRICE                   PIC 9(08).
           05 FILLER                       PIC X(01).
           05 QUANTITY-SOLD                PIC 9(04).
       01 END-OF-FILE                      PIC X(01) VALUE 'N'.
      *----------------------------------------------------------------*
      *          W O R K I N G  S T O R A G E   S E C T I O N          *
      *----------------------------------------------------------------*
       WORKING-STORAGE SECTION.
      *----------------------------------------------------------------*
      *                            VARIABLES                           *
      *----------------------------------------------------------------*
       77 FS-STATUS                        PIC X(02).
       01 WS-VARIABLES-AUXILIARES.
           05 WS-AUX-CONTADOR              PIC 9(02) VALUE 0.
      
      *----------------------------------------------------------------*
      *               P R O C E D U R E   D I V I S I O N              *
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
           PERFORM 1000-INICIO-PROGRAMA
           PERFORM 2000-PROCESO-PROGRAMA
           PERFORM 3000-FINAL-PROGRAMA
           .
      
      *----------------------------------------------------------------*
      * 1000-INICIO-PROGRAMA                                           *
      *----------------------------------------------------------------*
       1000-INICIO-PROGRAMA.
           PERFORM 1100-ABRIR-ARCHIVO
           PERFORM 1200-LEER-DATOS
           .
      
      *----------------------------------------------------------------*
      * 1100-ABRIR-ARCHIVO                                             *
      *----------------------------------------------------------------*
       1100-ABRIR-ARCHIVO.
           .

      *----------------------------------------------------------------*
      * 1200-LEER-DATOS                                                *
      *----------------------------------------------------------------*
       1200-LEER-DATOS.
           .
      
      *----------------------------------------------------------------*
      * 2000-PROCESO-PROGRAMA                                          *
      *----------------------------------------------------------------*
       2000-PROCESO-PROGRAMA.
           .
      
      *----------------------------------------------------------------*
      * 3000-FINAL-PROGRAMA                                            *
      *----------------------------------------------------------------*
       3000-FINAL-PROGRAMA.
           STOP RUN.

       END PROGRAM SalesDataProcessor.
