#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J assembly_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load quast/4.5.4
# Your commands
metaquast.py -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/ -o /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/2_2_assembly_evaluation -1 /proj/g2020008/4_Thrash_2017/DNA_trimmed/*_1.paired.trimmed.fastq.gz -2 /proj/g2020008/4_Thrash_2017/DNA_trimmed/*_1.paired.trimmed.fastq.gz
