library(dplyr)

### DELIVERABLE 1 ###
# Import the data
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression that predicts the mpg of MechaCar prototypes
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
# p-value: 5.35e-11
# r-squared: 0.6825


### DELIVERABLE 2 ###
sus_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), 
                                        Variance = var(PSI), SD = sd(PSI))
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))


