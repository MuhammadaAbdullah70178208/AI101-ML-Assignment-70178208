# AI Use Disclosure

I used **Google Antigravity / Gemini 3.8 Flash** for **orchestrating experiment pipelines across three data modalities (Pool A, Pool B, Pool C), debugging Windows environment constraints, scaffolding IEEE two-column report formatting, and verifying mathematical formulations against course slides (Modules 01 and 02)**. 

The following parts were generated or substantially assisted by AI:
- `A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb`: Automated scaffolding of Pipeline construction, GridSearchCV parameter dictionaries, and base64 notebook serialization.
- `B1_Fake_Job_Postings/B1_notebook.ipynb`: Multi-modal `ColumnTransformer` feature engineering combining TF-IDF and OneHotEncoder, and modality ablation testing.
- `C1_English_to_Urdu_NMT/C1_notebook.ipynb`: Seq2Seq PyTorch architecture scaffolding with Bahdanau additive attention, greedy vs. beam search ($k=4$) decoding, and attention heatmaps.
- Scientific report source templates (`70178208_A1_Report.tex`, `70178208_B1_Report.tex`, `70178208_C1_Report.tex`) following IEEE conference guidelines.

I verified this content by **re-running all code within Python 3.11/3.14, validating all outputs against the 11-step machine learning framework from Module 02 slides (Slides 132–195), confirming zero data leakage across stratified splits, and verifying that every numerical value in each report originates directly from the corresponding `experiment_results.json`**. 

All experiments, results, and analysis in this repository were produced and checked by me, and I take full responsibility for this work.
