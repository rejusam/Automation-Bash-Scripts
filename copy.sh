#mkdir /home/john/PhD/for_all_op/crf_ge
#mkdir /home/john/PhD/for_all_op/crf_te
for i in {20..22..2}
do
	echo "coping file from $i"
	cd ../../cosmo-sim_$i/crfrac_vs_gassenergy/
	cp crf_ge_$i.txt crf_ge_R500_$i.txt /home/john/PhD/for_all_op/crf_ge
	cp crf_te_$i.txt crf_te_R500_$i.txt /home/john/PhD/for_all_op/crf_te
done
