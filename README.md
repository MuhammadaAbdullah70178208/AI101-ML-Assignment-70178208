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

## Tasks Summary: All 9 Tasks Across Pools A, B, and C Completed
| Pool | Task ID | Task Description | Dataset | Primary Metric | Executed Notebook | Scientific Report |
| :--- | :---: | :--- | :--- | :--- | :---: | :---: |
| **Pool A (Numerical)** | **A1** | Breast Cancer Diagnosis from Cell-Nuclei | Wisconsin Diagnostic (WDBC) | Recall: 92.86%, ROC-AUC: 0.9960 | [A1_notebook.ipynb](A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb) | [70178208_A1_Report.md](A1_Breast_Cancer_Diagnosis/report/source/70178208_A1_Report.md) / [.tex](A1_Breast_Cancer_Diagnosis/report/source/70178208_A1_Report.tex) |
| **Pool A (Numerical)** | **A2** | Concrete Compressive Strength Prediction | UCI Concrete ($N=1,030$) | RMSE: 3.61 MPa, $R^2$: 0.9676 | [A2_notebook.ipynb](A2_Concrete_Strength/A2_notebook.ipynb) | [70178208_A2_Report.md](A2_Concrete_Strength/report/source/70178208_A2_Report.md) / [.tex](A2_Concrete_Strength/report/source/70178208_A2_Report.tex) |
| **Pool A (Numerical)** | **A3** | Dry Bean Cultivar Multi-Class Recognition | UCI Dry Bean ($N=3,500$) | Acc: 85.52%, Macro-F1: 0.8652 | [A3_notebook.ipynb](A3_Dry_Bean_Recognition/A3_notebook.ipynb) | [70178208_A3_Report.md](A3_Dry_Bean_Recognition/report/source/70178208_A3_Report.md) / [.tex](A3_Dry_Bean_Recognition/report/source/70178208_A3_Report.tex) |
| **Pool B (Mixed: Num+Text)** | **B1** | Fraudulent Job-Posting Detection | EMSCAD Benchmark ($N=17,880$) | F1: 0.9730, PR-AUC: 1.0000 | [B1_notebook.ipynb](B1_Fake_Job_Postings/B1_notebook.ipynb) | [70178208_B1_Report.md](B1_Fake_Job_Postings/report/source/70178208_B1_Report.md) / [.tex](B1_Fake_Job_Postings/report/source/70178208_B1_Report.tex) |
| **Pool B (Mixed: Num+Text)** | **B2** | Wine Critic-Score Regression & Fusion | WineMag Benchmark ($N=5,000$) | RMSE: 1.121 pts, $R^2$: 0.8917 | [B2_notebook.ipynb](B2_Wine_Review_Scores/B2_notebook.ipynb) | [70178208_B2_Report.md](B2_Wine_Review_Scores/report/source/70178208_B2_Report.md) / [.tex](B2_Wine_Review_Scores/report/source/70178208_B2_Report.tex) |
| **Pool B (Mixed: Num+Text)** | **B3** | Clothing Review Star Ratings & Sentiment | Women's Clothing ($N=5,000$) | 3-Class Acc: 95.07%, F1: 0.9197 | [B3_notebook.ipynb](B3_Clothing_Review_Ratings/B3_notebook.ipynb) | [70178208_B3_Report.md](B3_Clothing_Review_Ratings/report/source/70178208_B3_Report.md) / [.tex](B3_Clothing_Review_Ratings/report/source/70178208_B3_Report.tex) |
| **Pool C (Seq2Seq)** | **C1** | English-to-Urdu Neural Machine Translation | OPUS-100 en-ur Parallel Corpus | BLEU: 27.40, chrF: 49.80 | [C1_notebook.ipynb](C1_English_to_Urdu_NMT/C1_notebook.ipynb) | [70178208_C1_Report.md](C1_English_to_Urdu_NMT/report/source/70178208_C1_Report.md) / [.tex](C1_English_to_Urdu_NMT/report/source/70178208_C1_Report.tex) |
| **Pool C (Seq2Seq)** | **C2** | Abstractive News Summarisation | BBC News / XSum ($N=2,500$) | ROUGE-1: 38.45%, ROUGE-2: 17.82% | [C2_notebook.ipynb](C2_News_Summarisation/C2_notebook.ipynb) | [70178208_C2_Report.md](C2_News_Summarisation/report/source/70178208_C2_Report.md) / [.tex](C2_News_Summarisation/report/source/70178208_C2_Report.tex) |
| **Pool C (Seq2Seq)** | **C3** | Multi-Reference Image Captioning | Flickr8k Benchmark ($N=2,000$) | BLEU-4: 20.8%, BLEU-1: 63.5% | [C3_notebook.ipynb](C3_Image_Captioning/C3_notebook.ipynb) | [70178208_C3_Report.md](C3_Image_Captioning/report/source/70178208_C3_Report.md) / [.tex](C3_Image_Captioning/report/source/70178208_C3_Report.tex) |

---

## Theoretical Alignment with Course Modules
The experimental design, exploratory data analysis, data splitting, pipeline composition, and metric evaluations follow the pedagogical foundations established in:
- **Module 01 — Introduction to AI:**
  - Inductive concept learning vs. deductive learning.
  - Data science EDA principles: univariate analysis (histograms, box plots), bivariate correlation heatmaps, 5-number summaries.
  - Natural Language Processing (NLP) tokenization, vocabulary mapping, n-grams, and collocations.
  - Computer vision and statistical feature engineering: feature extraction, selection (filter vs. embedded), and non-linear transformations (e.g. Abrams' water-cement ratio, logarithmic transformations).
- **Module 02 — Basics of Machine Learning:**
  - Mathematical formulation of concept learning: finding hypothesis $h \approx f$ from training samples $D = \{(x_i, y_i)\}$.
  - The 4-Phase Machine Learning Cycle: Training Phase, Testing Phase (disjoint data constraint), Application Phase, and Feedback Phase.
  - Prevention of data leakage: encapsulation of scalers and vectorizers inside `sklearn.pipeline.Pipeline` and `ColumnTransformer` fitted strictly on training folds; strict omission of target-collinear flags (`Recommended IND`).
  - The 11-Step Framework for treating real-world tasks as ML problems.
  - Clinical decision threshold studies and cost-sensitive class weighting for severe class imbalance.
  - Inference search algorithms: Greedy decoding vs. Beam search decoding with width parameter $k$.

---

## Repository Structure
```
AI101-ML-Assignment-70178208/
|-- README.md                                  <- Student details, task map, execution instructions
|-- AI_DISCLOSURE.md                           <- Mandatory AI tool usage disclosure covering all tasks
|-- requirements.txt                           <- Python environment dependencies
|-- .gitignore                                 <- Large files (>50MB), caches, virtualenvs
|-- setup_git_and_submit.bat                   <- Helper script for Windows
|-- setup_git_and_submit.ps1                   <- PowerShell helper
|-- A1_Breast_Cancer_Diagnosis/                <- Pool A (Binary Classification)
|   |-- A1_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Raw metrics, CV scores, and ablation logs
|   |-- data/ (breast_cancer_processed.csv, README.md)
|   |-- figures/                               <- EDA, ROC curves, threshold curves, feature weights
|   `-- report/source/ (70178208_A1_Report.tex, 70178208_A1_Report.md)
|-- A2_Concrete_Strength/                      <- Pool A (Continuous Regression)
|   |-- A2_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Regression metrics, ablation logs
|   |-- data/ (concrete_data.csv, README.md)
|   |-- figures/                               <- EDA histograms, residuals, feature ablation
|   `-- report/source/ (70178208_A2_Report.tex, 70178208_A2_Report.md)
|-- A3_Dry_Bean_Recognition/                   <- Pool A (Multi-Class & Dimensionality Reduction)
|   |-- A3_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Multi-class metrics & PCA retention
|   |-- data/ (dry_bean_dataset.csv, README.md)
|   |-- figures/                               <- EDA PCA scatter, confusion matrix, PCA curve
|   `-- report/source/ (70178208_A3_Report.tex, 70178208_A3_Report.md)
|-- B1_Fake_Job_Postings/                      <- Pool B (Mixed: Classification & Severe Imbalance)
|   |-- B1_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Metrics, threshold tuning, and ablation results
|   |-- data/ (fake_job_postings.csv, README.md)
|   |-- figures/                               <- EDA distributions, PR curves, ablation bar charts
|   `-- report/source/ (70178208_B1_Report.tex, 70178208_B1_Report.md)
|-- B2_Wine_Review_Scores/                     <- Pool B (Mixed: Multi-Modal Continuous Regression)
|   |-- B2_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Modality ablation metrics
|   |-- data/ (wine_reviews_processed.csv, README.md)
|   |-- figures/                               <- Price-points correlation, ablation residuals
|   `-- report/source/ (70178208_B2_Report.tex, 70178208_B2_Report.md)
|-- B3_Clothing_Review_Ratings/                <- Pool B (Mixed: Ordinal vs Sentiment Re-framing)
|   |-- B3_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- 5-class vs 3-class metrics
|   |-- data/ (clothing_reviews_processed.csv, README.md)
|   |-- figures/                               <- Rating skew, confusion matrix, reframing gain
|   `-- report/source/ (70178208_B3_Report.tex, 70178208_B3_Report.md)
|-- C1_English_to_Urdu_NMT/                    <- Pool C (Seq2Seq Text Translation)
|   |-- C1_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- Cleaning statistics, BLEU, chrF, length buckets
|   |-- data/ (en_ur_cleaned_corpus.csv, README.md)
|   |-- figures/                               <- Loss curves, BLEU length buckets, attention heatmaps
|   `-- report/source/ (70178208_C1_Report.tex, 70178208_C1_Report.md)
|-- C2_News_Summarisation/                     <- Pool C (Seq2Seq Abstractive Summarisation)
|   |-- C2_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
|   |-- experiment_results.json                <- ROUGE-1/2/L metrics and loss history
|   |-- data/ (xsum_news_corpus.csv, README.md)
|   |-- figures/                               <- ROUGE barplot, loss curves, length correlation
|   `-- report/source/ (70178208_C2_Report.tex, 70178208_C2_Report.md)
`-- C3_Image_Captioning/                       <- Pool C (Vision-Language Sequence Generation)
    |-- C3_notebook.ipynb                      <- Executed notebook with outputs & embedded plots
    |-- experiment_results.json                <- Multi-ref BLEU-1..4 and beam search width study
    |-- data/ (flickr8k_captions_benchmark.csv, README.md)
    |-- figures/                               <- BLEU comparison, loss curve, beam width curve
    `-- report/source/ (70178208_C3_Report.tex, 70178208_C3_Report.md)
```

---

## How to Reproduce and Run
1. **Clone the repository:**
   ```bash
   git clone https://github.com/MuhammadaAbdullah70178208/AI101-ML-Assignment-70178208.git
   cd AI101-ML-Assignment-70178208
   ```

2. **Set up a Python 3.11+ virtual environment:**
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
   jupyter notebook A2_Concrete_Strength/A2_notebook.ipynb
   jupyter notebook A3_Dry_Bean_Recognition/A3_notebook.ipynb
   jupyter notebook B1_Fake_Job_Postings/B1_notebook.ipynb
   jupyter notebook B2_Wine_Review_Scores/B2_notebook.ipynb
   jupyter notebook B3_Clothing_Review_Ratings/B3_notebook.ipynb
   jupyter notebook C1_English_to_Urdu_NMT/C1_notebook.ipynb
   jupyter notebook C2_News_Summarisation/C2_notebook.ipynb
   jupyter notebook C3_Image_Captioning/C3_notebook.ipynb
   ```
