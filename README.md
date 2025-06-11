Introduction to Data Analytics & Visualisation Coursework

This repository contains the coursework submission for the Introduction to Data Analytics and Visualisation module (M32724) at the University of Portsmouth, 2024/2025. It includes data curation scripts, visualisations, and a short report. The project files are located in the DAVe/up2246775/ directory.

Table of Contents

Overview


Installation & Dependencies

Data Curation

Visualisations

Usage

Report

Acknowledgements

Overview

Assessment & Feedback

This coursework was awarded 95%, with commendations for data curation strategies (including the innovative use of the mice package), clear report structure, and thoughtfully constructed visualisations.

Overview

Portsmouth’s Clean Air Zone (CAZ) came into effect on 29th November 2021 to improve air quality. The British Transport Consortium (BTC) has provided hourly pollutant data (PM10, NO, NO₂) from the Anglesea Road monitoring station for 2018–2023. The goal is to:

Visualise pollutant levels on specific dates.

Compute and visualise monthly averages for 2020.

Create an additional exploratory visualisation demonstrating a pattern identified through analysis.



Installation & Dependencies

All scripts rely on the tidyverse suite for data manipulation and plotting. Additional packages used:

mice: For multiple imputation of missing data points (first-time use in this module!).

You do not need to load dplyr, ggplot2, etc. separately; they are included via library(tidyverse).

# Install dependencies if needed
install.packages(c("tidyverse", "mice"))

Data Curation

Data curation steps are implemented in scripts/data_curation.R:

Import raw CSV files and save as RDS for faster load times.

Identify missing values in pollutant columns.

Impute missing data using the mice package with predictive mean matching.

Standardise date-time formats and filter to relevant dates.

Each step lists affected columns and rationale in the script comments.

Visualisations

Required Visualisations (Section B)

PM10 levels on specified dates (scripts/viz_required_1.R)

Nitric Oxide (NO) on specified dates (scripts/viz_required_2.R)

Nitrogen Oxides (as NO₂) on specified dates (scripts/viz_required_3.R)

Monthly averages for 2020 (scripts/viz_required_4.R)

Visualisations are exported as individual PDFs in output/. Static plots use facets for clear comparison; interactive versions (if generated) are documented in the report.

Exploratory Visualisation

An additional pattern-based visualisation (scripts/viz_exploratory.R) highlights [brief description of pattern].

Usage

Clone the repository and navigate to the DAVe/up2246775/ directory.

Run scripts/data_curation.R to prepare the data/curated/ RDS files.

Execute each viz_*.R script to generate the corresponding PDF in output/.

Rscript scripts/data_curation.R
Rscript scripts/viz_required_1.R
# ...

Report

A short report (report/DAV_assessment_one_report.pdf) describes the data curation decisions, visualisation choices, and key findings for each plot.

Acknowledgements

Module coordinator: Mark Venn (mark.venn@port.ac.uk)

University of Portsmouth Data Analytics and Visualisation resources

BTC for providing the CAZ pollutant dataset

Author: Reneta Todorova

