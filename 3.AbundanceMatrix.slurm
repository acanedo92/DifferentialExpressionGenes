#!/bin/sh
#SBATCH -J AbundanceMatrix
#SBATCH -n 1
#SBATCH --mem 25000
#SBATCH -e AbundanceMatrix.e%j
#SBATCH -o AbundanceMatrix.o%j
#SBATCH -w nodo1

module load gnu/4.4.7/RSEM/1.2.17
module load gnu/4.4.7/trinity/2.0.2

abundance_estimates_to_matrix.pl --est_method RSEM --cross_sample_fpkm_norm TMM --out_prefix AbundanceMatrix Hoja.genes.results Fruto.genes.results Tallo.genes.results Raíz.genes.results Inf_1.genes.results Inf_2.genes.results
