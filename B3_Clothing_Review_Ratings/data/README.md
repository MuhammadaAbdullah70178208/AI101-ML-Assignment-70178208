# Women's E-Commerce Clothing Reviews Dataset (Task B3)

## Dataset Overview
- **Name:** Women's E-Commerce Clothing Reviews
- **Source:** Kaggle (nicapotato/womens-ecommerce-clothing-reviews)
- **Modality:** Mixed Tabular (customer age, department/class categories, feedback votes) + Free-form Customer Reviews (Title + Review Text).
- **Target Variable:** `Rating` (1 to 5 integer star ratings).
- **Secondary Target (Re-framing):** `Sentiment` (3-class: Negative $\in \{1, 2\}$, Neutral $\in \{3\}$, Positive $\in \{4, 5\}$).
- **Total Samples ($N$):** 5,000 consumer review records.

## Features and Attributes
1. **`Age` (Numeric):** Reviewer age (continuous, range 18-85).
2. **`Department Name` (Categorical):** High-level clothing category (`Dresses`, `Tops`, `Bottoms`, `Intimate`, `Jackets`).
3. **`Class Name` (Categorical):** Granular subcategory (e.g. `Blouses`, `Knits`, `Pants`, `Jeans`, `Dresses`, `Outerwear`).
4. **`Positive Feedback Count` (Numeric):** Count of other customers who voted the review helpful.
5. **`Title` (Text):** Short review headline.
6. **`Review Text` (Text):** Unstructured long-form customer critique.
7. **`Full_Text` (Engineered Text):** Concatenation of Title and Review Text.

## Critical Target Leakage Precaution
- **Target Leakage Warning:** The original dataset contains `Recommended IND` (binary 0/1 indicator). Because recommending an item is almost completely collinear with high star ratings (4-5 stars), including `Recommended IND` constitutes severe target leakage. In strict compliance with course Module 02 guidelines, **`Recommended IND` is permanently excluded** from all input feature sets.

## Splitting Protocol
- Disjoint stratified partitioning: 70% Train ($N=3,500$), 15% Validation ($N=750$), 15% Test ($N=750$).
- Stratification performed across the 5 star ratings.
- Vectorizers and scalers fitted strictly on the training partition.
