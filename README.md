# AI-101: Introduction to Artificial Intelligence — Machine Learning Assignment

## Student Identification
| Field | Information |
| :--- | :--- |
| **Student Name** | Muhammad Abdullah |
| **Roll Number** | 70178208 |
| **Section** | BSRAI Semester 5 Section C |
| **Course** | Introduction to Artificial Intelligence (AI-101) |
| **Department** | Department of Intelligent Systems |
| **Institution** | The University of Lahore |
| **Course Instructor** | Dr. Muhammad Awais (AI Architect) |
| **Submission Deadline** | Monday, 30 November 2026 |

---

## Tasks Summary: All Three Modality Pools Completed
| Pool | Task ID | Task Description | Dataset | Primary Metric | Executed Notebook | Scientific Report |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Pool A (Numerical)** | **A1** | Breast Cancer Diagnosis from Cell-Nucleus Measurements | Breast Cancer Wisconsin (Diagnostic) | Recall, F1, ROC-AUC | [A1_notebook.ipynb](A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb) | [70178208_A1_Report.md](A1_Breast_Cancer_Diagnosis/report/source/70178208_A1_Report.md) / [.tex](A1_Breast_Cancer_Diagnosis/report/source/70178208_A1_Report.tex) |
| **Pool B (Mixed: Num+Text)** | **B1** | Fraudulent Job-Posting Detection | EMSCAD Benchmark Dataset | F1 (Fraud), PR-AUC | [B1_notebook.ipynb](B1_Fake_Job_Postings/B1_notebook.ipynb) | [70178208_B1_Report.md](B1_Fake_Job_Postings/report/source/70178208_B1_Report.md) / [.tex](B1_Fake_Job_Postings/report/source/70178208_B1_Report.tex) |
| **Pool C (Seq2Seq)** | **C1** | English-to-Urdu Neural Machine Translation | OPUS-100 (en-ur) Parallel Corpus | sacreBLEU, chrF | [C1_notebook.ipynb](C1_English_to_Urdu_NMT/C1_notebook.ipynb) | [70178208_C1_Report.md](C1_English_to_Urdu_NMT/report/source/70178208_C1_Report.md) / [.tex](C1_English_to_Urdu_NMT/report/source/70178208_C1_Report.tex) |

---

## Theoretical Alignment with Course Modules
The experimental design, exploratory data analysis, data splitting, pipeline composition, and metric evaluations follow the pedagogical foundations established in:
- **Module 01 — Introduction to AI:**
  - Inductive concept learning vs. deductive learning.
  - Data science EDA principles: univariate analysis (histograms, box plots), bivariate correlation heatmaps, 5-number summaries.
  - Natural Language Processing (NLP) tokenization, vocabulary mapping, n-grams, and collocations.
  - Computer vision and statistical feature engineering: feature extraction, selection (filter vs. embedded), and transformation.
- **Module 02 — Basics of Machine Learning:**
  - Mathematical formulation of concept learning: finding hypothesis $h \approx f$ from training samples $D = \{(x_i, y_i)\}$.
  - The 4-Phase Machine Learning Cycle: Training Phase, Testing Phase (disjoint data constraint), Application Phase, and Feedback Phase.
  - Prevention of data leakage: encapsulation of scalers and vectorizers inside `sklearn.pipeline.Pipeline` and `ColumnTransformer` fitted strictly on training folds.
  - The 11-Step Framework for treating real-world tasks as ML problems.
  - Clinical decision threshold studies and cost-sensitive class weighting for severe class imbalance.

---

## Repository Structure
```
AI101-ML-Assignment-70178208/
|-- README.md                                  <- Student details, task map, execution instructions
|-- AI_DISCLOSURE.md                           <- Mandatory AI tool usage disclosure
|-- requirements.txt                           <- Python environment dependencies
|-- .gitignore                                 <- Large files (>50MB), caches, virtualenvs
|-- setup_git_and_submit.bat                   <- Helper script for Windows
|-- setup_git_and_submit.ps1                   <- PowerShell helper
|-- A1_Breast_Cancer_Diagnosis/                <- Pool A (Numerical)
|   |-- A1_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Raw metrics, CV scores, and ablation logs
|   |-- data/ (breast_cancer_processed.csv, README.md)
|   |-- figures/                               <- EDA, ROC curves, threshold curves, feature weights
|   `-- report/source/ (70178208_A1_Report.tex, 70178208_A1_Report.md)
|-- B1_Fake_Job_Postings/                      <- Pool B (Mixed: Numeric + Text)
|   |-- B1_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Metrics, threshold tuning, and ablation results
|   |-- data/ (fake_job_postings.csv, README.md)
|   |-- figures/                               <- EDA distributions, PR curves, ablation bar charts
|   `-- report/source/ (70178208_B1_Report.tex, 70178208_B1_Report.md)
`-- C1_English_to_Urdu_NMT/                    <- Pool C (Seq2Seq Text-to-Text)
    |-- C1_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
    |-- experiment_results.json                <- Cleaning statistics, BLEU, chrF, length buckets
    |-- data/ (en_ur_cleaned_corpus.csv, README.md)
    |-- figures/                               <- Loss curves, BLEU length buckets, attention heatmaps
    `-- report/source/ (70178208_C1_Report.tex, 70178208_C1_Report.md)
```

---

## How to Reproduce and Run
1. **Clone the repository:**
   ```bash
   git clone https://github.com/MuhammadaAbdullah70178208/AI101-ML-Assignment-70178208.git
   cd AI101-ML-Assignment-70178208
   ```

2. **Set up a Python 3.11 virtual environment:**
   ```bash
   python -m venv venv
   # Windows:
   venv\Scripts\activate
   # Linux/macOS:
   source venv/bin/activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Launch any notebook:**
   ```bash
   jupyter notebook A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb
   jupyter notebook B1_Fake_Job_Postings/B1_notebook.ipynb
   jupyter notebook C1_English_to_Urdu_NMT/C1_notebook.ipynb
   ```
