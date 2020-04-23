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
megahit --kmin-1pass --k-min 65 --k-max 105 --k-step 10 -1 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz -2 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz -o /home/camil/private/Genome_Analysis_Paper_4/analyses/1_assembly/1_2_metagenome_assembly/
