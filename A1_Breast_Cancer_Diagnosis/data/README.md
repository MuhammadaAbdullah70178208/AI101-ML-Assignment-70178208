# Breast Cancer Wisconsin (Diagnostic) Dataset

## Overview & Provenance
- **Dataset Title:** Breast Cancer Wisconsin (Diagnostic)
- **Source:** UCI Machine Learning Repository (ID: 17) & Scikit-Learn (`sklearn.datasets.load_breast_cancer`)
- **Creators:** Dr. William H. Wolberg, W. Nick Street, and Olvi L. Mangasarian
- **Repository Link:** [https://archive.ics.uci.edu/dataset/17/breast+cancer+wisconsin+diagnostic](https://archive.ics.uci.edu/dataset/17/breast+cancer+wisconsin+diagnostic)
- **License:** Creative Commons Attribution 4.0 International (CC BY 4.0)

## Dataset Specifications
- **Instances:** 569 fine-needle aspirate (FNA) biopsy samples
- **Features:** 30 real-valued numeric measurements computed from digitized cell nucleus images
- **Target Variable:** Diagnosis binary flag (`1` = Malignant / Carcinoma, `0` = Benign / Non-carcinoma)
- **Class Breakdown:**
  - Benign ($y=0$): 357 cases (62.74%)
  - Malignant ($y=1$): 212 cases (37.26%)
- **Missing Values:** None (0.00%)

## Feature Description
Ten baseline cell nucleus morphological characteristics are computed:
1. `radius`: mean of distances from center to points on the perimeter
2. `texture`: standard deviation of gray-scale values
3. `perimeter`: nuclear perimeter length
4. `area`: nuclear area
5. `smoothness`: local variation in radius lengths
6. `compactness`: $\text{perimeter}^2 / \text{area} - 1.0$
7. `concavity`: severity of concave portions of the contour
8. `concave points`: number of concave portions of the contour
9. `symmetry`: nucleus symmetry measure
10. `fractal dimension`: "coastline approximation" - 1

For each of these ten properties, three summary metrics are recorded:
- **Mean** (features 1–10)
- **Standard Error** (features 11–20)
- **Worst / Largest Value** (features 21–30)
Totalling 30 numerical input dimensions.

## How to Access and Load
The dataset is loaded either through `scikit-learn` or via the local pre-processed CSV file:
```python
# Option 1: Via scikit-learn
from sklearn.datasets import load_breast_cancer
data = load_breast_cancer()
X = data.data
# Malignant positive class (1):
y = (data.target == 0).astype(int)

# Option 2: Via local processed CSV
import pandas as pd
df = pd.read_csv("data/breast_cancer_processed.csv")
X = df.drop(columns=['target'])
y = df['target']
```
