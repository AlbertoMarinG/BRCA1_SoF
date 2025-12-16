#!/bin/bash
a_no_1="bams/BRCA1_A_NoEP_1_mm10_final.bam"
a_ep_1="bams/BRCA1_A_EP_1_mm10_final.bam"
a_no_2="bams/BRCA1_A_NoEP_2_mm10_final.bam"
a_ep_2="bams/BRCA1_A_EP_2_mm10_final.bam"
a_no_3="bams/BRCA1_A_NoEP_3_mm10_final.bam"
a_ep_3="bams/BRCA1_A_EP_3_mm10_final.bam"
b_no_1="bams/BRCA1_B_NoEP_1_mm10_final.bam"
b_ep_1="bams/BRCA1_B_EP_1_mm10_final.bam"
b_no_2="bams/BRCA1_B_NoEP_2_mm10_final.bam"
b_ep_2="bams/BRCA1_B_EP_2_mm10_final.bam"
b_no_3="bams/BRCA1_B_NoEP_3_mm10_final.bam"
b_ep_3="bams/BRCA1_B_EP_3_mm10_final.bam"
c_no_1="bams/BRCA1_C_NoEP_1_mm10_final.bam"
c_ep_1="bams/BRCA1_C_EP_1_mm10_final.bam"
c_no_2="bams/BRCA1_C_NoEP_2_mm10_final.bam"
c_ep_2="bams/BRCA1_C_EP_2_mm10_final.bam"
c_no_3="bams/BRCA1_C_NoEP_3_mm10_final.bam"
c_ep_3="bams/BRCA1_C_EP_3_mm10_final.bam"
d_no_1="bams/BRCA1_D_NoEP_1_mm10_final.bam"
d_ep_1="bams/BRCA1_D_EP_1_mm10_final.bam"
d_no_2="bams/BRCA1_D_NoEP_2_mm10_final.bam"
d_ep_2="bams/BRCA1_D_EP_2_mm10_final.bam"
d_no_3="bams/BRCA1_D_NoEP_3_mm10_final.bam"
d_ep_3="bams/BRCA1_D_EP_3_mm10_final.bam"
e_no_1="bams/BRCA1_E_NoEP_1_mm10_final.bam"
e_ep_1="bams/BRCA1_E_EP_1_mm10_final.bam"
e_no_2="bams/BRCA1_E_NoEP_2_mm10_final.bam"
e_ep_2="bams/BRCA1_E_EP_2_mm10_final.bam"
e_no_3="bams/BRCA1_E_NoEP_3_mm10_final.bam"
e_ep_3="bams/BRCA1_E_EP_3_mm10_final.bam"
# bamCompare
#bamCompare -b1 $a_ep_1 -b2 $a_no_1 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_LargeDelCC_1.bw
#bamCompare -b1 $a_ep_2 -b2 $a_no_2 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_LargeDelCC_2.bw
bamCompare -b1 $a_ep_3 -b2 $a_no_3 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_LargeDelCC_3.bw
##
#bamCompare -b1 $b_ep_1 -b2 $b_no_1 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_SmallDelCC_1.bw
#bamCompare -b1 $b_ep_2 -b2 $b_no_2 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_SmallDelCC_2.bw
bamCompare -b1 $b_ep_3 -b2 $b_no_3 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_SmallDelCC_3.bw
##
#bamCompare -b1 $c_ep_1 -b2 $c_no_1 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_L2P_1.bw
#bamCompare -b1 $c_ep_2 -b2 $c_no_2 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_L2P_2.bw
bamCompare -b1 $c_ep_3 -b2 $c_no_3 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_L2P_3.bw
##
#bamCompare -b1 $d_ep_1 -b2 $d_no_1 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_Del11_1.bw
#bamCompare -b1 $d_ep_2 -b2 $d_no_2 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_Dell1_2.bw
bamCompare -b1 $d_ep_3 -b2 $d_no_3 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_Dell1_3.bw
##
#bamCompare -b1 $e_ep_1 -b2 $e_no_1 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_WT_1.bw
#bamCompare -b1 $e_ep_2 -b2 $e_no_2 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_WT_2.bw
bamCompare -b1 $e_ep_3 -b2 $e_no_3 -p 8 --region Chr6+_Ter_HR_reporter_ref --operation subtract -o BRCA1_WT_3.bw
