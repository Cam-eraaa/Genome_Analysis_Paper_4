#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J binning_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load CheckM
# Your code
checkm lineage_wf -t 4 -x fa --reduced_tree /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/3_1_binning_evaluation
