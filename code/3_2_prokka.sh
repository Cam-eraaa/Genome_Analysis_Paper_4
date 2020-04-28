#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J functional_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca
# Your commands
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_2 --prefix bin_2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_2.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_3 --prefix bin_3 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_3.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_4 --prefix bin_4 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_4.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_5 --prefix bin_5 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_5.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_6 --prefix bin_6 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_6.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_7 --prefix bin_7 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_7.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_9 --prefix bin_9 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_9.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_10 --prefix bin_10 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_10.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_11 --prefix bin_11 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_11.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_13 --prefix bin_13 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_13.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_14 --prefix bin_14 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_14.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_15 --prefix bin_15 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_15.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_16 --prefix bin_16 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_16.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_17 --prefix bin_17 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_17.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_18 --prefix bin_18 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_18.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_19 --prefix bin_19 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_19.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_20 --prefix bin_20 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_20.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_21 --prefix bin_21 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_21.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_22 --prefix bin_22 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_22.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_23 --prefix bin_23 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_23.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_24 --prefix bin_24 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_24.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_25 --prefix bin_25 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_25.fa
prokka --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/bacteria/bin_26 --prefix bin_26 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_26.fa

prokka --kingdom Archaea --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/archaea/bin_1 --prefix bin_1 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_1.fa
prokka --kingdom Archaea --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/archaea/bin_8 --prefix bin_8 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_8.fa
prokka --kingdom Archaea --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/archaea/bin_12 --prefix bin_12 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_12.fa
prokka --kingdom Archaea --outdir /home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/archaea/bin_27 --prefix bin_27 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_27.fa
