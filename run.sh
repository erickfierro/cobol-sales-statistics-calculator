#!/bin/bash

# Convertir archivos .xlsx a .dat
echo "Convirtiendo archivos .xlsx a .dat..."
python3 src/python/convert_xlsx_to_dat.py

# Compilar programa COBOL
echo "Compilando programa COBOL..."
cd src/cobol
make

# Ejecutar programa COBOL
echo "Generando reporte de ventas..."
./SalesDataProcessor

# Regresar al directorio raíz
cd ../..

echo "Proceso completado. El reporte se encuentra en data/output/SALES_REPORT.dat"