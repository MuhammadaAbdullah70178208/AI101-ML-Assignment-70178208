# AI Use Disclosure

I used **Google Antigravity / Gemini** for **orchestrating experiment pipelines across all three data modalities (Pool A, Pool B, Pool C), scaffolding IEEE two-column report templates, debugging environment execution, and verifying mathematical formulations against course slides (Modules 01 and 02)**. 

The following parts were assisted by AI:
- **Pool A (Numerical Modality):**
  - `A1_Breast_Cancer_Diagnosis`: Pipeline construction, threshold calibration ($T^* = 0.49$), collinear feature ablation, and diagnostic ROC/PR curve plotting.
  - `A2_Concrete_Strength`: Non-linear chemical feature engineering ($\text{water\_cement\_ratio}$, $\log(\text{age})$), polynomial regression pipeline, and residual diagnostics.
  - `A3_Dry_Bean_Recognition`: Multi-class morphological benchmarking (Multinomial LR, Balanced Weights, SVM RBF, Random Forest, MLP), 7x7 confusion matrix diagnostics, and PCA dimensionality retention analysis ($k \in \{2, 4, 8, 16\}$).
- **Pool B (Mixed: Tabular + Text Modality):**
  - `B1_Fake_Job_Postings`: Multi-modal `ColumnTransformer` feature engineering combining TF-IDF and OneHotEncoder, balanced class weighting under 1:21 imbalance, and text/tabular ablation.
  - `B2_Wine_Review_Scores`: Continuous price log-transformation, sommelier tasting text vectorization, and multi-modal feature fusion demonstrating 23.4% RMSE reduction.
  - `B3_Clothing_Review_Ratings`: Target leakage prevention (excluding `Recommended IND`), 5-class ordinal benchmarking, and 3-class sentiment re-framing yielding +7.84% Macro-F1 improvement.
- **Pool C (Sequence-to-Sequence Modality):**
  - `C1_English_to_Urdu_NMT`: 4-stage bilingual corpus cleaning, recurrent Seq2Seq with Bahdanau attention, beam search ($k=4$), sacreBLEU/chrF evaluation, and attention alignment heatmaps.
  - `C2_News_Summarisation`: Extreme document summarisation pipeline, Lead-1 extractive baseline evaluation, cross-entropy loss tracking, and ROUGE-1/2/L evaluation.
  - `C3_Image_Captioning`: CNN-LSTM merge architecture, multi-reference modified n-gram BLEU-1..4 scoring, and beam search width optimization ($k \in \{1, 3, 5, 8\}$).
- **Scientific Reports:** Scaffolding of IEEE conference format files (`70178208_*.tex` and `*.md`) for all 9 tasks.

I verified this content by **re-running all code within Python, validating all metrics against the 11-step machine learning framework from Module 02 slides, confirming zero data leakage across disjoint splits, and ensuring every reported statistic strictly matches its corresponding `experiment_results.json`**.

All experiments, results, figures, and analyses in this repository were produced, validated, and checked by Muhammad Abdullah (Roll No: 70178208), BSRAI Semester 5C.
