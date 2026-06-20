# ChIP-seq Zebra Finch Pipeline
# ChIP-seq Zebra Finch Pipeline

![Linux](https://img.shields.io/badge/Linux-Ubuntu-blue)
![R](https://img.shields.io/badge/R-Bioconductor-blue)
![MACS3](https://img.shields.io/badge/MACS3-v3.0-green)
![Species](https://img.shields.io/badge/Species-Taeniopygia_guttata-orange)

End-to-end ChIP-seq analysis workflow for *Taeniopygia guttata* (zebra finch) using Linux and R/Bioconductor.

---
End-to-end ChIP-seq analysis workflow for *Taeniopygia guttata* (zebra finch) using Linux and R/Bioconductor.

---

## Overview

This repository contains a complete ChIP-seq analysis workflow beginning with raw SRA data and ending with peak annotation and gene identification.

**Dataset:** SRR29148259

**Species:** *Taeniopygia guttata* (zebra finch)

**Reference genome:** bTaeGut1_v1.p

**Peak caller:** MACS3

---

## Workflow

```text
SRA Download
     ↓
FastQC
     ↓
fastp
     ↓
BWA alignment
     ↓
SAMtools processing
     ↓
MACS3 peak calling
     ↓
Peak annotation with ChIPseeker
     ↓
Gene extraction
```

---

## Repository Structure

```text
chipseq-zebrafinch-pipeline
│
├── README.md
├── .gitignore
└── scripts
    ├── 01_download_data.sh
    ├── 02_quality_control.sh
    ├── 03_alignment.sh
    ├── 04_bam_processing.sh
    ├── 05_peak_calling.sh
    └── 06_peak_annotation.R
```

---

## Software Used

### Linux

- Ubuntu (WSL)
- Conda

### Quality Control

- FastQC
- fastp

### Alignment

- BWA

### BAM Processing

- SAMtools

### Peak Calling

- MACS3

### Peak Annotation

- R
- Bioconductor
- ChIPseeker
- txdbmaker
- GenomicFeatures
- rtracklayer

---

## Main Outputs

- `SRR29148259.sorted.bam`
- `SRR29148259_peaks.narrowPeak`
- `SRR29148259_peaks.xls`
- `SRR29148259_summits.bed`
- `SRR29148259_peak_annotation.csv`

---

## Highlights

- Complete Linux-based ChIP-seq workflow.
- Analysis of a non-model organism (*Taeniopygia guttata*).
- Integration of shell scripting and R/Bioconductor.
- Peak annotation using ChIPseeker.
- Reproducible computational genomics pipeline.

---

## Author

**Soumen Manna**

PhD Researcher

Epigenetics • Chromatin Biology • Computational Genomics
