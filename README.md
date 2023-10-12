
# Metagenomic Data Analysis in R

![R](https://img.shields.io/badge/-R-276DC3?style=flat&logo=r&logoColor=white)

This repository contains R code to analyze metagenomic data. The analysis includes:

- Random forest classification
- Multi-response permutation procedure (MRPP) 
- Differential gene expression (DGE) analysis

## Random Forest

The randomForest package is used to build a random forest model on the species abundance data and predict sample labels. Feature importance is extracted to determine the most influential species.

## MRPP

The mrpp function from the vegan package is used to test for significant differences between groups of samples based on their species composition. 

## DGE Analysis 

The DESeq2 package is leveraged to identify differentially expressed genes between sample groups. Wald tests are used to test for significant differential expression.

Overall this analysis provides a comprehensive examination of the metagenomic dataset using machine learning and statistical techniques in R.
