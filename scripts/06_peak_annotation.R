# ==================================================
# Peak annotation using ChIPseeker
# Species: Taeniopygia guttata (zebra finch)
# Dataset: SRR29148259
# ==================================================

# Load libraries
library(txdbmaker)
library(GenomicFeatures)
library(ChIPseeker)
library(rtracklayer)
library(GenomicRanges)

# Build TxDb from Ensembl GTF
txdb <- txdbmaker::makeTxDbFromGFF(
    "Taeniopygia_guttata.bTaeGut1_v1.p.115.gtf.gz",
    format = "gtf"
)

# Import MACS3 peak file
peakfile <- "SRR29148259_peaks.narrowPeak"

peaks <- readPeakFile(peakfile)

# Annotate peaks
peakAnno <- annotatePeak(
    peaks,
    TxDb = txdb,
    tssRegion = c(-3000, 3000)
)

# Convert annotations to data frame
peak.df <- as.data.frame(peakAnno)

# Extract unique genes
genes <- unique(peak.df$geneId)

# Number of unique genes
length(genes)

# Save annotation table
write.csv(
    peak.df,
    "SRR29148259_peak_annotation.csv",
    row.names = FALSE
)
