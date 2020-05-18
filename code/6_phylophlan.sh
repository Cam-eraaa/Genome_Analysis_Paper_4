#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J phylogenetic_placement
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
#load all the necessary modules
module load bioinfo-tools
module load phylophlan
module load FastTree
module load usearch/5.2.32
module load biopython
module load muscle
module load python/2.7.15
# set this to the directory where you want to store your phylophlan results
outdir=/home/camil/private/Genome_Analysis_Paper_4/analyses/6_phylogeny
# create the directories that phylophlan looks for:
# when you run phylophlan you specify a project name, which it looks for in the "input" directory
# in this case the project name is "metagenome"
# this is also where you should put symlinks to your input files
mkdir -p $outdir/input/metagenome
mkdir -p $outdir/output
mkdir -p $outdir/data/ppaalns
faa_file_dir=/home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/3_2_functional_annotation
for i in 1 8 12 27
do
	ln -sf ${faa_file_dir}/archaea/bin_${i}/bin_${i}.faa ${outdir}/input/metagenome
done
for i in 2 3 4 5 6 7 9 10 11 13 14 15 16 17 18 19 20 21 22 23 24 25 26
do
	ln -sf ${faa_file_dir}/bacteria/bin_${i}/bin_${i}.faa ${outdir}/input/metagenome
done
# symlink phylophlan data files
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/*.bz2 $outdir/data/ppaalns/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt $outdir/data/
#ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/taxcuration/ $outdir/taxcuration

cd $outdir
phylophlan.py -t -i metagenome --nproc 2
