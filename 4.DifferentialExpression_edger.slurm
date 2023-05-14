#!/bin/sh
#SBATCH -J DifferentialExpression
#SBATCH -n 1
#SBATCH --mem 25000
#SBATCH -e DifferentialExpression.e%j
#SBATCH -o DifferentialExpression.o%j
##SBATCH -w nodo3


#module load gnu/4.4.7/trinity/2.0.2
module load gnu/4.4.7/trinity/2.1.1
module load gnu/4.4.7/R/3.2.3

run_DE_analysis.pl --matrix AbundanceMatrix.counts.matrix --method edgeR  --output ExpDif_edgeR --dispersion 0.1 


#--samples_file SamplesDescribed.txt --contrasts Contrasts.txt

