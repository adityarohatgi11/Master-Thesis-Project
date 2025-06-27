# MSQE Project Folder Reorganization Plan

## Current Issues Identified:
1. **Duplicate files** scattered across multiple directories
2. **Mixed file types** (data, code, outputs, documents) in same folders
3. **Inconsistent naming** conventions
4. **Root directory clutter** with output files and results
5. **Multiple versions** of similar files without clear versioning

## Proposed New Structure:

```
MSQE_PROJECT/
├── 01_Documentation/
│   ├── Final_Reports/
│   │   ├── Final_Project_Draft.pdf
│   │   ├── Final_Project_Draft.pptx
│   │   └── README_Project_Summary.md
│   ├── Presentations/
│   │   ├── Final_Presentation/
│   │   │   ├── MSQE_Project_Draft_PPT.pdf
│   │   │   └── MSQE_Project_Draft_PPT.pptx
│   │   └── Progress_Updates/
│   │       └── Mid_Point_Update_MSQE_Project.pdf
│   ├── Proposal/
│   │   ├── Project_Proposal_Final.pdf
│   │   └── Project_Proposal_Final.docx
│   └── Literature/
│       └── Research_Papers/
│           └── (academic papers)
│
├── 02_Data/
│   ├── Raw_Data/
│   │   ├── Carbon_Prices/
│   │   │   ├── Carbon_Emissions_Futures_Historical_Data_Daily.csv
│   │   │   └── Carbon_Emissions_Futures_Historical_Data_Daily_14Yr.csv
│   │   ├── ETF_Data/
│   │   │   ├── ICLN_2018_2024_Daily.csv
│   │   │   ├── XLE_2018_2024_Daily.csv
│   │   │   ├── ICLN_holdings.csv
│   │   │   └── holdings-daily-us-en-xle.csv
│   │   ├── ESG_Data/
│   │   │   ├── ICLN_ESG_Data.csv
│   │   │   ├── XLE_ESG_Data.csv
│   │   │   ├── Firm-Level_ESG_and_Abnormal_Return_Data.csv
│   │   │   └── morningstar_esg_scores.csv
│   │   ├── Macro_Variables/
│   │   │   ├── macro_control_variables.csv
│   │   │   ├── vix_iv_proxy.csv
│   │   │   └── exh1_2018_2024_Daily.csv
│   │   └── Policy_Events/
│   │       ├── EU_Carbon_Policy_Events_2018_2025.csv
│   │       ├── carbon_shock_event_dates.csv
│   │       └── EEUA_Shock_Annotated_Final.csv
│   │
│   ├── Processed_Data/
│   │   ├── Main_Dataset_2018_2024/
│   │   │   ├── financial_data_2018_2024.csv
│   │   │   ├── financial_data_returns_2018_2024.csv
│   │   │   ├── financial_data_returns_shocks_2018_2024.csv
│   │   │   ├── financial_data_returns_shocks_vol_2018_2024.csv
│   │   │   ├── financial_data_garch_2018_2024.csv
│   │   │   ├── financial_data_with_carbon_2018_2024.csv
│   │   │   └── financial_data_with_carbon_macro_2018_2024.csv
│   │   └── Extended_Dataset_2010_2024/
│   │       ├── financial_data_garch_2010_2024.csv
│   │       ├── financial_data_returns_2010_2024.csv
│   │       ├── financial_data_returns_shocks_2010_2024.csv
│   │       ├── financial_data_returns_shocks_vol_2010_2024.csv
│   │       └── financial_data_with_carbon_macro_2010_2024.csv
│   │
│   └── Volatility_Data/
│       ├── green_etf_volatility.csv
│       ├── brown_etf_volatility.csv
│       ├── green_brown_etf_returns.csv
│       ├── icln_volatility_forecast_lstm_vs_garch.csv
│       └── xle_volatility_forecast_lstm_vs_garch.csv
│
├── 03_Code/
│   ├── Main_Analysis/
│   │   ├── Main_Code_Project.ipynb (Main 2018-2024 analysis)
│   │   ├── Main_Code_Project_14Yr.ipynb (Extended 2010-2024 analysis)
│   │   └── data_agg.ipynb (Data aggregation script)
│   ├── Visualization/
│   │   └── presentation_plots.ipynb
│   └── Utils/
│       └── (helper functions if separated)
│
├── 04_Results/
│   ├── Statistical_Analysis/
│   │   ├── Regression_Results/
│   │   │   ├── Main_Period_2018_2024/
│   │   │   │   ├── regression_results_icln.txt
│   │   │   │   ├── regression_results_xle.txt
│   │   │   │   ├── regression_results_icln_vol.txt
│   │   │   │   └── regression_results_xle_vol.txt
│   │   │   └── Extended_Period_2010_2024/
│   │   │       ├── regression_results_icln.txt
│   │   │       ├── regression_results_xle.txt
│   │   │       ├── regression_results_icln_vol.txt
│   │   │       └── regression_results_xle_vol.txt
│   │   ├── Causal_Analysis/
│   │   │   ├── causal_forest_robustness_results.csv
│   │   │   ├── icln_causal_forest_cates.csv
│   │   │   └── xle_causal_forest_cates.csv
│   │   ├── Event_Study/
│   │   │   ├── event_study_cumulative_returns.csv
│   │   │   ├── event_matrix_icln_vol.csv
│   │   │   └── event_matrix_xle_vol.csv
│   │   ├── Volatility_Models/
│   │   │   ├── volatility_model_performance_summary.csv
│   │   │   └── volatility_forecast_comparison_metrics.csv
│   │   └── Summary_Results/
│   │       ├── project_summary_results.csv
│   │       └── IRF_results_model_based.csv
│   │
│   └── Figures/
│       ├── Main_Figures/
│       │   ├── carbon_price_shocks.png
│       │   ├── event_study_returns_shocks.png
│       │   ├── event_study_volatility_shocks.png
│       │   └── cate_distribution_icln_xle.png
│       └── Additional_Output/
│           ├── output1.png
│           ├── output2.png
│           ├── output3.png
│           ├── output4.png
│           └── output5.png
│
├── 05_Archive/
│   ├── Duplicates/
│   │   └── (files that are duplicates but kept for reference)
│   ├── Old_Versions/
│   │   └── (previous versions of analysis)
│   └── Temp_Files/
│       ├── .DS_Store (delete these)
│       └── script.docx (unclear purpose)
│
└── 06_Admin/
    ├── Data_Dictionary.md
    ├── Variable_Definitions.md
    ├── Analysis_Workflow.md
    └── File_Inventory.csv
```

## Implementation Steps:

### Step 1: Create New Directory Structure
```bash
mkdir -p 01_Documentation/{Final_Reports,Presentations/{Final_Presentation,Progress_Updates},Proposal,Literature/Research_Papers}
mkdir -p 02_Data/{Raw_Data/{Carbon_Prices,ETF_Data,ESG_Data,Macro_Variables,Policy_Events},Processed_Data/{Main_Dataset_2018_2024,Extended_Dataset_2010_2024},Volatility_Data}
mkdir -p 03_Code/{Main_Analysis,Visualization,Utils}
mkdir -p 04_Results/{Statistical_Analysis/{Regression_Results/{Main_Period_2018_2024,Extended_Period_2010_2024},Causal_Analysis,Event_Study,Volatility_Models,Summary_Results},Figures/{Main_Figures,Additional_Output}}
mkdir -p 05_Archive/{Duplicates,Old_Versions,Temp_Files}
mkdir -p 06_Admin
```

### Step 2: File Movement Plan

#### Clean Up (DELETE):
- `.DS_Store` files (system files)
- `Project_Data.zip` (redundant if extracted)

#### Move to Documentation:
- `Final_Project_Draft.pdf` → `01_Documentation/Final_Reports/`
- `Final_Project_Draft.pptx` → `01_Documentation/Final_Reports/`
- `MSQE_Project_Draft_PPT.*` → `01_Documentation/Presentations/Final_Presentation/`
- `Mid_Point_Update_MSQE_Project.pdf` → `01_Documentation/Presentations/Progress_Updates/`
- `Proposal/*` → `01_Documentation/Proposal/`
- `Research Papers/*` → `01_Documentation/Literature/Research_Papers/`

#### Move to Data:
- Organize all `Project_Data/*` files into appropriate Raw_Data subdirectories
- Move processed datasets to `02_Data/Processed_Data/`

#### Move to Code:
- `Main_Code_Project.ipynb` → `03_Code/Main_Analysis/`
- `presentation_plots (2).ipynb` → `03_Code/Visualization/presentation_plots.ipynb`
- `Project_Data_14Yr/Main_Code_Project_14Yr.ipynb` → `03_Code/Main_Analysis/`

#### Move to Results:
- All regression result `.txt` files → `04_Results/Statistical_Analysis/Regression_Results/`
- All `.png` files → `04_Results/Figures/`
- All analysis result `.csv` files → appropriate `04_Results/Statistical_Analysis/` subdirectories

### Step 3: Create Documentation Files

#### Data Dictionary (`06_Admin/Data_Dictionary.md`):
Document all variables, their sources, and transformations

#### Analysis Workflow (`06_Admin/Analysis_Workflow.md`):
Step-by-step analysis procedure documentation

#### File Inventory (`06_Admin/File_Inventory.csv`):
Complete catalog of all files with descriptions

### Step 4: Standardize Naming Conventions

#### Current Issues:
- Mixed case and inconsistent separators
- Non-descriptive names like "output1.png"
- Spaces in filenames

#### Proposed Convention:
- Use snake_case for data files
- Use PascalCase for documents
- Include date/version in filename when relevant
- Descriptive names for all outputs

### Step 5: Version Control Setup (Optional)
Consider initializing a git repository with proper .gitignore for:
- Large data files
- System files (.DS_Store)
- Temporary outputs

## Benefits of This Structure:

1. **Clear Separation**: Data, code, results, and documentation are clearly separated
2. **Logical Grouping**: Related files are grouped together
3. **Scalable**: Easy to add new analyses or datasets
4. **Professional**: Industry-standard project structure
5. **Reproducible**: Clear workflow and file organization
6. **Collaborative**: Easy for others to understand and contribute
7. **Archive-Ready**: Proper structure for long-term storage

## Next Steps:
1. Backup current folder before reorganization
2. Create new structure
3. Move files systematically
4. Update all code file paths
5. Test that all analyses still run
6. Create documentation files
7. Remove redundant/temporary files 