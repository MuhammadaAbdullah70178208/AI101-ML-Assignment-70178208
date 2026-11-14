# Real or Fake Job Postings (EMSCAD) Dataset

## Provenance & Overview
- **Dataset Title:** Employment Scam Aegean Dataset (EMSCAD)
- **Kaggle Source:** [shivamb/real-or-fake-fake-jobposting-prediction](https://www.kaggle.com/datasets/shivamb/real-or-fake-fake-jobposting-prediction)
- **Creators:** University of the Aegean (Laboratory of Information & Communication Systems Security)
- **License:** CC BY-NC-SA 4.0

## Dataset Properties
- **Total Samples:** 5,000 job postings (EMSCAD benchmark distribution)
- **Features:** 11 raw multi-modal columns:
  - **Free Text:** `title`, `company_profile`, `description`, `requirements`
  - **Categorical Metadata:** `employment_type`, `required_experience`, `required_education`
  - **Binary Flags:** `telecommuting`, `has_company_logo`, `has_questions`
- **Target Variable:** `fraudulent` (Binary: `1` = Fraudulent Scam, `0` = Genuine Posting)
- **Class Imbalance:** 95.2% Real (4,760 samples) vs. 4.8% Fraudulent (240 samples)

## Usage with ColumnTransformer
```python
from sklearn.compose import ColumnTransformer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.preprocessing import OneHotEncoder, StandardScaler

preprocessor = ColumnTransformer(transformers=[
    ('num', StandardScaler(), num_cols),
    ('cat', OneHotEncoder(handle_unknown='ignore'), cat_cols),
    ('txt', TfidfVectorizer(max_features=5000, ngram_range=(1, 2)), 'combined_text')
])
```
