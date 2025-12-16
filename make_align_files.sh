#!/bin/bash
j=1
for i in BRCA1_A_EP_1 BRCA1_A_EP_2 BRCA1_A_NoEP_1 BRCA1_A_NoEP_2 BRCA1_B_EP_1 BRCA1_B_EP_2 BRCA1_B_NoEP_1 BRCA1_B_NoEP_2 BRCA1_C_EP_1 BRCA1_C_EP_2 BRCA1_C_NoEP_1 BRCA1_C_NoEP_2 BRCA1_D_EP_2 BRCA1_D_NoEP_2 BRCA1_E_EP_2 BRCA1_E_NoEP_2; do
	sed "s/INPNAME/"$i"/g" slurm_gen.sh > slurm_"$j".sh
	let j=$j+1
done
