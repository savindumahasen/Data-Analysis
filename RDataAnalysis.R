
### import the data ###

energy_effieciency_data <- read.csv("energy_efficiency_data.csv");
### View the data set
View(energy_effieciency_data)
### check  the data types 
str(energy_effieciency_data)

### bind the dataset with R enviornment
attach(energy_effieciency_data);
View(energy_effieciency_data);

### checking the null  values ###
energy_effieciency_data[!complete.cases(energy_effieciency_data),]

### summary about the data set ###
summary(energy_effieciency_data);

#### Normality  Testing ####
### Install nortest package ###
install.packages("nortest");
### calling the library ###
library("nortest");
### Normality Testing ###

## Anderson Darling testing ##
ad.test(Cooling_Load);

## Lillifor Testing ##
lillie.test(Cooling_Load);

## shapiro-wilk testing ##
shapiro.test(Cooling_Load)

### graphical  analysis
hist(Cooling_Load, main="Cooling Load Distribution",
     xlab="cooling_load category",
     ylab="cooling_load",
     prob=TRUE)
curve(dnorm(x, mean=mean(Cooling_Load, na.rm=TRUE), 
            sd=sd(Cooling_Load, na.rm =TRUE)), add=TRUE)

### Density  curve
###  it describes the which  side the data distribution  is avialable
lines(density(Cooling_Load), col="red")

### correlational Analysis

cor.test(Cooling_Load,Heating_Load, method ="pearson", alternative="two.sided")

cor.test(Cooling_Load,Roof_Area, method ="pearson", alternative="two.sided")

### graphically  visualization
plot(Cooling_Load,Heating_Load, main="Cooling_Load vs Heating Load",
     xlab="Heating Load",
     ylab="Cooling Load")
abline(lm(Cooling_Load~Heating_Load), col="red")

####
