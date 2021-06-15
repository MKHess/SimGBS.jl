## SimGBS: A Julia Package to Simulate Genotyping-by-Sequencing (GBS) Data  

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/kanji709/SimGBS.jl/blob/akonkia-patch-1/tutorials/SimGBS_Julia_Colab_Notebook.ipynb#scrollTo=qxAz-9VnvRVa)
[![latest](https://img.shields.io/badge/docs-latest-blue.svg)](https://kanji709.github.io/SimGBS.jl/dev/)
[![Build Status](https://github.com/kanji709/SimGBS.jl/workflows/CI/badge.svg)](https://github.com/kanji709/SimGBS.jl/actions)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/kanji709/SimGBS.jl?color=purple&style=flat-square)
[![GitHub issues](https://img.shields.io/github/issues/AgResearch/snpGBS)](https://github.com/kanji709/SimGBS.jl/issues)
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fkanji709%2FSimGBS.jl&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=true)](https://hits.seeyoufarm.com)
[![GitHub license](https://img.shields.io/github/license/AgResearch/snpGBS?style=flat-square)](https://github.com/kanji709/SimGBS.jl/blob/master/LICENSE)


## Introduction

SimGBS is a versatile method of simulating  [Genotyping-by-Sequencing (GBS)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0019379) data. It can be implemented with any genome of choice. Users can modify different parameters to customise GBS setting, such as the choice of [restriction enzyme](https://en.wikipedia.org/wiki/Restriction_enzyme#Examples) and [sequencing depth](https://www.nature.com/articles/nrg3642). By taking the [gene-drop](https://academic.oup.com/g3journal/article/5/7/1415/6025367) approach, users can also specify the demographic history and define population structure (by supplying a pedigree file). Like real sequencers, SimGBS will output data into [FASTQ](https://en.wikipedia.org/wiki/FASTQ_format) format.   

## Installation

`SimGBS.jl` is registered in the [`General`](https://github.com/JuliaRegistries/General) registry. It can be installed using `Pkg.add`,

```julia
julia> import Pkg;Pkg.add("SimGBS")
```

or simply

```julia
julia> ] 
pkg> add SimGBS
```


## Input

- Reference genome of the target species in FASTA format (e.g., `xxx.fasta.gz`/`xxx.fa.gz`)   

- A list of Illumina barcodes (e.g., `GBS_Barcodes.txt`)

- (optional) Pedigree File (e.g.,`small.ped`)



## Output

- GBS fragments generated by virtual digestion (e.g.,`rawGBStags.txt`)

- Selected GBS fragments after fragment size-selection (e.g.,`GBStags.txt`)

- Haplotypes, SNP and QTL genotypes (e.g.,`hap.txt`, `snpGeno.txt` and `qtlGeno.txt`)

- Basic information about simulated GBS experiment (e.g.,`keyFile.txt`)

- Simulated GBS reads in FASTQ format (e.g.,`xxxxx.fastq`)

etc.



## Overview

For more information, please visit the [documentation](https://kanji709.github.io/SimGBS.jl/dev/) page.


## Citation

Please cite the following if you use `SimGBS.jl`,

- [Hess, A. S., M. K. Hess, K. G. Dodds, J. C. Mcewan, S. M. Clarke, and S. J. Rowe. "A method to simulate low-depth genotyping-by-sequencing data for testing genomic analyses." Proc 11th World Congr Genet Appl to Livest Prod 385 (2018)](https://www.researchgate.net/publication/325012536_A_method_to_simulate_low-depth_genotyping-by-sequencing_data_for_testing_genomic_analyses).

## What's Next?

The following tools are recommended for downstream analyses of GBS data,

- [**snpGBS**](https://github.com/AgResearch/snpGBS): a simple bioinformatics workflow to identify single nucleotide polymorphism (SNP) from Genotyping-by-Sequencing (GBS) data.

- [**KGD**](https://github.com/AgResearch/KGD): R code for the analysis of genotyping-by-sequencing (GBS) data, primarily to construct a genomic relationship matrix for the genotyped individuals.   

- [**GUSLD**](https://github.com/AgResearch/GUS-LD): An R package for estimating linkage disequilibrium using low and/or high coverage sequencing data without requiring filtering with respect to read depth.

- [**SMAP**](https://gitlab.com/truttink/smap) a software package that analyzes read mapping distributions and performs haplotype calling to create multi-allelic molecular markers.
