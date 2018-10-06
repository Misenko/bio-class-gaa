# bio-class-gaa
Dockerfile for building virtual classroom for biology students - Genomics: algorithms and analysis class

## Usage
This image is intended for Genomics: algorithms and analysis class tought at Institute of Molecular Genetics of the ASCR, v. v. i.

## Software
* BLAST++
* Bowtie
* BWA
* Canu
* cutadapt
* FastA
* FastQC
* FastX
* Miniasm
* Minimap2
* MIRA
* Racon
* RStudio Desktop + Server
* samtools
* SRA Toolkit
* Trimmomatic

## Image
RStudio server is started on container start. User can log-in via username: `student` and password set via `PASSWORD` container environment variable. To access RStudio server container must bind port 8787.
