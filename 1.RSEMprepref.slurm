#!/bin/sh
#SBATCH -J RSEMprepref 
#SBATCH -n 1
#SBATCH --mem 25000
#SBATCH -e RSEMprepref.e%j
#SBATCH -o RSEMprepref.o%j

module load gnu/4.4.7/RSEM/1.2.17

rsem-prepare-reference --bowtie2 Ref_RSEM.fasta TrinityAssembly
