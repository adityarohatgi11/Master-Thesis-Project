# Analysis Workflow

## Overview
This document outlines the complete analytical workflow for the carbon price shocks and ETF analysis project. Follow these steps to reproduce or extend the analysis.

## Phase 1: Data Preparation

### 1.1 Raw Data Collection
**Location**: `02_Data/Raw_Data/`

**Primary Data Sources**:
- ETF price data (ICLN, XLE) from financial data providers
- Carbon emissions futures (EUA) from European exchanges
- Control variables (VIX, Brent oil, Treasury rates)
- ESG ratings from Morningstar
- EU carbon policy event dates

**Quality Checks**:
- Verify date ranges and frequency consistency
- Check for missing values and data gaps
- Validate currency units and price scales

### 1.2 Data Cleaning and Processing
**Script**: `03_Code/Main_Analysis/data_agg.ipynb`

**Steps**:
1. Load raw price data and handle missing values
2. Calculate log returns: `ln(P_t/P_{t-1})`
3. Merge ETF data with carbon price data by date
4. Add control variables (VIX, oil, interest rates)
5. Create lagged variables and time-based features

**Output**: Clean datasets in `02_Data/Processed_Data/`

### 1.3 Shock Identification
**Method**: AR(5) residual-based approach

**Process**:
1. Fit AR(5) model to carbon return series
2. Extract residuals from the fitted model
3. Calculate shock threshold: 1.5 × standard deviation
4. Create binary shock indicator: `|residual| > threshold`
5. Validate shock dates against known policy events

**Output**: `carbon_shock` variable and event dates

## Phase 2: Statistical Analysis

### 2.1 Event Study Analysis
**Location**: `04_Results/Statistical_Analysis/Event_Study/`

**Methodology**:
1. Define event windows: [-10, +10] days around shock events
2. Calculate daily abnormal returns for each ETF
3. Compute cumulative abnormal returns (CAR)
4. Test statistical significance using t-tests
5. Visualize average CAR patterns

**Key Outputs**:
- Event study matrices for volatility analysis
- Cumulative return plots
- Statistical significance tests

### 2.2 Regression Analysis
**Location**: `04_Results/Statistical_Analysis/Regression_Results/`

**Model Specification**:
```
ETF_return_t = α + β₁×carbon_shock_t + β₂×VIX_t + β₃×Brent_t + β₄×DGS10_t + ε_t
```

**Estimation**:
- OLS with heteroscedasticity-robust standard errors (HC1)
- Separate models for ICLN and XLE
- Additional volatility models using realized volatility as dependent variable

**Diagnostics**:
- Test for multicollinearity (condition number)
- Check residual normality (Jarque-Bera test)
- Assess autocorrelation (Durbin-Watson statistic)

### 2.3 Causal Forest Analysis
**Location**: `04_Results/Statistical_Analysis/Causal_Analysis/`

**Methodology**:
1. Prepare treatment and outcome variables
2. Select relevant covariates (VIX, oil prices, etc.)
3. Train causal forest with cross-validation
4. Estimate Conditional Average Treatment Effects (CATE)
5. Conduct robustness checks with placebo tests

**Key Metrics**:
- Mean CATE for each ETF
- Statistical significance (t-statistics)
- Bootstrap confidence intervals
- Placebo test results

## Phase 3: Volatility Modeling

### 3.1 GARCH Models
**Location**: `04_Results/Statistical_Analysis/Volatility_Models/`

**Specification**: GARCH(1,1)
```
σ²_t = ω + α×ε²_{t-1} + β×σ²_{t-1}
```

**Implementation**:
1. Estimate GARCH parameters using maximum likelihood
2. Generate conditional volatility forecasts
3. Calculate model performance metrics (RMSE, MAE)
4. Conduct diagnostic tests (ARCH effects, normality)

### 3.2 LSTM Models
**Methodology**:
1. Prepare time series data with lookback windows
2. Scale data using MinMaxScaler
3. Design LSTM architecture (layers, neurons, dropout)
4. Train with train/validation split
5. Generate out-of-sample forecasts

**Architecture**:
- Input layer: Sequential price/return data
- LSTM layers: 50-100 neurons with dropout
- Dense output layer: Single volatility prediction
- Optimizer: Adam with learning rate scheduling

### 3.3 Model Comparison
**Metrics**:
- Root Mean Square Error (RMSE)
- Mean Absolute Error (MAE)
- Directional accuracy
- Diebold-Mariano test for forecast superiority

## Phase 4: Results Integration

### 4.1 Summary Statistics
**Location**: `04_Results/Statistical_Analysis/Summary_Results/`

**Compile**:
- Key regression coefficients and significance
- CATE estimates with confidence intervals
- Model performance comparisons
- Event study key findings

### 4.2 Visualization
**Script**: `03_Code/Visualization/presentation_plots.ipynb`

**Outputs**:
1. Carbon price shock identification plots
2. Event study cumulative return charts
3. CATE distribution visualizations
4. Volatility forecast comparison plots
5. ESG score distributions by ETF

### 4.3 Robustness Checks

**Extended Period Analysis**:
- Repeat all analyses using 2010-2024 data
- Compare results between periods
- Assess stability of findings

**Alternative Specifications**:
- Different shock thresholds (1.0σ, 2.0σ)
- Alternative control variables
- Different event windows

## Phase 5: Documentation and Reporting

### 5.1 Results Documentation
**Create**:
- Summary tables of key findings
- Statistical significance assessments
- Economic interpretation of coefficients
- Policy implications

### 5.2 Technical Documentation
**Update**:
- Data dictionary with all variables
- Code documentation and comments
- Methodology explanations
- Assumptions and limitations

## Quality Assurance

### Code Review Checklist
- [ ] All file paths use relative references
- [ ] Results are reproducible across runs
- [ ] Statistical tests are properly implemented
- [ ] Visualizations are clear and informative
- [ ] Documentation is complete and accurate

### Data Validation
- [ ] Sample sizes are consistent across analyses
- [ ] Date ranges align between datasets
- [ ] Missing value handling is appropriate
- [ ] Unit tests pass for key functions

### Statistical Validation
- [ ] Model assumptions are tested
- [ ] Significance levels are properly interpreted
- [ ] Multiple testing corrections applied where needed
- [ ] Economic significance assessed alongside statistical significance

## Software Requirements

### Python Environment
- pandas >= 1.3.0
- numpy >= 1.21.0
- scikit-learn >= 1.0.0
- tensorflow >= 2.6.0
- statsmodels >= 0.13.0
- matplotlib >= 3.4.0
- seaborn >= 0.11.0

### R Environment (if used)
- econocharts
- ggplot2
- dplyr
- forecast

## File Dependencies

### Input Dependencies
- Raw ETF price data
- Carbon futures price data
- Control variable data (VIX, oil, rates)
- ESG ratings data

### Output Dependencies
- All notebooks depend on processed data files
- Visualization scripts depend on results files
- Final reports depend on all analysis outputs

## Troubleshooting

### Common Issues
1. **Path errors**: Ensure working directory is project root
2. **Missing packages**: Install required Python/R packages
3. **Memory issues**: Large datasets may require chunking
4. **Convergence issues**: GARCH models may need different starting values

### Performance Optimization
- Use vectorized operations where possible
- Consider parallel processing for cross-validation
- Cache intermediate results for large computations
- Use appropriate data types (float32 vs float64)

## Version Control

### Recommended Workflow
1. Create feature branches for new analyses
2. Commit frequently with descriptive messages
3. Tag major versions and releases
4. Maintain separate branches for different data periods

### File Management
- Keep data files in .gitignore
- Version control only code and documentation
- Use relative paths for portability
- Document any manual data processing steps 