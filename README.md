# ggplot2
the plotting package ggplot2.
R graph Rivers https://rpubs.com/programeralebrijes/794439

Data Frames L6 mtcars 

Plot Graph Link  https://rpubs.com/programeralebrijes/795563


L7

The problem to be solved
The hypotheses
The results of the hypothesis test and the conclusion
What is the p-value for this test? Based on this p-value, do you reject the null hypothesis?


Lineal Regration Plots 

Eruption https://rpubs.com/programeralebrijes/796390

Eruption Lineal 1 https://rpubs.com/programeralebrijes/796398

Eruption Lineal 1 - gray area
https://rpubs.com/programeralebrijes/796400

Little correlation Sample Plot 
https://rpubs.com/programeralebrijes/796415

Negative correlation plot 
https://rpubs.com/programeralebrijes/796419


correlation plot for data frame mtcars_quant 

https://rpubs.com/programeralebrijes/796437

corr_matrix <- cor(mtcars_quant)

corr_matrix

inst

installed corr plot package
https://rpubs.com/programeralebrijes/796446

lower plot corraletion 
https://rpubs.com/programeralebrijes/796447


Lesson 8 Linelal regression 

Formula 

summary(regression)

Call:
lm(formula = qsec ~ hp, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-2.1766 -0.6975  0.0348  0.6520  4.0972 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 20.556354   0.542424  37.897  < 2e-16 ***
hp          -0.018458   0.003359  -5.495 5.77e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.282 on 30 degrees of freedom
Multiple R-squared:  0.5016,	Adjusted R-squared:  0.485 
F-statistic: 30.19 on 1 and 30 DF,  p-value: 5.766e-06


Plot https://rpubs.com/programeralebrijes/796527

#Compute the linear regression for vehicle weight and quarter mile time
summary(regression2)

Call:
lm(formula = qsec ~ wt, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.3638 -1.0766  0.2051  0.8655  5.0298 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  18.8753     1.1025  17.120   <2e-16 ***
wt           -0.3191     0.3283  -0.972    0.339    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.789 on 30 degrees of freedom
Multiple R-squared:  0.03053,	Adjusted R-squared:  -0.00179 
F-statistic: 0.9446 on 1 and 30 DF,  p-value: 0.3389

https://rpubs.com/programeralebrijes/796533

