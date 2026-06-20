#!/bin/bash

# ===============================================

# Peak calling using MACS3

# Species: Taeniopygia guttata

# Dataset: SRR29148259

# ===============================================

# Activate MACS3 environment

conda activate macs3env

# Peak calling

macs3 callpeak 
-t SRR29148259.sorted.bam 
-f BAM 
-g 1.1e9 
-n SRR29148259 
--outdir peaks

# Generated files:

# peaks/SRR29148259_peaks.narrowPeak

# peaks/SRR29148259_peaks.xls

# peaks/SRR29148259_summits.bed

# peaks/SRR29148259_model.r
