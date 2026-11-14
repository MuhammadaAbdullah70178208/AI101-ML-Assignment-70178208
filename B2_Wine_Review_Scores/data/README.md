# Wine Magazine Critic-Score Dataset (Task B2)

## Dataset Overview
- **Name:** Wine Magazine Wine Reviews (WineMag benchmark subset)
- **Source:** Kaggle `winemag-data-130k-v2.csv` (zackthoutt/wine-deep-learning)
- **Target Variable:** `points` — Integer rating on the standard 100-point sommelier scale (range $[80, 100]$, mean $\approx 88.4$).
- **Modality:** Mixed Tabular (metadata/continuous price) + Unstructured Free-Text (sommelier tasting reviews).
- **Total Samples ($N$):** 5,000 deduplicated review records.

## Features and Attributes
1. **`country` (Categorical):** Country of origin (US, France, Italy, Spain, Portugal, Chile, Argentina, Australia, Germany, New Zealand).
2. **`variety` (Categorical):** Grape variety (e.g., Pinot Noir, Chardonnay, Cabernet Sauvignon, Syrah, etc.).
3. **`price` (Continuous, USD):** Bottle retail price, log-normally distributed with ~7% missing rate representative of production scraping anomalies.
4. **`description` (Unstructured Text):** Detailed sensory and tasting notes authored by professional wine critics.

## Data Preprocessing Protocol
- **Missing Value Strategy:** Missing prices imputed using the training-set median; zero data leakage across splits.
- **Continuous Transformations:** Skewed prices transformed via $\log(1 + \text{price})$ followed by standard z-score normalization.
- **Categorical Processing:** OneHotEncoder with `handle_unknown='ignore'` fitted strictly on training data.
- **Text Feature Extraction:** Sub-linear TF-IDF vectorization with $(1, 2)$-gram collocations, english stop-word filtering, and maximum vocabulary capped at 3,000 features.
- **Partitioning:** Disjoint 70% Train ($N=3,500$), 15% Validation ($N=750$), and 15% Test ($N=750$).
