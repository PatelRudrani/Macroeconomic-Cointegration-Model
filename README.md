# Macroeconomic Regression Model: Predicting the S&P 500 Index

Log-linear OLS regression model examining the relationship between the S&P 500 Index and four macroeconomic indicators: GDP growth rate, unemployment rate, foreign direct investment, and the Consumer Price Index (CPI). Uses 383 monthly observations spanning 34 years of US economic data, achieving a 92% R-squared.

## Methodology
The model regresses the log-transformed S&P 500 Index against the log-transformed values of GDP growth rate, CPI, unemployment rate, and foreign direct investment. Variables were log-transformed to correct for right-skewed distributions common in economic time series data, improving linearity and statistical robustness.

## Key Findings
- The model explains approximately 92% of the variation in the logged S&P 500 Index (R-squared).
- GDP growth rate has a statistically significant positive relationship with the S&P 500 Index (t-statistic 3.43, significant at the 1% level).
- The unemployment rate has a strong, statistically significant negative relationship with the index (t-statistic -13.16, significant at the 1% level), the most powerful predictor in the model.
- Foreign direct investment has a statistically significant positive relationship with the index (t-statistic 2.22, significant at the 5% level).
- CPI shows a statistically significant positive relationship with the index (t-statistic 43.13, significant at the 1% level), though this large coefficient may partly reflect positive bias in CPI data.

## Limitations
The analysis acknowledges potential omitted variable bias, as factors such as investor sentiment, corporate governance quality, and index methodology changes were not included in the model and could affect the accuracy of the estimated relationships.

[View Full Report](https://github.com/PatelRudrani/Macroeconomic-Cointegration-Model/blob/8b3994b86bb198a869dd4deb99e8ef1cc8f70a98/S%26P%20500%20Project.pdf)
