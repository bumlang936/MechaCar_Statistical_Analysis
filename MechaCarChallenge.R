# install packages

library(tidyverse)
library(ggplot2)
library(dplyr)

# read MechaCar_mpg csv
MechaData_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MechaData_table)

# perform linear regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaData_table)

# using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaData_table))


# read Supsension_Coil csv
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil)

# create the total_summary dataframe using summarize()
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
head(total_summary)

# create the lot_summary dataframe using summarize()
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# perform t.test on PSI across all lots
t.test(suspension_coil$PSI, mu=1500)

# perform t.test on Lot 1
lot1 <- subset(suspension_coil, Manufacturing_Lot =='Lot1')
t.test(lot1$PSI, mu=1500)

# perform t.test on Lot 2
lot2 <- subset(suspension_coil, Manufacturing_Lot =='Lot2')
t.test(lot2$PSI, mu=1500)

# perform t.test on Lot 3
lot3 <- subset(suspension_coil, Manufacturing_Lot =='Lot3')
t.test(lot3$PSI, mu=1500)

