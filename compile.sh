#!/bin/bash

# Search in the src/ folder for compile all the programs inside
find src/ -type f -name "*.cbl" -print0 | while IFS= read -r -d '' archivo; do

    nombre_archivo=${archivo##*/}
    nombre_archivo=${nombre_archivo%.cbl}
    
    cobc -x -o "bin/$nombre_archivo" "$archivo" >/dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "Error compiling the program $nombre_archivo"
        exit 1
    fi
done