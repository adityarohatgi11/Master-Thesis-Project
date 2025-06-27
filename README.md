# Carbon Price Shocks and ETF Market Dynamics
## A Comprehensive Analysis of Green vs. Brown Investment Responses

[![Project Status](https://img.shields.io/badge/Status-Complete-brightgreen.svg)](https://github.com)
[![Analysis Period](https://img.shields.io/badge/Period-2018--2024-blue.svg)](https://github.com)
[![Extended Analysis](https://img.shields.io/badge/Extended-2010--2024-lightblue.svg)](https://github.com)
[![License](https://img.shields.io/badge/License-Academic-yellow.svg)](https://github.com)

---

## 🎯 Executive Summary

This project provides groundbreaking insights into how **carbon price shocks** differentially impact green versus brown Exchange-Traded Funds (ETFs). Using advanced econometric methods including causal forest analysis, event studies, and machine learning approaches, we demonstrate that traditional energy ETFs are **3x more sensitive** to carbon price volatility than clean energy ETFs.

### 🚀 Key Discoveries
- **Brown ETFs (XLE)** exhibit 13.5% average treatment effects vs. 4.2% for **Green ETFs (ICLN)**
- **LSTM models outperform GARCH** by 30% in volatility forecasting
- **EU carbon policy announcements** create measurable, asymmetric market responses
- **Clear market differentiation** exists between sustainable and traditional energy investments

---

## 📊 Research Overview

### 🎯 Primary Objective
Quantify and explain the heterogeneous responses of green and brown ETFs to carbon price shocks, providing empirical evidence for climate-finance market segmentation.

### 🏢 Assets Under Investigation
| ETF | Name | Focus | Holdings | ESG Profile |
|-----|------|-------|----------|-------------|
| **ICLN** | iShares Global Clean Energy ETF | Green/Renewable Energy | First Solar, SSE, Iberdrola, Vestas | Mixed (Low to High ESG) |
| **XLE** | Energy Select Sector SPDR | Traditional Energy | ExxonMobil, Chevron, ConocoPhillips | High to Severe ESG Risk |

### 📈 Data Sources & Coverage
- **Carbon Prices**: EU Emissions Allowances (EUA) futures
- **Market Data**: Daily ETF prices and returns (2018-2024)
- **Control Variables**: VIX, Brent oil, 10-year Treasury rates
- **ESG Data**: Morningstar sustainability ratings
- **Policy Events**: EU carbon legislation timeline

---

## 🔬 Methodology & Innovation

### 🧮 Advanced Econometric Approaches

#### 1. **Carbon Shock Identification**
```
Shock Detection: |AR(5) residual| > 1.5σ threshold
Validation: Cross-referenced with EU policy announcements
```

#### 2. **Causal Forest Analysis**
- **Heterogeneous Treatment Effects**: Conditional Average Treatment Effects (CATE)
- **Robustness**: Bootstrap confidence intervals and placebo tests
- **Innovation**: Machine learning approach to traditional finance problems

#### 3. **Event Study Framework**
```
Event Windows: [-10, +10] days around carbon shocks
Abnormal Returns: Risk-adjusted performance relative to market
Statistical Testing: Cross-sectional t-tests for significance
```

#### 4. **Volatility Modeling Comparison**
- **Traditional**: GARCH(1,1) with maximum likelihood estimation
- **Modern**: LSTM neural networks with dropout and regularization
- **Performance**: RMSE, MAE, and directional accuracy metrics

#### 5. **Regression Analysis**
```
Model: ETF_return_t = α + β₁×carbon_shock_t + β₂×VIX_t + β₃×Brent_t + β₄×DGS10_t + ε_t
Estimation: OLS with heteroscedasticity-robust standard errors (HC1)
```

---

## 📈 Key Findings & Statistical Evidence

### 🎯 **Core Results**

| Metric | ICLN (Green) | XLE (Brown) | Interpretation |
|--------|--------------|-------------|----------------|
| **Mean CATE** | 4.19% | **13.49%** | Brown ETFs 3x more sensitive |
| **Regression Coefficient** | 0.0849*** | **0.1757***** | Highly significant effects |
| **R-squared** | 3.8% | **7.2%** | Better model fit for brown ETFs |
| **Volatility RMSE** | 0.226 | **0.164** | Lower forecasting errors |

*Note: *** indicates p < 0.001*

### 📊 **Economic Significance**
- **$1 carbon price shock** → **17.6 basis points** increase in XLE returns
- **Market asymmetry**: Brown assets more exposed to carbon transition risks
- **Policy transmission**: EU regulations create measurable US market impacts
- **Investment implications**: Clear risk differentiation for ESG portfolios

### 🔍 **Robustness Across Time Periods**

#### Main Period (2018-2024):
- **Post-financial crisis** stability
- **COVID-19 period** included for market stress testing
- **Recent policy** impacts captured

#### Extended Period (2010-2024):
- **European debt crisis** provides additional market stress
- **Longer-term trends** validate findings
- **Consistent coefficient signs** across periods

---

## 🚀 Quick Start Guide

### 🔧 **Prerequisites**
```bash
# Required Python packages
pandas >= 1.3.0          # Data manipulation
numpy >= 1.21.0          # Numerical computing
scikit-learn >= 1.0.0    # Machine learning (Causal Forest)
tensorflow >= 2.6.0      # LSTM models
statsmodels >= 0.13.0    # Econometric analysis
matplotlib >= 3.4.0      # Visualization
seaborn >= 0.11.0        # Statistical plotting
```

### 📚 **Execution Sequence**
1. **Data Preparation**: `03_Code/Main_Analysis/data_agg.ipynb`
2. **Main Analysis**: `03_Code/Main_Analysis/Main_Code_Project.ipynb`
3. **Robustness Checks**: `03_Code/Main_Analysis/Main_Code_Project_14Yr.ipynb`
4. **Visualization**: `03_Code/Visualization/presentation_plots.ipynb`

### 🎯 **Key Results Location**
- **Summary Statistics**: `04_Results/Statistical_Analysis/Summary_Results/`
- **Regression Outputs**: `04_Results/Statistical_Analysis/Regression_Results/`
- **Visualizations**: `04_Results/Figures/Main_Figures/`

---

## 💡 Research Contribution & Impact

### 🎓 **Academic Contributions**
- **First comprehensive study** comparing green/brown ETF responses to carbon shocks
- **Novel application** of causal forest methods to climate finance
- **Machine learning integration** with traditional econometric approaches
- **Cross-Atlantic policy transmission** evidence (EU → US markets)

### 🏢 **Practical Applications**
- **Portfolio Risk Management**: Quantified climate transition risks
- **ESG Investment Strategy**: Data-driven green/brown asset allocation
- **Policy Impact Assessment**: Market response measurement tools
- **Volatility Forecasting**: Superior LSTM-based prediction models

### 🌍 **Policy Implications**
- **EU carbon policy** creates measurable global market effects
- **Market-based mechanisms** effectively transmit climate signals
- **Asset differentiation** supports sustainable finance transition
- **Risk disclosure** needs differ across green/brown investments

---

## 📊 Methodological Innovations

### 🤖 **Machine Learning Integration**
```python
# Causal Forest Implementation
from sklearn.ensemble import RandomForestRegressor
from causalml.inference.tree import CausalTreeRegressor

# LSTM Volatility Forecasting
model = Sequential([
    LSTM(50, return_sequences=True, dropout=0.2),
    LSTM(50, dropout=0.2),
    Dense(1, activation='linear')
])
```

### 📈 **Advanced Econometrics**
- **Heteroscedasticity-robust** standard errors (HC1)
- **Cross-sectional dependence** testing
- **Structural break** analysis across time periods
- **Placebo testing** for causal identification

### 🔍 **Robustness Framework**
- **Multiple time horizons** (6-year vs 14-year samples)
- **Alternative shock thresholds** (1.0σ, 1.5σ, 2.0σ)
- **Different event windows** [-5,+5] to [-15,+15] days
- **Subsample stability** testing

---

## 📚 Documentation & Reproducibility

### 📖 **Complete Documentation**
- **[Data Dictionary](06_Admin/Data_Dictionary.md)**: Variable definitions and data sources
- **[Analysis Workflow](06_Admin/Analysis_Workflow.md)**: Step-by-step methodology
- **[Technical Guide](06_Admin/)**: Implementation details and troubleshooting

### 🔄 **Reproducibility Standards**
- **Version-controlled** analysis pipeline
- **Relative file paths** for cross-platform compatibility  
- **Documented dependencies** and environment specifications
- **Complete data provenance** tracking

### ✅ **Quality Assurance**
- **Statistical validation** of all model assumptions
- **Cross-validation** for machine learning components
- **Sensitivity analysis** for key parameters
- **Independent verification** of results

---

## 🎯 Future Research Directions

### 🔬 **Methodological Extensions**
- **Deep learning** approaches to volatility clustering
- **Network analysis** of cross-asset contagion effects
- **High-frequency** intraday shock transmission
- **International markets** comparison (EU, Asia, US)

### 🌍 **Policy Applications**
- **Central bank** climate stress testing
- **Regulatory impact** assessment frameworks
- **Transition pathway** modeling for different sectors
- **Carbon border adjustment** market effects

### 💼 **Industry Applications**
- **Real-time risk monitoring** systems
- **Dynamic hedging** strategies for climate risks
- **ESG factor** integration in portfolio optimization
- **Climate scenario** analysis for institutional investors

---

## 👥 Contact

### 📧 **Contact**
📧 Email: aditya.rohatgi11@gmail.com    

💼 LinkedIn: https://linkedin.com/in/adityarohatgi 

🔗 GitHub: https://github.com/adityarohatgi11

For questions regarding methodology, data access, or collaboration opportunities, please feel free to reach out.
