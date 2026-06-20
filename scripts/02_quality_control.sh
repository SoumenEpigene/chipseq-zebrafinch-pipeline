#!/bin/bash

# ===============================================

# Quality control and adapter trimming

# Dataset: SRR29148259

# ===============================================

# Activate environment

conda activate base

# Initial quality check

fastqc SRR29148259.fastq.gz

# Adapter trimming and quality filtering

fastp 
-i SRR29148259.fastq.gz 
-o SRR29148259_trimmed.fastq.gz 
-h SRR29148259_fastp.html 
-j SRR29148259_fastp.json

# Quality check after trimming

fastqc SRR29148259_trimmed.fastq.gz
