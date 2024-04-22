      *----------------------------------------------------------------*
      *    NOMBRE      : GLOBALDATA                                    *
      *    LONGITUD    : 7200                                          *
      *    DESCRIPCION : AREA DE COMUNICACION ENTRE LOS DIFERENTES     *
      *                  PROGRAMAS                                     *
      *----------------------------------------------------------------*
       01 GLOBALDATA                        PIC X(7200).
       01 WS-GLOBALDATA REDEFINES GLOBALDATA.
           05 GD-SALES-DATA OCCURS 100 TIMES.
               10 GD-PRODUCT-NAME              PIC X(60).
               10 GD-UNIT-PRICE                PIC 9(08).
               10 GD-QUANTITY-SOLD             PIC 9(04).
