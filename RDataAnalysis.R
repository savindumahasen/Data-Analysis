
### import the data ###

energy_effieciency_data <- read.csv("energy_efficiency_data.csv");
View(energy_effieciency_data)
str(energy_effieciency_data)

### bind the dataset with R enviornment
attach(energy_effieciency_data);
View(energy_effieciency_data);

### checking the null  values ###
energy_effieciency_data[!complete.cases(energy_effieciency_data),]


#### Normality  Testing ####
### Install nortest package ###
install.packages("nortest");
### calling the library ###
library("nortest");
###
