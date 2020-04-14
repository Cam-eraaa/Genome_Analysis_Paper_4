#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J metagenome_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load megahit
# Your commands
megahit --kmin-1pass -t 2 -1 /proj/g2020008/4_Thrash_2017/DNA_trimmed/*.fastq.gz -o /home/camil/private/Genome_Analysis_Paper_4/analyses/1_assembly/1_2_metagenome_assembly/DNA_trimmed
megahit --kmin-1pass -t 2 -1 /proj/g2020008/4_Thrash_2017/RNA_untrimmed/*.fastq.gz -o /home/camil/private/Genome_Analysis_Paper_4/analyses/1_assembly/1_2_metagenome_assembly/RNA_untrimmed
megahit --kmin-1pass -t 2 -1 /home/camil/private/trimmed_RNA/*fastq.gz -o /home/camil/private/Genome_Analysis_Paper_4/analyses/1_assembly/1_2_metagenome_assembly/RNA_trimmed
