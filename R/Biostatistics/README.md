# Biostatistics using R Lab
R lab exercises related to statistical analysis of biological and physiological data.

## Health Physiological Data Analysis
This exercise covers:
-Mean
-Median
-Mode
-Standard Deviation
-Correlation Between Height and Weight
-Data Visualization using 'ggplot2'
-Linear Regression
The dataset used for this exercise was provided by the university and is therefore not included in this repository.

## Results

### Height vs Weight Regression
![Height vs Weight Regression](regression_plot.png)

## Protein Structural Analysis

This exercise covers:
-Total Number of Amino Acids
-Amino Acid Composition
-Mean B-factor
-B-factor Distribution of Main Chain Atoms
-Ramachandran Plot
The protein structure used for this exercise was obtained from the Protein Data Bank (PDB) using PDB ID 1SMD and analyzed using the Bio3D package in R

## Results

### Amino Acid Composition
![Amino Acid Composition](amino_acid_composition.png)

### B-factor Distribution
![B-factor Distribution](b_factor_distribution.png)

### Ramachandran Plot
![Ramachandran Plot](Ramachandran_plot.png)

## Independent Structural Analysis of EGFR

### Why EGFR?

EGFR (Epidermal Growth Factor Receptor) is a clinically important protein involved in cell growth and signaling. Abnormal EGFR activity is associated with several cancers, making it an important target in cancer research and drug development.

To extend the protein structural analysis learned in the practical, I independently selected an EGFR structure from the Protein Data Bank (PDB).

### Why PDB ID 1M17?

PDB ID **1M17** represents the tyrosine kinase domain of human EGFR in complex with an inhibitor. Studying this structure provides a structural perspective on an important cancer-related drug target.

### Analysis Performed

Using the **Bio3D package in R**, the EGFR structure was analyzed for:

- Total number of amino acids
- Amino acid composition
- Mean B-factor
- B-factor distribution of main-chain atoms
- Backbone φ (phi) and ψ (psi) angles using a Ramachandran plot

## Results

### EGFR Amino Acid Composition
![EGFR Amino Acid Composition](EGFR_amino_acid_composition.png)

### EGFR B-factor Distribution
![EGFR B-factor Distribution](EGFR_b_factor_distribution.png)

### EGFR Ramachandran Plot
![EGFR Ramachandran Plot](EGFR_Ramachandran_plot.png)
