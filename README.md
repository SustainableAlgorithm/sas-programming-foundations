# SAS Programming Foundations

Undergraduate SAS programming coursework from **STP 315 (Spring 2022)**, organized as a small portfolio of practical data-management examples.

The examples demonstrate reading raw data from delimited files, defining variable attributes, selecting and retaining variables, applying date informats and formats, and inspecting resulting SAS datasets.

## Skills demonstrated

- Importing comma-delimited, space-delimited, and tab-delimited text files
- Defining character and numeric variable lengths with `LENGTH`
- Reading records with `INFILE` and `INPUT`
- Using a hexadecimal tab delimiter (`'09'x`)
- Applying date informats and formats
- Selecting output variables with `KEEP` and `DROP`
- Inspecting datasets with `PROC PRINT`

## Repository contents

| File | Description |
|---|---|
| [01-raw-data-import.sas](01-raw-data-import.sas) | Examples for importing CSV, space-delimited, and tab-delimited data, including nonstandard date values |

## Data and execution notes

These programs reference course-provided Orion sample data files: `newemps.csv`, `donation.dat`, `managers2.dat`, and `custca.csv`. The source data files and original local course directory are not included.

The original programs use the `&path` macro variable to refer to the course data directory. Define it for your own environment before running the examples:

```sas
%let path=/your/local/path/to/Orion;
```

Update the path and confirm that you have access to the referenced sample data before execution. The code is a portfolio transcription of coursework and has not been independently validated against the original course datasets in this repository.

## Course context

- **Course:** STP 315
- **Term:** Spring 2022
- **Topic represented:** SAS1 Chapter 8 — Reading Raw Data Files

This repository documents foundational SAS experience as part of a broader data science portfolio.
