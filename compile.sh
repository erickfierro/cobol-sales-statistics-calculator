#!/bin/bash

compile_program() {
    local program_name=$1
    local source_file="src/$program_name.cbl"
    local output_file="bin/$program_name"

    cobc -x -o "$output_file" "$source_file" >/dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "Error compiling the program $program_name"
        exit 1
    fi
}

compile_program SalesDataProcessor
compile_program SalesStatisticsCalculator
compile_program ResultsPrinter

echo "Compilation completed"
