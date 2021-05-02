# Deliverable 1 - Michael Mishkanian
library(tidyverse)
library(dplyr)
# import and read mechacar csv as a dataframe
MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table)
# determine p-value and r^2
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table))

# Deliverable 2 - Michael Mishkanian
# import and read suspension_coil csv as a dataframe
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# create total summary dataframe
total_summary <- Suspension_Coil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI))
# create lot summary dataframe
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI), .groups = 'keep')

# Deliverable 3 - Michael Mishkanian
# determine if PSI across all lots is different from population mean
t.test(Suspension_Coil_table$PSI, mu=1500)
# determine if PSI across each lot is different from population mean
# lot 1
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1")$PSI, mu= 1500)
# lot 2
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2")$PSI, mu= 1500)
# lot 3
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3")$PSI, mu= 1500)


