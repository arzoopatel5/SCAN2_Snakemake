# SCAN2 Wrapper Pipeline

This pipeline serves as a wrapper for [SCAN2](https://github.com/parklab/SCAN2/).

## Requirements

- [Snakemake](https://snakemake.readthedocs.io/en/stable/)
- [Singularity](https://docs.sylabs.io/guides/3.5/user-guide/introduction.html)

## Setup

Change directories to `resources` and follow the [SCAN2 external data dependencies instructions](https://github.com/parklab/SCAN2#download-external-data-dependencies).

## Input

The input should be a tsv file with the following 4 columns. The header line will be ignored. See example below
1. Single cell name in the format `<samplename>-SC<scnumber>`
2. Single cell path in the format `/path/<samplename>-SC<scnumber>.merged.bam`
3. Bulk sample name in the format `XXXX-<samplename>-XXXX` where XXXX can be whatever you want
4. Bulk sample path in the format `/path/XXXX-<samplename>-XXXX.merged.bam`

### Example Input

|Single_cell_name|Single_cell_path|Bulk_name|Bulk_path|
|---|---|---|---|
|0001-SC01|/path/to/sc/bam/0001-sc01.bam|A-0001-B|/path/to/bulk/bam/A-0001-B.bam|
|0001-SC02|/path/to/sc/bam/0001-sc02.bam|A-0001-B|/path/to/bulk/bam/A-0001-B.bam|

Example file included in input folder.

## Usage

Change parameters as necessary in the `config/config.yaml` file. 
Change directories to `workflow` and use `snakemake --use-singularity --singularity-args "-B /path/to/mnt/with/input/files,/path/to/mnt/with/resource/files"`. 

## TODO
- add hg38 parameters
