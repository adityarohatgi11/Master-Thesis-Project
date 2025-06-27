# Manual Data Organization Guide

After running the reorganization script, you'll need to manually organize the files from the `Project_Data/` and `Project_Data_14Yr/` folders. Here's a detailed guide:

## Step 1: Organize Raw Data Files

### Carbon Price Data
Move these files to `02_Data/Raw_Data/Carbon_Prices/`:
```
Project_Data/Carbon Emissions Futures Historical Data (Daily).csv
→ 02_Data/Raw_Data/Carbon_Prices/Carbon_Emissions_Futures_Historical_Data_Daily.csv

Project_Data_14Yr/Carbon Emissions Futures Historical Data (Daily)_14Yr.csv
→ 02_Data/Raw_Data/Carbon_Prices/Carbon_Emissions_Futures_Historical_Data_Daily_14Yr.csv
```

### ETF Data
Move these files to `02_Data/Raw_Data/ETF_Data/`:
```
Project_Data/ICLN_2018_2024_Daily.csv
Project_Data/XLE_2018_2024_Daily.csv
Project_Data/ICLN_holdings.csv
Project_Data/holdings-daily-us-en-xle.csv
```

### ESG Data
Move these files to `02_Data/Raw_Data/ESG_Data/`:
```
Project_Data/ICLN_ESG_Data.csv
Project_Data/XLE_ESG_Data.csv
Project_Data/Firm-Level_ESG_and_Abnormal_Return_Data.csv
Project_Data/morningstar_esg_scores.csv
```

### Macro Variables
Move these files to `02_Data/Raw_Data/Macro_Variables/`:
```
Project_Data/macro_control_variables.csv
Project_Data/vix_iv_proxy.csv
Project_Data/exh1_2018_2024_Daily.csv
```

### Policy Events
Move these files to `02_Data/Raw_Data/Policy_Events/`:
```
Project_Data/EU_Carbon_Policy_Events_2018_2025.csv
Project_Data/carbon_shock_event_dates.csv
Project_Data/EEUA_Shock_Annotated_Final.csv
```

## Step 2: Organize Processed Data

### Main Dataset (2018-2024)
Move these files to `02_Data/Processed_Data/Main_Dataset_2018_2024/`:
```
Project_Data/financial_data_2018_2024.csv
Project_Data/financial_data_returns_2018_2024.csv
Project_Data/financial_data_returns_shocks_2018_2024.csv
Project_Data/financial_data_returns_shocks_vol_2018_2024.csv
Project_Data/financial_data_garch_2018_2024.csv
Project_Data/financial_data_with_carbon_2018_2024.csv
Project_Data/financial_data_with_carbon_macro_2018_2024.csv
```

### Extended Dataset (2010-2024)
Move these files to `02_Data/Processed_Data/Extended_Dataset_2010_2024/`:
```
Project_Data_14Yr/financial_data_garch_2010_2024.csv
Project_Data_14Yr/financial_data_returns_2010_2024.csv
Project_Data_14Yr/financial_data_returns_shocks_2010_2024.csv
Project_Data_14Yr/financial_data_returns_shocks_vol_2010_2024.csv
Project_Data/financial_data_with_carbon_macro_2010_2024.csv
```

## Step 3: Organize Volatility Data

Move these files to `02_Data/Volatility_Data/`:
```
Project_Data/green_etf_volatility.csv
Project_Data/brown_etf_volatility.csv
Project_Data/green_brown_etf_returns.csv
Project_Data/icln_volatility_forecast_lstm_vs_garch.csv
Project_Data/xle_volatility_forecast_lstm_vs_garch.csv

# Rename these to avoid conflicts:
Project_Data_14Yr/icln_volatility_forecast_lstm_vs_garch.csv
→ 02_Data/Volatility_Data/icln_volatility_forecast_lstm_vs_garch_14yr.csv

Project_Data_14Yr/xle_volatility_forecast_lstm_vs_garch.csv
→ 02_Data/Volatility_Data/xle_volatility_forecast_lstm_vs_garch_14yr.csv
```

## Step 4: Organize Analysis Results

### Regression Results (Extended Period)
Move these files to `04_Results/Statistical_Analysis/Regression_Results/Extended_Period_2010_2024/`:
```
Project_Data_14Yr/regression_results_icln.txt
Project_Data_14Yr/regression_results_xle.txt
Project_Data_14Yr/regression_results_icln_vol.txt
Project_Data_14Yr/regression_results_xle_vol.txt
```

### Causal Analysis
Move these files to `04_Results/Statistical_Analysis/Causal_Analysis/`:
```
Project_Data/causal_forest_robustness_results.csv
Project_Data/icln_causal_forest_cates.csv
Project_Data/xle_causal_forest_cates.csv

# Rename these to avoid conflicts:
Project_Data_14Yr/icln_causal_forest_cates.csv
→ 04_Results/Statistical_Analysis/Causal_Analysis/icln_causal_forest_cates_14yr.csv

Project_Data_14Yr/xle_causal_forest_cates.csv
→ 04_Results/Statistical_Analysis/Causal_Analysis/xle_causal_forest_cates_14yr.csv

Project_Data_14Yr/causal_forest_robustness_results.csv
→ 04_Results/Statistical_Analysis/Causal_Analysis/causal_forest_robustness_results_14yr.csv
```

### Event Study
Move these files to `04_Results/Statistical_Analysis/Event_Study/`:
```
Project_Data/event_study_cumulative_returns.csv

# Rename these to avoid conflicts:
Project_Data_14Yr/event_matrix_icln_vol.csv
→ 04_Results/Statistical_Analysis/Event_Study/event_matrix_icln_vol_14yr.csv

Project_Data_14Yr/event_matrix_xle_vol.csv
→ 04_Results/Statistical_Analysis/Event_Study/event_matrix_xle_vol_14yr.csv

Project_Data_14Yr/event_study_cumulative_returns.csv
→ 04_Results/Statistical_Analysis/Event_Study/event_study_cumulative_returns_14yr.csv
```

### Volatility Models
Move these files to `04_Results/Statistical_Analysis/Volatility_Models/`:
```
Project_Data/volatility_model_performance_summary.csv
Project_Data/volatility_forecast_comparison_metrics.csv

# Rename these to avoid conflicts:
Project_Data_14Yr/volatility_model_performance_summary.csv
→ 04_Results/Statistical_Analysis/Volatility_Models/volatility_model_performance_summary_14yr.csv

Project_Data_14Yr/volatility_forecast_comparison_metrics.csv
→ 04_Results/Statistical_Analysis/Volatility_Models/volatility_forecast_comparison_metrics_14yr.csv
```

### Summary Results
Move these files to `04_Results/Statistical_Analysis/Summary_Results/`:
```
Project_Data/project_summary_results.csv
Project_Data/IRF_results_model_based.csv
```

## Step 5: Organize Figures

### Main Figures
Move these files to `04_Results/Figures/Main_Figures/`:
```
Project_Data/carbon_price_shocks.png
Project_Data/event_study_returns_shocks.png
Project_Data/event_study_volatility_shocks.png
Project_Data_14Yr/carbon_price_shocks.png (rename to carbon_price_shocks_14yr.png)
Project_Data_14Yr/event_study_returns_shocks.png (rename to event_study_returns_shocks_14yr.png)
Project_Data_14Yr/event_study_volatility_shocks.png (rename to event_study_volatility_shocks_14yr.png)
```

## Step 6: Clean Up Empty Directories

After moving all files, remove the empty directories:
```bash
rmdir Project_Data
rmdir Project_Data_14Yr
```

## Step 7: Update Code Paths

After reorganization, you'll need to update the file paths in your notebooks:

### Old Paths → New Paths
```python
# OLD:
df = pd.read_csv('/Users/user/Desktop/MSQE PROJECT/Project_Data/financial_data_returns_2018_2024.csv')

# NEW:
df = pd.read_csv('02_Data/Processed_Data/Main_Dataset_2018_2024/financial_data_returns_2018_2024.csv')
```

### Common Path Updates Needed:
1. **Main Analysis Notebook**: Update all `Project_Data/` paths to `02_Data/`
2. **14-Year Analysis Notebook**: Update all `Project_Data_14Yr/` paths to `02_Data/`
3. **Visualization Notebook**: Update figure save paths to `04_Results/Figures/`

## Step 8: Verify Organization

Check that each folder contains the expected files:

```bash
# Check data organization
ls 02_Data/Raw_Data/ETF_Data/
ls 02_Data/Processed_Data/Main_Dataset_2018_2024/
ls 02_Data/Processed_Data/Extended_Dataset_2010_2024/

# Check results organization
ls 04_Results/Statistical_Analysis/Regression_Results/Main_Period_2018_2024/
ls 04_Results/Statistical_Analysis/Regression_Results/Extended_Period_2010_2024/
ls 04_Results/Figures/Main_Figures/
```

## Benefits After Organization:

1. **Clear Data Lineage**: Raw → Processed → Results
2. **Easy Comparison**: Main vs. Extended analysis results side-by-side
3. **Reproducible**: Clear structure for rerunning analysis
4. **Scalable**: Easy to add new datasets or analysis periods
5. **Professional**: Industry-standard project organization

## Next Steps:
1. Run the reorganization script first
2. Follow this manual guide to organize data files
3. Update all notebook file paths
4. Test that analyses run correctly
5. Create documentation for your specific variable definitions
6. Add version control (git) if needed 