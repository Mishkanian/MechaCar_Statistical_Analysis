# MechaCar_Statistical_Analysis

## Project Overview
The purpose of this project is to identify which variables can predict the MPG of car prototypes for the fictional company AutosRUs.

[PROJECT IN PROGRESS]

## Linear Regression to Predict MPG

![mechacar_regress](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/mechacar_regress.png)

After performing a multiple linear regression on the MechaCars_mpg.csv dataset, the following conclusions can be made:  
- **Vehicle Length** and **Ground Clearance** are statistically significant. These variables provide a non-random amount of variance to the MPG values in the dataset.
- The high significance level of the intercept implies that might be other factors that are significant to MPG. Since all available variables in this dataset were already passed in this regression, it can be inferred that additional research and data are necessary to uncover any unknown significant variables.

## Summary Statistics on Suspension Coils  

![total_summary](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/total_summary_psi.png)  

The design specifications of AutosRUs' prototype "MechaCar" dictates that the variance of the suspension coils must not exceed 100 pounds per square inch. Although the total variance in the summary dataframe above shows a variance of 62, which is acceptable, investing the variance of individual manufacture lots has shown that Manufacturing Lot 3 does not meet the current design specifications.

Using the code below, the data is grouped by manufacturing lot:

```R
# Creating a lot_summary dataframe grouped by manufacturing lots
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% 
summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), 
STDEV_PSI=sd(PSI), .groups = 'keep')
```

After running this code, the following dataframe is generated:

![manufacturing_lots](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/manufacturing_lots_summary.png)

Based on this lot_summary dataframe it can be concluded that **only Manufacturing Lot 3 does not meet the design specifications.**

**Author: Michael Mishkanian**  
For all questions and inquiries, please contact me on [LinkedIn](https://www.linkedin.com/in/michaelmishkanian/).