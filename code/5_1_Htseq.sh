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

htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_1_mapped_2137_sorted.bam ${bam_file_dir}/bin_1_mapped_2139_sorted.bam ${gff_file_dir}/archaea/bin_1/bin_1.gff > ${output}/bin_1_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_8_mapped_2137_sorted.bam ${bam_file_dir}/bin_8_mapped_2139_sorted.bam ${gff_file_dir}/archaea/bin_8/bin_8.gff > ${output}/bin_8_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_12_mapped_2137_sorted.bam ${bam_file_dir}/bin_12_mapped_2139_sorted.bam ${gff_file_dir}/archaea/bin_12/bin_12.gff > ${output}/bin_12_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_27_mapped_2137_sorted.bam ${bam_file_dir}/bin_27_mapped_2139_sorted.bam ${gff_file_dir}/archaea/bin_27/bin_27.gff > ${output}/bin_27_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_2_mapped_2137_sorted.bam ${bam_file_dir}/bin_2_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_2/bin_2.gff > ${output}/bin_2_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_3_mapped_2137_sorted.bam ${bam_file_dir}/bin_3_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_3/bin_3.gff > ${output}/bin_3_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_4_mapped_2137_sorted.bam ${bam_file_dir}/bin_4_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_4/bin_4.gff > ${output}/bin_4_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_5_mapped_2137_sorted.bam ${bam_file_dir}/bin_5_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_5/bin_5.gff > ${output}/bin_5_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_6_mapped_2137_sorted.bam ${bam_file_dir}/bin_6_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_6/bin_6.gff > ${output}/bin_6_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_7_mapped_2137_sorted.bam ${bam_file_dir}/bin_7_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_7/bin_7.gff > ${output}/bin_7_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_9_mapped_2137_sorted.bam ${bam_file_dir}/bin_9_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_9/bin_9.gff > ${output}/bin_9_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_10_mapped_2137_sorted.bam ${bam_file_dir}/bin_10_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_10/bin_10.gff > ${output}/bin_10_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_11_mapped_2137_sorted.bam ${bam_file_dir}/bin_11_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_11/bin_11.gff > ${output}/bin_11_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_13_mapped_2137_sorted.bam ${bam_file_dir}/bin_13_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_13/bin_13.gff > ${output}/bin_13_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_14_mapped_2137_sorted.bam ${bam_file_dir}/bin_14_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_14/bin_14.gff > ${output}/bin_14_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_15_mapped_2137_sorted.bam ${bam_file_dir}/bin_15_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_15/bin_15.gff > ${output}/bin_15_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_16_mapped_2137_sorted.bam ${bam_file_dir}/bin_16_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_16/bin_16.gff > ${output}/bin_16_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_17_mapped_2137_sorted.bam ${bam_file_dir}/bin_17_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_17/bin_17.gff > ${output}/bin_17_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_18_mapped_2137_sorted.bam ${bam_file_dir}/bin_18_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_18/bin_18.gff > ${output}/bin_18_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_19_mapped_2137_sorted.bam ${bam_file_dir}/bin_19_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_19/bin_19.gff > ${output}/bin_19_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_20_mapped_2137_sorted.bam ${bam_file_dir}/bin_20_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_20/bin_20.gff > ${output}/bin_20_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_21_mapped_2137_sorted.bam ${bam_file_dir}/bin_21_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_21/bin_21.gff > ${output}/bin_21_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_22_mapped_2137_sorted.bam ${bam_file_dir}/bin_22_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_22/bin_22.gff > ${output}/bin_22_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_23_mapped_2137_sorted.bam ${bam_file_dir}/bin_23_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_23/bin_23.gff > ${output}/bin_23_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_24_mapped_2137_sorted.bam ${bam_file_dir}/bin_24_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_24/bin_24.gff > ${output}/bin_24_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_25_mapped_2137_sorted.bam ${bam_file_dir}/bin_25_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_25/bin_25.gff > ${output}/bin_25_count.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_file_dir}/bin_26_mapped_2137_sorted.bam ${bam_file_dir}/bin_26_mapped_2139_sorted.bam ${gff_file_dir}/bacteria/bin_26/bin_26.gff > ${output}/bin_26_count.out
