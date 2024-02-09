
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
