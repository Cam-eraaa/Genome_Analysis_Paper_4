#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J read_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
#Load modules
module load bioinfo-tools
module load htseq/0.9.1
#Your commands

bam_file_dir=/home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping
gff_file_dir=/home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/3_2_functional_annotation
output=/home/camil/private/Genome_Analysis_Paper_4/analyses/5_read_counting

for bin in bin_1 bin_8 bin_12 bin_27
do
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${bin}_mapped_2137_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/archaea/${bin}/${bin}.gff) > ${output}/${bin}_count_2137.out
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${bin}_mapped_2139_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/archaea/${bin}/${bin}.gff) > ${output}/${bin}_count_2139.out
done
for bin in bin_2 bin_3 bin_4 bin_5 bin_6 bin_7 bin_9 bin_10 bin_11 bin_13 bin_14 bin_15 bin_16 bin_17 bin_18 bin_19 bin_20 bin_21 bin_22 bin_23 bin_24 bin_25 bin_26
do
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${bin}_mapped_2137_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bacteria/${bin}/${bin}.gff) > ${output}/${bin}_count_2137.out
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${bin}_mapped_2139_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bacteria/${bin}/${bin}.gff) > ${output}/${bin}_count_2139.out
done
