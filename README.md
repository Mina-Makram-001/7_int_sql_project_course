# Intermediate SQL - Sales Analysis

## Overview
Analysis of customer behavior, retention, and lifetime value for an e-commerce company to improve customer retention and maximize revenue.

## Business Questions
1. **Customer Segmentation:** Who are our most valuable customers?
2. **Cohort Analysis:** How do different customer groups generate revenue?
3. **Retention Analysis:** Which customers haven't purchased recently?

## Analysis Approach

### 1. Customer Segmentation Analysis
- Categorized customers based on total lifetime value (LTV)
- Assigned customers to High, Mid, and Low-value segments
- Calculated key metrics: total revenue

🖥️ Query: [1_customer_segmentation.sql](1_customer_segmentation.sql)

## 📊 Customer Segment Performance

| Customer Segment   | Total LTV ($)     | Customer Count | Avg LTV per Customer ($) |
|--------------------|------------------|----------------|--------------------------|
| 3 - High-Value    | 135,429,277.27   | 12,372        | 10,946.43               |
| 2 - Mid-Value     | 66,636,451.79    | 24,743        | 2,693.14                |
| 1 - Low-Value     | 4,341,809.53     | 12,372        | 350.94                  |

📊 **Key Findings:**
- High-value segment (25% of customers) drives 66% of revenue ($135.4M)
- Mid-value segment (50% of customers) generates 32% of revenue ($66.6M)
- Low-value segment (25% of customers) accounts for 2% of revenue ($4.3M)

💡 **Business Insights**
- High-Value (66% revenue): Offer premium membership program to 12,372 VIP customers, as losing one customer significantly impacts revenue
- Mid-Value (32% revenue): Create upgrade paths through personalized promotions, with potential $66.6M → $135.4M revenue opportunity
- Low-Value (2% revenue): Design re-engagement campaigns and price-sensitive promotions to increase purchase frequency

### 2. Cohort Analysis
- Tracked revenue and customer count per cohorts
- Cohorts were grouped by year of first purchase
- Analyzed customer retention at a cohort level

🖥️ Query: [2_cohort_analysis.sql](/2_cohort_analysis.sql)

## 📈 Cohort Revenue Analysis

| Cohort Year | Total Customers | Total Revenue ($)   | Avg Revenue per Customer ($) |
|-------------|----------------|---------------------|------------------------------|
| 2015        | 2,825          | 7,245,612.98        | 2,564.82                     |
| 2016        | 3,397          | 9,839,134.34        | 2,896.42                     |
| 2017        | 4,068          | 11,771,496.31       | 2,893.68                     |
| 2018        | 7,446          | 19,773,770.56       | 2,655.62                     |
| 2019        | 7,755          | 22,245,058.22       | 2,868.48                     |
| 2020        | 3,031          | 7,058,614.52        | 2,328.81                     |
| 2021        | 4,663          | 11,974,082.36       | 2,567.89                     |
| 2022        | 9,010          | 21,507,554.55       | 2,387.08                     |
| 2023        | 5,890          | 12,890,580.84       | 2,188.55                     |
| 2024        | 1,402          | 2,764,779.66        | 1,972.03                     |

📊 **Key Findings:**
- Revenue per customer shows an alarming decreasing trend over time
  - 2022-2024 cohorts are consistently performing worse than earlier cohorts
  - NOTE: Although net revenue is increasing, this is likely due to a larger customer base, which is not reflective of customer value

💡 **Business Insights**
- Value extracted from customers is decreasing over time and needs further investigation.
- In 2023 we saw a drop in number of customers acquired, which is concerning.
- With both lowering LTV and decreasing customer acquisition, the company is facing a potential revenue decline.

### 3. Customer Retention
🖥️ Query: [3_retention_analysis.sql](3_retention_analysis.sql)

- Identified customers at risk of churning
- Analyzed last purchase patterns
- Calculated customer-specific metrics

## 🔄 Cohort Retention vs Churn

| Cohort Year | Status   | Customers | Total Cohort Size | Percentage |
|-------------|----------|----------|------------------|------------|
| 2015        | Active   | 237      | 2,825            | 8%         |
| 2015        | Churned  | 2,588    | 2,825            | 92%        |
| 2016        | Active   | 311      | 3,397            | 9%         |
| 2016        | Churned  | 3,086    | 3,397            | 91%        |
| 2017        | Active   | 385      | 4,068            | 9%         |
| 2017        | Churned  | 3,683    | 4,068            | 91%        |
| 2018        | Active   | 704      | 7,446            | 9%         |
| 2018        | Churned  | 6,742    | 7,446            | 91%        |
| 2019        | Active   | 687      | 7,755            | 9%         |
| 2019        | Churned  | 7,068    | 7,755            | 91%        |
| 2020        | Active   | 283      | 3,031            | 9%         |
| 2020        | Churned  | 2,748    | 3,031            | 91%        |
| 2021        | Active   | 442      | 4,663            | 9%         |
| 2021        | Churned  | 4,221    | 4,663            | 91%        |
| 2022        | Active   | 937      | 9,010            | 10%        |
| 2022        | Churned  | 8,073    | 9,010            | 90%        |
| 2023        | Active   | 455      | 4,718            | 10%        |
| 2023        | Churned  | 4,263    | 4,718            | 90%        |

📊 **Key Findings:**  
- Cohort churn stabilizes at ~90% after 2-3 years, indicating a predictable long-term retention pattern.  
- Retention rates are consistently low (8-10%) across all cohorts, suggesting retention issues are systemic rather than specific to certain years.  
- Newer cohorts (2022-2023) show similar churn trajectories, signaling that without intervention, future cohorts will follow the same pattern.  

💡 **Business Insights:**  
- Strengthen early engagement strategies to target the first 1-2 years with onboarding incentives, loyalty rewards, and personalized offers to improve long-term retention.  
- Re-engage high-value churned customers by focusing on targeted win-back campaigns rather than broad retention efforts, as reactivating valuable users may yield higher ROI.  
- Predict & preempt churn risk and use customer-specific warning indicators to proactively intervene with at-risk users before they lapse.


## Strategic Recommendations

1. **Customer Value Optimization** (Customer Segmentation)
   - Launch VIP program for 12,372 high-value customers (66% revenue)
   - Create personalized upgrade paths for mid-value segment ($66.6M → $135.4M opportunity)
   - Design price-sensitive promotions for low-value segment to increase purchase frequency

2. **Cohort Performance Strategy** (Customer Revenue by Cohort)
   - Target 2022-2024 cohorts with personalized re-engagement offers
   - Implement loyalty/subscription programs to stabilize revenue fluctuations
   - Apply successful strategies from high-spending 2016-2018 cohorts to newer customers

3. **Retention & Churn Prevention** (Customer Retention)
   - Strengthen first 1-2 year engagement with onboarding incentives and loyalty rewards
   - Focus on targeted win-back campaigns for high-value churned customers
   - Implement proactive intervention system for at-risk customers before they lapse

## Technical Details
- **Database:** PostgreSQL
- **Analysis Tools:** PostgreSQL, DBeaver, PGadmin
