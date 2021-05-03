# Statistical Analysis of a Vehicle Prototype in R

## Project Overview
The purpose of this project is to identify which variables can predict the MPG of a car prototype, "MechaCar", for the fictional company AutosRUs. Summary statistics are generated and t-tests are performed for individual manufacturing lots. Finally, a study is designed to compare MechaCar to the competition. R and [tidyverse](https://www.tidyverse.org/) are used to accomplish this analysis.  

## Linear Regression to Predict MPG

![mechacar_regress](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/mechacar_regress.png)

After performing a multiple linear regression on the [MechaCar_mpg.csv](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/datasets/MechaCar_mpg.csv) dataset, the following conclusions can be made:  
- **Vehicle Length** and **Ground Clearance** are statistically significant. These variables provide a non-random amount of variance to the MPG values in the dataset.
- The high significance level of the intercept implies that might be other factors that are significant to MPG. Since all available variables in this dataset were already passed in this regression, it can be inferred that additional research and data are necessary to uncover any unknown significant variables.

## Summary Statistics on Suspension Coils  

![total_summary](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/total_summary_psi.png)  

The design specifications of AutosRUs' prototype "MechaCar" dictates that the variance of the suspension coils must not exceed 100 pounds per square inch. Although the total variance in the [summary dataframe](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/total_summary_psi.png) above shows a variance of 62, which is acceptable, investing the variance of individual manufacture lots has shown that Manufacturing Lot 3 does not meet the current design specifications.

Using the code below, the data in [Suspension_Coil.csv](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/datasets/Suspension_Coil.csv) is grouped by manufacturing lot:

```R
# Creating a lot_summary dataframe grouped by manufacturing lots
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% 
summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), 
STDEV_PSI=sd(PSI), .groups = 'keep')
```

After running this code, the following dataframe is generated:

![manufacturing_lots](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/manufacturing_lots_summary.png)

Based on the above [lot_summary dataframe](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/manufacturing_lots_summary.png), it can be concluded that **only Manufacturing Lot 3 does not meet the design specifications** because the variance is far above 100.

## T-Tests on Suspension Coils

In this section of the analysis, t-tests are used to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. **It is found that only Manufacturing Lot 3 is statistically different from the population mean.**

### T-Test Across All Manufacturing Lots

![ttest_mecha](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/ttest_mecha.png)

In the t-test above, it is found that the mean across *all* manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch.

### Manufacturing Lot 1 T-Test

![ttest_lot1](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/ttest_lot1.png)

Manufacturing Lot 1 has a p-value of 1, which means that the **mean of Manufacturing Lot 1 is identical to the population mean** of 1,500. Therefore we fail to reject the null hypothesis, there is no statistical difference from the population mean.

### Manufacturing Lot 2 T-Test

![ttest_lot2](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/ttest_lot2.png)

Manufacturing Lot 2 has a p-value of 0.61, therefore we fail to reject the null hypothesis. There is no statistical difference between Manufacturing Lot 2 and the population mean of 1,500.

### Manufacturing Lot 3 T-Test

![ttest_lot3](https://github.com/Mishkanian/MechaCar_Statistical_Analysis/blob/main/README_images/ttest_lot3.png)

Manufacturing Lot 3 has a p-value of 0.04, therefore we reject the null hypothesis. This means **Manufacturing Lot 3 is statistically different from from the population mean** of 1,500 pounds per square inch.

## Study Design: MechaCar vs Competition

To quantify how "MechaCar" may perform against the competition, a statistical study of metrics that maximize consumer utility can be performed. In Economics, utility represents how much usefulness or enjoyment a consumer can obtain from consumption of a good or service. In this project, the metrics that might affect the utility of a vehicle are:
- Purchase Price
- Fuel Efficiency (Highway and City)
- Maintenance Cost
- Safety Ratings
- Horsepower
- Storage Capacity

The null hypothesis and alternative hypothesis for this proposed study are as follows:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H<sub>o</sub>: MechaCar would have high consumer utility and would perform well against competitors.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H<sub>a</sub>: MechaCar would *not* have high consumer utility and would *not* perform well against competitors. 

After gathering the necessary data for the metrics listed above, Multiple Linear Regressions would be used to identify the statistically significant variables that affect sales of similar vehicles. The performace of MechaCar in these important categories will be compared to the mean performace of competitors through the analysis of variance (ANOVA) test.

If it is found that MechaCar would have high consumer utility and would perform well when positioned against competing vehicles, it is recommended to manufacture MechaCar. Otherwise, if the null hypothesis is rejected, it is not recommend to manufacture MechaCar.


**Author: Michael Mishkanian**  
For all questions and inquiries, please contact me on [LinkedIn](https://www.linkedin.com/in/michaelmishkanian/).
