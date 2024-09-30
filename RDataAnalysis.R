
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


### Normality testing
## install the library
install.packages("nortest")

## call the library
library("nortest")

## Relative_Compactness
ad.test(Relative_Compactness)
lillie.test(Relative_Compactness)
shapiro.test(Relative_Compactness)

## Histogram and bell curve for Relative_Compactness
hist(Relative_Compactness, main="Relative_Compactness distribution", xlab ="Relative_Compactness Category", ylab="Relative_Compactness",
     prob=TRUE)

curve(dnorm(x, mean=mean(Relative_Compactness, na.rm=TRUE), sd=sd(Relative_Compactness, na.rm = TRUE)), add=TRUE)

## Surface_Area
ad.test(Surface_Area)
lillie.test(Surface_Area)
shapiro.test(Surface_Area)

## Histogram and bell curve for Surface_Area
hist(Surface_Area, main = "Surface_Area Distribution", xlab="Surface_Area Category", ylab="Surface_Area", prob=TRUE)
curve(dnorm(x, mean=mean(Surface_Area, na.rm = TRUE), sd=sd(Surface_Area, na.rm = TRUE)), add=TRUE)

## Wall_Area
ad.test(Wall_Area)
lillie.test(Wall_Area)
shapiro.test(Wall_Area)

## Histogram and bell curve for Wall_Area
hist(Wall_Area, main="Wall_Area Distribution", xlab="Wall_Area Category", ylab="Wall_Area", prob=TRUE)
curve(dnorm(x, mean=mean(Wall_Area, na.rm=TRUE), sd=sd(Wall_Area, na.rm = TRUE)), add=TRUE)

## Roof_Area
ad.test(Roof_Area)
lillie.test(Roof_Area)
shapiro.test(Roof_Area)

## Histogram and bell curve for Roof_Area
hist(Roof_Area, main="Roof_Area Distribution", xlab = "Roof_Area Category", ylab="Roof_Area", prob=TRUE)
curve(dnorm(x, mean=mean(Roof_Area, na.rm=TRUE), sd=sd(Roof_Area, na.rm = TRUE)), add=TRUE)

## Overall_Height
ad.test(Overall_Height)
lillie.test(Overall_Height)
shapiro.test(Overall_Height)

## Histogram and bell curve for Overall_Height
hist(Overall_Height, main="Overall_Height Distribution", xlab = "Overall_Height Category", ylab="Overall_Height",
     prob=TRUE)
curve(dnorm(x, mean=mean(Overall_Height, na.rm=TRUE), sd=sd(Overall_Height, na.rm = TRUE)), add=TRUE)

## Orientation
ad.test(Orientation)
lillie.test(Orientation)
shapiro.test(Orientation)

## Histogram and bell curve for Orientation
hist(Orientation, main="Orientation Distribution",xlab="Orientation Category", ylab="Orientation", prob=TRUE)
curve(dnorm(x, mean=mean(Orientation, na.rm = TRUE), sd=sd(Orientation, na.rm=TRUE)), add=TRUE)

## Glazing_Area
ad.test(Glazing_Area)
shapiro.test(Glazing_Area)
lillie.test(Glazing_Area)

## Histogram and bell curve for Glazing_Area
hist(Glazing_Area, main="Glazing_Area Distribution", xlab="Glazing_Area Category", ylab="Glazing_Area", prob=TRUE)
curve(dnorm(x, mean=mean(Glazing_Area, na.rm = TRUE), sd=sd(Glazing_Area, na.rm = TRUE)), add=TRUE)

## Glazing_Area_Distribution
ad.test(Glazing_Area_Distribution)
lillie.test(Glazing_Area_Distribution)
shapiro.test(Glazing_Area_Distribution)

## Histogram and bell curve for Glazing_Area_Distribution
hist(Glazing_Area_Distribution, main="Glazing_Area_Distribution", xlab="Glazing_Area_Distribution Category", ylab="Glazing_Area_Distribution",
     prob=TRUE)
curve(dnorm(x, mean=mean(Glazing_Area_Distribution, na.rm = TRUE), sd=sd(Glazing_Area_Distribution, na.rm=TRUE)), add=TRUE)

## Heating_Load
ad.test(Heating_Load)
lillie.test(Heating_Load)
shapiro.test(Heating_Load)

## Histogram and bell curve for Heating_Load

hist(Heating_Load, main="Heating_Load Distribution", xlab="Heating_Load Category", ylab="Heating_Load", prob=TRUE)
curve(dnorm(x, mean=mean(Heating_Load, na.rm=TRUE), sd=sd(Heating_Load, na.rm = TRUE)), add=TRUE)

## Cooling_Load
ad.test(Cooling_Load)
lillie.test(Cooling_Load)
shapiro.test(Cooling_Load)

## Histogram and bell curve for Cooling_Load
hist(Cooling_Load, main="Cooling_Load Distribution", xlab = "Cooling_Load Category", ylab="Cooling_Load", prob=TRUE)
curve(dnorm(x, mean=mean(Cooling_Load, na.rm=TRUE), sd=sd(Cooling_Load, na.rm=TRUE)),add=TRUE)


### correlational Analysis

cor.test(Cooling_Load,Heating_Load, method ="spearman", alternative="two.sided")

cor.test(Cooling_Load,Roof_Area, method ="spearman", alternative="two.sided")

cor.test(Cooling_Load,Glazing_Area_Distribution, method="spearman", alternative="two.sided")

cor.test(Cooling_Load,Glazing_Area, method="spearman", alternative ="two.sided")

cor.test(Cooling_Load,Orientation, method="spearman", alternative ="two.sided")

cor.test(Cooling_Load,Overall_Height, method="spearman", alternative ="two.sided")



### graphically  visualization
plot(Cooling_Load~Heating_Load, main="Cooling_Load vs Heating Load",
     xlab="Heating Load",
     ylab="Cooling Load")

plot(Cooling_Load~Roof_Area, main="Cooling_Load vs Roof_Area",
     xlab="Roof_Area",
     ylab="Cooling Load")


plot(Cooling_Load~Overall_Height, main="Cooling_Load vs Overall_Height",
     xlab="Overall_Hieght",
     ylab="Cooling Load")




#### Regression Analysis ####
### Simple Linear Regression  analysis
### develop the model  by using the Simple Linear regression analysis
cool_load_model1 <- lm(Cooling_Load~Heating_Load, model = TRUE)
cool_load_model1
plot(Cooling_Load~Heating_Load, main="Cooling_Load vs Heating Load",
     xlab="Heating Load",
     ylab="Cooling Load")
abline(lm(Cooling_Load~Heating_Load), col="red")


### Summary  Statisitics
summary(cool_load_model1)

cool_load_model2 <- lm(Cooling_Load~Roof_Area, model=TRUE)
cool_load_model2
### 
#library('Rcmdr')
plot(Cooling_Load~Roof_Area,main="Cooling_Load vs Roof_Area",
     xlab="Roof_Area",
     ylab="Cooling Load")
abline(lm(Cooling_Load~Roof_Area), col="red")

### Summary  Statisitics
summary(cool_load_model2)

cool_load_model3 <- lm(Cooling_Load~Overall_Height, model=TRUE)
cool_load_model3
plot(Cooling_Load~Overall_Height, main="Cooling_Load vs Overall-Hieght",
     xlab="Overall_Height",
     ylab="Cooling Load")
abline(lm(Cooling_Load~Overall_Height), col="red")

#### summary statistics
summary(cool_load_model3)


### Multiple Linear regression analysis
#independent variables -Heating_Load,Roof_Area, Overall-Height
My_Sal_All_Model <- lm(Cooling_Load~Heating_Load+Roof_Area+Overall_Height, model=TRUE)
My_Sal_All_Model
summary(My_Sal_All_Model)


library('Rcmdr')
scatterplotMatrix(~Cooling_Load+Heating_Load+Overall_Height+Roof_Area, 
                     regLine=TRUE, smooth=FALSE, diagonal=list(method="density"), 
                    data=energy_effieciency_data,col="red")
> 
