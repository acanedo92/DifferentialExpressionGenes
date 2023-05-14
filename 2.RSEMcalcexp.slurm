#!/bin/sh
#SBATCH -J RSEMcalcexp 
#SBATCH -n 10
#SBATCH --mem 250000
#SBATCH -e RSEMcalcexp.e%j
#SBATCH -o RSEMcalcexp.o%j

module load gnu/4.4.7/RSEM/1.2.17

#Del primer set de reads (EI1CD1SS01) se usan todas las lecturas resultantes del filtrado=6508957; para el resto de los sets de datos se usan 7500000 reads, para normalizar el número de reads. 

rsem-calculate-expression --bowtie2 -p 10 --paired-end /home/acanedo/4.CrotonDraco/2.quality_filter/results/filtro_EI1CD1SS01_R1.fastq /home/acanedo/4.CrotonDraco/2.quality_filter/results/filtro_EI1CD1SS01_R2.fastq TrinityAssembly Hoja

rsem-calculate-expression --bowtie2 -p 10 --paired-end /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS02_R1.fastq /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS02_R2.fastq TrinityAssembly Fruto

rsem-calculate-expression --bowtie2 -p 10 --paired-end /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS03_R1.fastq /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS03_R2.fastq TrinityAssembly Tallo

rsem-calculate-expression --bowtie2 -p 10  --paired-end /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS04_R1.fastq /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS04_R2.fastq TrinityAssembly Raíz

rsem-calculate-expression --bowtie2 -p 10 --paired-end /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS05_R1.fastq /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS05_R2.fastq TrinityAssembly Inf_1

rsem-calculate-expression --bowtie2 -p 10 --paired-end /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS06_R1.fastq /home/acanedo/4.CrotonDraco/2.quality_filter/7.5M_FilteredReads/7.5M/2.set_sort/sort_7.5M_EI1CD1SS06_R2.fastq TrinityAssembly Inf_2

