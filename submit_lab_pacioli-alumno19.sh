#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno19/cpnube/lab3/fastq
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1

#Guardar todos los archivos .fastq en una lista
files=(*.fastq)


export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#Ejecutar cut-file.sh en paralelo para cada archivo
for file in "${files[@]}"; do
    ./file-cut.sh "$file" &
done


wait

