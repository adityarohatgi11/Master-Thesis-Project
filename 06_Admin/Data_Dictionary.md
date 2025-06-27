# Data Dictionary

## ETF Data

### Primary ETFs
- **ICLN**: iShares Global Clean Energy ETF (Green ETF)
  - Focus: Renewable energy, energy efficiency, clean technology companies
  - Major holdings: First Solar, SSE, Iberdrola, Vestas Wind Systems
  - ESG Profile: Mixed ratings (Low to High ESG risk)

- **XLE**: Energy Select Sector SPDR Fund (Brown ETF)
  - Focus: Traditional energy sector companies
  - Major holdings: ExxonMobil, Chevron, ConocoPhillips
  - ESG Profile: Predominantly High to Severe ESG risk

### Holdings Data
- **Weight (%)**: Portfolio weight of each holding
- **Ticker**: Company stock symbol
- **Sector**: Industry classification
- **Shares Held**: Number of shares in the ETF

## Carbon Price Data

### EUA Futures
- **EUA**: European Union Allowances carbon futures prices
- **Source**: Carbon emissions futures historical data
- **Frequency**: Daily
- **Currency**: EUR per metric ton of CO2 equivalent

### Carbon Shock Identification
- **Carbon Shock**: Binary indicator (0/1) for carbon price shock events
- **Threshold**: |AR(5) residual| > 1.5 standard deviations
- **Carbon Shock Residual**: AR(5) model residuals for carbon returns

## Financial Variables

### Returns
- **Log Returns**: Calculated as ln(P_t/P_{t-1})
- **ICLN Returns**: Daily log returns of ICLN ETF
- **XLE Returns**: Daily log returns of XLE ETF
- **Carbon Returns**: Daily log returns of EUA futures

### Volatility
- **Realized Volatility**: Rolling standard deviation of returns
- **Window**: 10-day rolling window for volatility calculation
- **GARCH Volatility**: Conditional volatility from GARCH(1,1) model
- **LSTM Forecast**: Neural network volatility predictions

## Control Variables

### Market Variables
- **VIX**: CBOE Volatility Index (fear index)
- **Brent**: Brent crude oil futures prices (USD per barrel)
- **DGS10**: 10-Year Treasury constant maturity rate (%)

### Macro Variables
- **Exchange Rates**: Various currency pairs
- **Interest Rates**: Government bond yields
- **Commodity Prices**: Energy and metal prices

## ESG Data

### ESG Ratings
- **ESG Score**: Numerical ESG risk score (0-100)
- **ESG Label**: Categorical risk assessment
  - Negligible: 0-10
  - Low: 10-20
  - Medium: 20-30
  - High: 30-40
  - Severe: 40+

### ESG Sources
- **Morningstar**: ESG risk ratings for individual companies
- **Company Level**: Firm-specific ESG assessments
- **Abnormal Returns**: Risk-adjusted returns relative to market

## Event Study Variables

### Event Windows
- **Event Day (t=0)**: Day of carbon shock occurrence
- **Pre-Event**: Days -10 to -1 relative to shock
- **Post-Event**: Days +1 to +10 relative to shock
- **Event Window**: Full -10 to +10 day period

### Cumulative Returns
- **CAR**: Cumulative Abnormal Returns over event window
- **Mean CAR**: Average cumulative returns across all events
- **Standard Error**: Cross-event variation measure

## Causal Analysis Variables

### Treatment Variables
- **Treatment**: Carbon shock exposure (binary)
- **Treatment Intensity**: Magnitude of carbon price change

### Outcome Variables
- **CATE**: Conditional Average Treatment Effect
- **ATE**: Average Treatment Effect across all observations
- **Confidence Intervals**: Bootstrap-based uncertainty measures

## Model Performance Metrics

### Volatility Forecasting
- **RMSE**: Root Mean Square Error
- **MAE**: Mean Absolute Error
- **Model Comparison**: GARCH vs LSTM performance

### Statistical Tests
- **T-statistics**: Test statistics for coefficient significance
- **P-values**: Statistical significance levels
- **R-squared**: Model explanatory power
- **F-statistics**: Joint significance tests

## Time Periods

### Main Analysis Period
- **Start**: January 1, 2018
- **End**: December 31, 2024
- **Rationale**: Post-financial crisis, includes COVID-19 period

### Extended Analysis Period
- **Start**: January 1, 2010
- **End**: December 31, 2024
- **Rationale**: Includes European debt crisis for robustness

### Policy Events
- **EU Green Deal**: December 2019
- **Fit for 55**: July 2021
- **Maritime ETS**: January 2024
- **ETS Phase 4**: January 2021

## Data Quality Notes

### Missing Data
- **Carbon Data**: Some early periods may have limited coverage
- **ESG Data**: Not all companies have complete ESG ratings
- **Handling**: Forward-fill for price data, exclude incomplete observations

### Data Frequency
- **Daily**: Price and return data
- **Event-based**: Policy announcements and shock identification
- **Cross-sectional**: Holdings and ESG data (periodic updates)

### Currency Considerations
- **Base Currency**: USD for ETF data
- **Carbon Prices**: EUR (converted when necessary)
- **Exchange Rates**: Applied for currency adjustments

## File Naming Conventions

### Suffixes
- **_ret**: Return data
- **_vol**: Volatility data
- **_shock**: Shock-related variables
- **_14yr**: Extended period (2010-2024) analysis
- **_garch**: GARCH model outputs

### Prefixes
- **icln_**: ICLN-specific data
- **xle_**: XLE-specific data
- **carbon_**: Carbon price related data
- **financial_**: Combined financial datasets 