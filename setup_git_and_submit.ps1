# PowerShell script to initialize git, make 5 progressive commits, tag final submission, and push to GitHub
param(
    [Parameter(Mandatory=$false)]
    [string]$GitHubRepoUrl = "https://github.com/MuhammadaAbdullah70178208/AI101-ML-Assignment-70178208.git",
    [string]$StudentName = "Muhammad Abdullah",
    [string]$StudentEmail = "70178208@student.uol.edu.pk"
)

Write-Host "Initializing Git Repository..." -ForegroundColor Cyan
git init
git config user.name "$StudentName"
git config user.email "$StudentEmail"

Write-Host "Creating 5 progressive commits for Task A1..." -ForegroundColor Yellow

# Commit 1
git add .gitignore requirements.txt README.md AI_DISCLOSURE.md
git commit -m "Initialize project structure, requirements, and AI disclosure"

# Commit 2
git add A1_Breast_Cancer_Diagnosis/data/ A1_Breast_Cancer_Diagnosis/eda_feature_summary.csv A1_Breast_Cancer_Diagnosis/figures/eda_distribution_and_correlation.png
git commit -m "A1: add dataset documentation, processed data, and EDA correlation analysis"

# Commit 3
git add A1_Breast_Cancer_Diagnosis/experiment_results.json A1_Breast_Cancer_Diagnosis/figures/test_roc_and_confusion_matrix.png
git commit -m "A1: implement leakage-free pipelines, 5-fold CV hyperparameter tuning, and ROC evaluation"

# Commit 4
git add A1_Breast_Cancer_Diagnosis/figures/threshold_study_precision_recall.png A1_Breast_Cancer_Diagnosis/figures/feature_importance_comparison.png
git commit -m "A1: complete clinical threshold study (Recall >= 0.95) and multicollinearity ablation"

# Commit 5
git add A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb A1_Breast_Cancer_Diagnosis/report/
git commit -m "A1: generate executed notebook with all outputs and 2-page IEEE report source"

# Tag submission
Write-Host "Tagging final submission..." -ForegroundColor Green
git tag -a submission -m "Final submission - AI101 ML Assignment"

Write-Host "`nGit log summary:" -ForegroundColor Cyan
git log --oneline

Write-Host "`nTo push to your remote GitHub repository, run:" -ForegroundColor Green
Write-Host "  git remote add origin $GitHubRepoUrl"
Write-Host "  git branch -M main"
Write-Host "  git push -u origin main"
Write-Host "  git push origin submission"
