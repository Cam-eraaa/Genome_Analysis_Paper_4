#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load MetaBat/2.12.1
# Your commands
metabat2 -t 2 -i /home/camil/private/Genome_Analysis_Paper_4/analyses/1_assembly/1_2_metagenome_assembly/new_final.contigs.fa -o /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/metabat_results
