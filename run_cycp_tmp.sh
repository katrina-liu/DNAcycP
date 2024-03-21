#!/bin/bash
#SBATCH -c 2                               # 2 core
#SBATCH -t 4-00:00                         # Runtime of 4 days, in D-HH:MM format
#SBATCH -p medium                           # Run in medium partition
#SBATCH --mem=5G
#SBATCH -o cycp_%j.out # File to which STDOUT + STDERR will be written, including job ID in filename
#SBATCH --mail-type=FAIL                    # ALL email notification type
#SBATCH --mail-user= ###### FILL_IN ############ Email to which notifications will be sent

source /PATH/TO/DNAcycP/env/bin/activate <DNACYCP CONDA ENV> ##### EDIT #####
rm -rf $2
mkdir -p $2
dnacycp-cli -f $1 $2