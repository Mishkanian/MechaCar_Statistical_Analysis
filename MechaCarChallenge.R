# Deliverable 1 - Michael Mishkanian
library(dplyr)
# import and read mechacar csv as a dataframe
MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table)
# determine p-value and r^2
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table))