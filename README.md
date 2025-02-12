# CS5567 Mini Project: Cancer Dataset ROC Analysis  

## Description  
This repository contains the mini project for **CS5567**, which focuses on **linear regression modeling** and **Receiver Operating Characteristic (ROC) curve analysis** for cancer classification. The project explores different feature selections and evaluates their performance using **AUC (Area Under the Curve)** as a metric.  

## Files Included  

### **Part 1: Linear Regression and ROC Analysis on Training and Test Data**  
- **File:** CS5567_mini_project1_1.m  
- **Topics Covered:**  
  - Loading and preprocessing the **cancer dataset**.  
  - Splitting data into **training and testing sets**.  
  - Implementing **Mean Squared Error (MSE)-based linear regression**.  
  - Generating **ROC curves** and calculating **AUC scores**.  

### **Part 2: Feature Selection and Individual Feature ROC Analysis**  
- **File:** CS5567_mini_project1_2.m  
- **Topics Covered:**  
  - Computing **ROC curves** for the **full feature set** (9-dimensional input).  
  - Evaluating the impact of **each individual feature** on classification performance.  
  - Comparing **AUC scores** across different feature selections.  

### **Project Report**  
- **File:** CS5567_Mini_Project.pdf  
- **Contents:**  
  - Discussion of **training vs. testing AUC** results.  
  - Observations on **overfitting** and **feature importance**.  
  - Graphical representation of **ROC curves for different features**.  

## Installation  
Ensure **MATLAB** is installed before running the scripts.  

### Required MATLAB Toolbox  
- **Statistics and Machine Learning Toolbox** (for `perfcurve` function).  

## Usage  
1. Open **MATLAB**.  
2. Load the cancer dataset using `cancer_dataset` (included in MATLAB).  
3. Run the first script:  
   `CS5567_mini_project1_1`  
4. View **training and testing AUC values** and **ROC curves**.  
5. Run the second script:  
   `CS5567_mini_project1_2`  
6. Compare **ROC curves** for individual features and analyze **feature importance**.  

## Example Output  

- **Training vs. Testing AUC (Part 1)**  
  - Training AUC: **99%**  
  - Testing AUC: **Lower than training, but still high** (indicating slight overfitting).  

- **Feature Selection (Part 2)**  
  - Full 9-dimensional feature AUC: **99%**  
  - Most features have an AUC around **90%**.  
  - Feature **9 performed the worst**, with an AUC of **71%**.  

## Contributions  
This repository is intended for **educational purposes** in **machine learning and statistical analysis**. Feel free to modify and extend the project.  

## License  
This project is open for **academic and research use**.  

---
**Author:** Alexander Dowell  
