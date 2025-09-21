# Cyclistic Bike-Share Case Study

## Overview

This repository contains a **case study analysis of the Cyclistic bike-share program**, created as part of the **Google Data Analytics Certificate** course. The goal of this project is to understand differences between **casual riders** and **annual members**, with the aim of informing a marketing strategy to convert casual riders into members.

While the course provided an outline for analyzing the data, I chose to take my **own approach** to explore trends and insights.

**Key deliverables**, including the final report, visualizations, and tables, can be found in the [`deliverables`](./deliverables) directory.

---

## Project Background

Cyclistic is a fictional bike-share company based in Chicago with over 5,800 bicycles and 600 docking stations. The program is inclusive, offering not only traditional bikes but also reclining bikes, hand tricycles, and cargo bikes to accommodate riders with different abilities. Approximately 30% of Cyclistic rides are commute-related, while most rides are for leisure.  

As a junior data analyst on Cyclistic’s marketing analytics team, the goal is to answer the following business questions:

1. How do casual riders and annual members use Cyclistic bikes differently?
2. What marketing strategies can encourage casual riders to become annual members?

The marketing director and executive team require **data-driven insights** backed by clear, professional visualizations.

---

## Data

The analysis uses **historical Cyclistic trip data (July 2024 – July 2025)**. The original dataset includes over 5.5 million rides. For computational efficiency and visual clarity:

- A **random sample of 100,000 rides** was selected.  
- Because members outnumber casual riders roughly 2:1, an **equalized bootstrapped sample** of 100,000 rides per group was also created for comparative visualizations.  

### Bonus: Data Quality Analysis

A comprehensive data validation was performed in [`scripts_and_notebooks/2_validate_tripdata.Rmd`](./scripts_and_notebooks/2_validate_tripdata.Rmd).  
Key findings include:

- Some **station IDs and names** do not correspond one-to-one.  
- **Ride coordinates** contain inconsistencies that could affect spatial analysis.  

For this project, these issues were **not addressed**, as the analysis focused on **ride duration** and **time-of-day patterns**. However, they would need to be resolved for any analysis involving station locations or spatial trends.

---

## Analysis Workflow

The analysis follows the typical **data analytics process**:

1. **Ask** – Define business questions about member vs. casual riders.  
2. **Prepare** – Clean and organize the data, including creating calculated fields such as ride length and day-of-week.  
3. **Process** – Downsample data for efficiency, and create equalized datasets for comparisons.  
4. **Analyze** – Generate summary statistics, visualizations of ride lengths, and patterns by day of the week.  
5. **Share** – Create tables and plots suitable for stakeholder review.  
6. **Act** – Provide actionable business recommendations based on findings.

---

## Key Insights

- **Members** take shorter, more consistent rides (~12 minutes), primarily on weekdays, indicating commuting behavior.  
- **Casual riders** take longer, more variable rides (~24 minutes) and are more active on weekends, reflecting leisure usage.  
- Differences between groups suggest marketing efforts should **target commuters** for membership conversion.  

---

## Recommendations

Some actionable strategies include:

- Place bike stations near dense residential areas and business districts.  
- Market speed, cost savings, and reliability for short commutes.  
- Partner with employers to offer subsidized memberships.  
- Provide commuter-focused pricing (monthly passes, unlimited 30-min rides).  
- Encourage habit formation with rush-hour promotions and streak rewards.  
- Highlight Cyclistic as the **eco-friendly commuter choice**.  
- Host local events and referral programs to build community engagement.

---

## Repository Structure

- `deliverables/` – Final reports, visualizations, and tables for stakeholders.  
- `scripts_and_notebooks/` – Data cleaning, processing, and validation notebooks and scripts.  
- `data_raw`/ – Original downloaded data files
- `data_intermediate/` – Processed and downsampled data files.  

---

## Conclusion

This project demonstrates how **data-driven insights** can guide marketing strategies for a bike-share program. By understanding ride patterns and behaviors, Cyclistic can optimize member acquisition efforts and strengthen overall profitability.
