#!/bin/bash

# ===============================================

# Alignment using BWA

# Species: Taeniopygia guttata (zebra finch)

# Dataset: SRR29148259

# ===============================================

# Activate environment

conda activate base

# Build BWA index

bwa index genome.fna.fa

# Align reads to the reference genome

bwa mem -t 4 
genome.fna.fa 
/home/soumenbio/SRR29148259_trimmed.fastq.gz \

> SRR29148259.sam
