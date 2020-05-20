path_to_gff=/home/camil/private/Genome_Analysis_Paper_4/analyses/3_binning_assessment_annotation/3_2_functional_annotation
path_to_out=/home/camil/private/Genome_Analysis_Paper_4/analyses/5_read_counting

for n in 1 12 27
do
	echo "##############################"
	echo "Bin "${n}
	echo "##############################"
	echo "2137"
	echo "##############################"
	python3 expr_count.py ${path_to_gff}/archaea/bin_${n}/bin_${n}.gff ${path_to_out}/bin_${n}_count_2137.out
	echo "##############################"
	echo "2139"
	echo "##############################"
	python3 expr_count.py ${path_to_gff}/archaea/bin_${n}/bin_${n}.gff ${path_to_out}/bin_${n}_count_2139.out
done
for n in 3 4 5 9 11 13 14 17 20 23 24
do
	echo "##############################"
	echo "Bin "${n}
	echo "##############################"
	echo "2137"
	echo "##############################"
	python3 expr_count.py ${path_to_gff}/bacteria/bin_${n}/bin_${n}.gff ${path_to_out}/bin_${n}_count_2137.out
	echo "##############################"
	echo "2139"
	echo "##############################"
	python3 expr_count.py ${path_to_gff}/bacteria/bin_${n}/bin_${n}.gff ${path_to_out}/bin_${n}_count_2139.out
done
