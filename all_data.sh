rm -f all_data_br.txt 
awk '{{print $1 "\t" $2}}' virial_crf_vm_1_10_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_11_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_9_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_13_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_14_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_15_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_16_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_17_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_20_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt
awk '{{print $1 "\t " $2}}' virial_crf_vm_1_22_tab_br.txt >> all_data_br.txt
wc -l all_data_br.txt

gedit all_data_br.txt &
