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
      *----------------------------------------------------------------*
      *          W O R K I N G  S T O R A G E   S E C T I O N          *
      *----------------------------------------------------------------*
       WORKING-STORAGE SECTION.
      
       LINKAGE SECTION.
       01 DFHCOMMAREA                      PIC X(2534).
      
      *----------------------------------------------------------------*
      *               P R O C E D U R E   D I V I S I O N               *
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
           PERFORM 1000-INICIO-PROGRAMA
           PERFORM 2000-PROCESO-PROGRAMA
           PERFORM 3000-FINAL-PROGRAMA.
      
      *----------------------------------------------------------------*
      * 1000-INICIO-PROGRAMA                                           *
      *----------------------------------------------------------------*
       1000-INICIO-PROGRAMA.
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
