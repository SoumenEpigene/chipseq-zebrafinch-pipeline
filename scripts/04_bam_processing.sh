#!/bin/bash

# ===============================================

# BAM processing using SAMtools

# Species: Taeniopygia guttata

# Dataset: SRR29148259

# ===============================================

# Activate environment

conda activate bamenv

# Convert SAM to BAM

samtools view -bS SRR29148259.sam > SRR29148259.bam

# Sort BAM file

samtools sort SRR29148259.bam -o SRR29148259.sorted.bam

# Index sorted BAM

samtools index SRR29148259.sorted.bam

# Alignment statistics

samtools flagstat SRR29148259.sorted.bam
