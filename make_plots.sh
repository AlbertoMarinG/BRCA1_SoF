#!/bin/bash
pyGenomeTracks --tracks tracks_rep1.ini --region Chr6+_Ter_HR_reporter_ref:113000000-113120000 --width 25 --fontSize 8 -o plot_rpa_brca1-cells_1.png --dpi 600
pyGenomeTracks --tracks tracks_rep2.ini --region Chr6+_Ter_HR_reporter_ref:113000000-113120000 --width 25 --fontSize 8 -o plot_rpa_brca1-cells_2.png --dpi 600
