@echo off
set /p REPO_URL="Enter your GitHub Repository URL (or press Enter to skip remote push): "
set /p STUDENT_NAME="Enter your Full Name [Muhammad Abdullah]: "
if "%STUDENT_NAME%"=="" set STUDENT_NAME=Muhammad Abdullah
set /p STUDENT_EMAIL="Enter your Email [70178208@student.uol.edu.pk]: "
if "%STUDENT_EMAIL%"=="" set STUDENT_EMAIL=70178208@student.uol.edu.pk

echo.
echo Initializing Git repository...
git init
git config user.name "%STUDENT_NAME%"
git config user.email "%STUDENT_EMAIL%"

echo.
echo Creating 5 progressive commits for Task A1...
git add .gitignore requirements.txt README.md AI_DISCLOSURE.md setup_git_and_submit.bat
git commit -m "Initialize project structure, requirements, and AI disclosure"

git add A1_Breast_Cancer_Diagnosis/data/ A1_Breast_Cancer_Diagnosis/eda_feature_summary.csv A1_Breast_Cancer_Diagnosis/figures/eda_distribution_and_correlation.png
git commit -m "A1: add dataset documentation, processed data, and EDA correlation analysis"

git add A1_Breast_Cancer_Diagnosis/experiment_results.json A1_Breast_Cancer_Diagnosis/figures/test_roc_and_confusion_matrix.png
git commit -m "A1: implement leakage-free pipelines, 5-fold CV hyperparameter tuning, and ROC evaluation"

git add A1_Breast_Cancer_Diagnosis/figures/threshold_study_precision_recall.png A1_Breast_Cancer_Diagnosis/figures/feature_importance_comparison.png
git commit -m "A1: complete clinical threshold study (Recall >= 0.95) and multicollinearity ablation"

git add A1_Breast_Cancer_Diagnosis/A1_notebook.ipynb A1_Breast_Cancer_Diagnosis/report/
git commit -m "A1: generate executed notebook with all outputs and 2-page IEEE report source"

echo.
echo Tagging final submission...
git tag -a submission -m "Final submission - AI101 ML Assignment"

echo.
echo ----------------------------------------------------
git log --oneline
echo ----------------------------------------------------
echo.

if not "%REPO_URL%"=="" (
    echo Linking to remote repository: %REPO_URL%
    git remote add origin %REPO_URL%
    git branch -M main
    git push -u origin main
    git push origin submission
    echo.
    echo Successfully pushed to GitHub!
) else (
    echo.
    echo Local commits and submission tag are ready!
    echo When ready to push to GitHub, run:
    echo   git remote add origin ^<your-github-repo-url^>
    echo   git branch -M main
    echo   git push -u origin main
    echo   git push origin submission
)

pause
