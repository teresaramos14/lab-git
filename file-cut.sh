#!/bin/bash

# Parámetros de entrada
file=$1
login="alumno19"
fraction=19

TOTAL_LINES=$(wc -l < "$file")
CUT_LINES=$((TOTAL_LINES / fraction))

head -n "$CUT_LINES" "$file" > "cut_$file"
