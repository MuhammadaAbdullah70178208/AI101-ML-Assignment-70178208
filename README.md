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

## Tasks Summary
| Pool | Task ID | Task Description | Dataset | Primary Metric | Notebook Link | Report PDF |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Pool A (Numerical)** | **A1** | Breast Cancer Diagnosis from Cell-Nucleus Measurements | Breast Cancer Wisconsin (Diagnostic) | Recall, F1, ROC-AUC | [A1_notebook.ipynb](A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb) | [70178208_A1_Report.pdf](A1_Breast_Cancer_Diagnosis/report/70178208_A1_Report.pdf) |
| **Pool B (Mixed: Num+Text)** | **B1** | Fraudulent Job-Posting Detection | EMSCAD Kaggle Dataset | F1 (Fraud), PR-AUC | *(Available for Bonus / Extension)* | *(Available for Bonus / Extension)* |
| **Pool C (Seq2Seq)** | **C1** | English-to-Urdu Neural Machine Translation | OPUS-100 (en-ur) | BLEU, chrF | *(Available for Bonus / Extension)* | *(Available for Bonus / Extension)* |

---

## Theoretical Alignment with Course Modules
The experimental design, exploratory data analysis, data splitting, pipeline composition, and metric evaluations follow the pedagogical foundations established in:
- **Module 01 — Introduction to AI:**
  - Inductive concept learning vs. deductive learning.
  - Data science EDA principles: univariate analysis (histograms, box plots), bivariate correlation heatmaps, 5-number summaries.
  - Computer vision and statistical feature engineering: feature extraction, selection (filter vs. embedded), and transformation.
- **Module 02 — Basics of Machine Learning:**
  - Mathematical formulation of concept learning: finding hypothesis $h \approx f$ from training samples $D = \{(x_i, y_i)\}$.
  - The 4-Phase Machine Learning Cycle: Training Phase, Testing Phase (disjoint data constraint), Application Phase, and Feedback Phase.
  - Prevention of data leakage: encapsulation of `StandardScaler` inside `sklearn.pipeline.Pipeline` fitted strictly on training folds.
  - The 11-Step Framework for treating real-world tasks as ML problems.
  - Clinical decision threshold studies to address asymmetric real-world costs (False Negatives vs. False Positives).

---

## Repository Structure
```
AI101-ML-Assignment-70178208/
|-- README.md                                  <- Student details, task map, execution instructions
|-- AI_DISCLOSURE.md                           <- Mandatory AI tool usage disclosure
|-- requirements.txt                           <- Python environment dependencies
|-- .gitignore                                 <- Large files (>50MB), caches, virtualenvs
|-- A1_Breast_Cancer_Diagnosis/
|   |-- A1_notebook.ipynb                      <- Fully executed Jupyter notebook with saved outputs & plots
|   |-- experiment_results.json                <- Exact raw numerical outputs for report cross-verification
|   |-- eda_feature_summary.csv                <- Feature-wise statistical metrics
|   |-- data/
|   |   |-- README.md                          <- Dataset description, provenance, and license
|   |   `-- breast_cancer_processed.csv        <- Local processed CSV copy of the dataset
|   |-- figures/
|   |   |-- eda_distribution_and_correlation.png
|   |   |-- test_roc_and_confusion_matrix.png
|   |   |-- threshold_study_precision_recall.png
|   |   `-- feature_importance_comparison.png
|   `-- report/
|       |-- 70178208_A1_Report.pdf             <- 2-page double-column IEEE report (compiled)
|       `-- source/
|           |-- 70178208_A1_Report.tex         <- LaTeX source code
|           `-- 70178208_A1_Report.md          <- Markdown source representation
```

---

## How to Reproduce and Run
1. **Clone the repository:**
   ```bash
   git clone https://github.com/m-abdullah/AI101-ML-Assignment-70178208.git
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

4. **Launch and run the notebook:**
   ```bash
   jupyter notebook A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb
   ```
   *Select "Cell" -> "Run All" to reproduce all tables, cross-validation metrics, threshold studies, and figures from scratch.*
