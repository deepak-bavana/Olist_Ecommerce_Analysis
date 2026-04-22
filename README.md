# Olist_Ecommerce_Analysis

## Project Overview
End-to-end data analysis of Brazil's largest e-commerce platform (Olist),
covering sales performance, customer segmentation, and revenue forecasting.

## Dataset
- Source: Kaggle Brazilian E-commerce Public Dataset by Olist
- 9 relational tables, 100,000+ orders (2016-2018)

## Tools Used
| Tool | Purpose |
|------|---------|
| Python (pandas, prophet, sklearn) | Cleaning, EDA, RFM, Forecasting |
| MS SQL Server | Business queries across joined tables |
| Power BI | Interactive executive dashboard |

## Key Findings
- Total revenue: R$19.7 million across 96,464 delivered orders
- Business grew 25x in 2 years (Sep 2016 → Aug 2018)
- Sao Paulo generates 37% of total revenue
- Fast delivery (0-7 days) scores 4.33 stars vs 2.97 for slow delivery
- Credit card = 73% of all transactions
- Top category: Bed & Bath at R$1.69M revenue

## RFM Customer Segments
| Segment | Customers | Avg Spend |
|---------|-----------|-----------|
| Champions | 6,460 | R$442 |
| Loyal Customers | 14,215 | R$267 |
| New Customers | 14,984 | R$204 |
| At Risk | 22,219 | R$212 |
| Lost Customers | 6,282 | R$56 |

## Sales Forecast (Prophet)
| Month | Predicted Revenue |
|-------|------------------|
| September 2018 | R$2,693,291 |
| October 2018 | R$1,465,511 |
| November 2018 | R$1,714,076 |

## Business Recommendations
1. Fix delivery speed in remote states every extra day costs 0.3 stars in reviews
2. Launch win-back campaign for 22,219 At Risk customers before they become Lost
3. Invest more in Bed & Bath and Health & Beauty highest revenue + best reviews
4. Expand seller network outside São Paulo top 3 states = 62% of revenue

