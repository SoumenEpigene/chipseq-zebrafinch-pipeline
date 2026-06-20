#!/bin/bash

# ===============================================

# ChIP-seq analysis pipeline

# Species: Taeniopygia guttata (zebra finch)

# Dataset: SRR29148259

# ===============================================

# Activate SRA-tools environment

conda activate sraenv

# Download SRA file

prefetch SRR29148259

# Convert SRA to FASTQ

fasterq-dump SRR29148259

# Compress FASTQ file

gzip SRR29148259.fastq

# Check downloaded file

ls -lh SRR29148259.fastq.gz
