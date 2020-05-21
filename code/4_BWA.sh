#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J RNA_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9
# Your commands
# bin_1
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_1.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_1.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_1.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_1_mapped_2139.bam

# bin_2
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_2.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_2.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_2.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_2_mapped_2139.bam

# bin_3
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_3.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_3.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_3.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_3_mapped_2139.bam

# bin_4
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_4.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_4.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_4.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_4_mapped_2139.bam

#bin_5
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_5.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_5.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_5.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_5_mapped_2139.bam

#bin_6
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_6.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_6.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_6.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_6_mapped_2139.bam

#bin_7
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_7.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_7.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_7.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_7_mapped_2139.bam

#bin_8
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_8.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_8.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_8.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_8_mapped_2139.bam

#bin_9
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_9.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_9.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_9.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_9_mapped_2139.bam

#bin_10
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_10.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_10.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_10.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_10_mapped_2139.bam

#bin_11
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_11.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_11.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_11.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_11_mapped_2139.bam

#bin_12
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_12.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_12.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_12.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_12_mapped_2139.bam

#bin_13
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_13.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_13.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_13.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_13_mapped_2139.bam

#bin_14
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_14.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_14.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_14.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_14_mapped_2139.bam

#bin_15
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_15.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_15.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_15.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_15_mapped_2139.bam

#bin_16
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_16.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_16.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_16.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_16_mapped_2139.bam

#bin_17
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_17.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_17.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_17.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_17_mapped_2139.bam

#bin_18
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_18.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_18.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_18.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_18_mapped_2139.bam

#bin_19
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_19.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_19.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_19.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_19_mapped_2139.bam

#bin_20
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_20.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_20.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_20.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_20_mapped_2139.bam

#bin_21
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_21.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_21.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_21.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_21_mapped_2139.bam

#bin_22
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_22.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_22.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_22.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_22_mapped_2139.bam

#bin_23
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_23.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_23.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_23.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_23_mapped_2139.bam

#bin_24
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_24.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_24.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_24.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_24_mapped_2139.bam

#bin_25
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_25.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_25.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_25.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_25_mapped_2139.bam

#bin_26
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_26.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_26.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_26.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_26_mapped_2139.bam

#bin_27
bwa index /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_27.fa

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_27.fa /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2137.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2137.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2137.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2137.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2137_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2137.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2137.bam

bwa mem -t 2 /home/camil/private/Genome_Analysis_Paper_4/analyses/2_binning/bin_27.fa /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2139.sam
samtools view -S -b /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2139.sam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2139.bam
samtools sort /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2139.bam > /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2139_sorted.bam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2139.sam
rm /home/camil/private/Genome_Analysis_Paper_4/analyses/4_rna_mapping/bin_27_mapped_2139.bam
