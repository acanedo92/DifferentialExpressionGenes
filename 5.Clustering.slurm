#!/bin/sh
#SBATCH -J ClusteringDE
#SBATCH -n 1
#SBATCH --mem 25000
#SBATCH -e ClusteringDE.e%j
#SBATCH -o ClusteringDE.o%j
##SBATCH -w nodo2


module load gnu/4.4.7/R/3.2.3
module load gnu/4.4.7/trinity/2.0.2

cd ExpDif_edgeR
# 1. Con la siguiente linea, se identifican 1594 caracteristicas expresadas diferencialmente, en el archivo de error sugiere elevar el npumero de clustering permitido.
#analyze_diff_expr.pl --matrix /home/acanedo/170710_ManuscriptAnalyzes/9.RSEM/SegundaParte/2.SubMatrix/1.SubAbundanceMatixCounts/SubMatrixCount_ge3.txt -P 0.001 -C 2 --output Heatmap_170911

#En el archivo de error sugiere elevar el npumero de clustering permitido con la opcion: --max_genes_clust , por lo que se realiza un segundo clustering
#analyze_diff_expr.pl --matrix /home/acanedo/170710_ManuscriptAnalyzes/9.RSEM/PrimeraParte/AbundanceMatrix.counts.matrix -P 0.001 -C 2 --max_genes_clust 60000 --output Heatmap170830_Clustering1594

analyze_diff_expr.pl --matrix ../AbundanceMatrix.TMM.fpkm.matrix -P 0.001 -C 1 --output Heatmap --max_genes_clust 20000

