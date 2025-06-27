#!/bin/bash

# MSQE Project Folder Reorganization Script
# Run this script from the project root directory

echo "Starting MSQE Project Folder Reorganization..."

# Step 1: Create backup
echo "Creating backup..."
cp -R . ../MSQE_PROJECT_BACKUP_$(date +%Y%m%d_%H%M%S)
echo "Backup created successfully"

# Step 2: Create new directory structure
echo "Creating new directory structure..."

mkdir -p 01_Documentation/{Final_Reports,Presentations/{Final_Presentation,Progress_Updates},Proposal,Literature/Research_Papers}
mkdir -p 02_Data/{Raw_Data/{Carbon_Prices,ETF_Data,ESG_Data,Macro_Variables,Policy_Events},Processed_Data/{Main_Dataset_2018_2024,Extended_Dataset_2010_2024},Volatility_Data}
mkdir -p 03_Code/{Main_Analysis,Visualization,Utils}
mkdir -p 04_Results/{Statistical_Analysis/{Regression_Results/{Main_Period_2018_2024,Extended_Period_2010_2024},Causal_Analysis,Event_Study,Volatility_Models,Summary_Results},Figures/{Main_Figures,Additional_Output}}
mkdir -p 05_Archive/{Duplicates,Old_Versions,Temp_Files}
mkdir -p 06_Admin

echo "Directory structure created successfully"

# Step 3: Move Documentation files
echo "Moving documentation files..."

# Final reports
mv Final_Project_Draft.pdf 01_Documentation/Final_Reports/ 2>/dev/null
mv Final_Project_Draft.pptx 01_Documentation/Final_Reports/ 2>/dev/null

# Presentations
mv MSQE_Project_Draft_PPT.pdf 01_Documentation/Presentations/Final_Presentation/ 2>/dev/null
mv MSQE_Project_Draft_PPT.pptx 01_Documentation/Presentations/Final_Presentation/ 2>/dev/null
mv Mid_Point_Update_MSQE_Project.pdf 01_Documentation/Presentations/Progress_Updates/ 2>/dev/null

# Proposal and research papers
if [ -d "Proposal" ]; then
    mv Proposal/* 01_Documentation/Proposal/ 2>/dev/null
    rmdir Proposal 2>/dev/null
fi

if [ -d "Research Papers" ]; then
    mv "Research Papers"/* 01_Documentation/Literature/Research_Papers/ 2>/dev/null
    rmdir "Research Papers" 2>/dev/null
fi

echo "Documentation files moved successfully"

# Step 4: Move Code files
echo "Moving code files..."

mv Main_Code_Project.ipynb 03_Code/Main_Analysis/ 2>/dev/null
mv "presentation_plots (2).ipynb" 03_Code/Visualization/presentation_plots.ipynb 2>/dev/null

# Move 14-year analysis notebook
if [ -f "Project_Data_14Yr/Main_Code_Project_14Yr.ipynb" ]; then
    mv Project_Data_14Yr/Main_Code_Project_14Yr.ipynb 03_Code/Main_Analysis/ 2>/dev/null
fi

# Move data aggregation notebook
if [ -f "Project_Data/data_agg.ipynb" ]; then
    mv Project_Data/data_agg.ipynb 03_Code/Main_Analysis/ 2>/dev/null
fi

echo "Code files moved successfully"

# Step 5: Move Results files
echo "Moving results files..."

# Regression results - Main period
mv regression_results_icln.txt 04_Results/Statistical_Analysis/Regression_Results/Main_Period_2018_2024/ 2>/dev/null
mv regression_results_xle.txt 04_Results/Statistical_Analysis/Regression_Results/Main_Period_2018_2024/ 2>/dev/null
mv regression_results_icln_vol.txt 04_Results/Statistical_Analysis/Regression_Results/Main_Period_2018_2024/ 2>/dev/null
mv regression_results_xle_vol.txt 04_Results/Statistical_Analysis/Regression_Results/Main_Period_2018_2024/ 2>/dev/null

# Event study matrices
mv event_matrix_icln_vol.csv 04_Results/Statistical_Analysis/Event_Study/ 2>/dev/null
mv event_matrix_xle_vol.csv 04_Results/Statistical_Analysis/Event_Study/ 2>/dev/null

# Figures - Main figures
mv carbon_price_shocks.png 04_Results/Figures/Main_Figures/ 2>/dev/null
mv event_study_returns_shocks.png 04_Results/Figures/Main_Figures/ 2>/dev/null
mv event_study_volatility_shocks.png 04_Results/Figures/Main_Figures/ 2>/dev/null
mv cate_distribution_icln_xle.png 04_Results/Figures/Main_Figures/ 2>/dev/null

# Additional output figures
mv output1.png 04_Results/Figures/Additional_Output/ 2>/dev/null
mv output2.png 04_Results/Figures/Additional_Output/ 2>/dev/null
mv output3.png 04_Results/Figures/Additional_Output/ 2>/dev/null
mv output4.png 04_Results/Figures/Additional_Output/ 2>/dev/null
mv output5.png 04_Results/Figures/Additional_Output/ 2>/dev/null

echo "Results files moved successfully"

# Step 6: Clean up and archive
echo "Cleaning up and archiving..."

# Move unclear files to archive
mv script.docx 05_Archive/Temp_Files/ 2>/dev/null

# Remove system files
find . -name ".DS_Store" -delete 2>/dev/null
rm -f Project_Data.zip 2>/dev/null

echo "Cleanup completed"

echo "Reorganization completed successfully!"
echo ""
echo "Your original files have been backed up to ../MSQE_PROJECT_BACKUP_[timestamp]" 