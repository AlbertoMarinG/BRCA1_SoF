import pysam
bamfilectrl=PATH_TO_NOCAS9_BAM
baminfilein=PATH_TO_CAS9_BAM
site = Chr6+_Ter_HR_reporter_ref:113038660-113068660
bamctrl = pysam.AlignmentFile(bamfilectrl, 'rb')
rpm_ctrl = bamctrl.count(region=site) / bamctrl.mapped * 1E6
bamin = pysam.AlignmentFile(bamfilein, 'rb')
rpm_in = bamin.count(region=site) / bamin.mapped * 1E6
print(rpm_in-rpm_ctrl)

