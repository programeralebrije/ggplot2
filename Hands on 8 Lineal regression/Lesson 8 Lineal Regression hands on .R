#To view the dataset 
mtcars 

#Overall goal: Examine the effect of horsepower and vehicle weight on the time necessary to travel a quarter mile from a standing start

#Scatter plot with engine horsepower and quarter mile time

library("ggplot2")
ggplot(data=mtcars, aes(x = hp, y = qsec)) + geom_point() + geom_smooth(method='lm', se = TRUE)

#The above graph is negatively correlated, because the dots show a trend from top to bottom.

#Compute the linear regression for engine horsepower and quarter mile  time

regression <- lm(qsec~hp, mtcars)
summary(regression)

#The equation of the line is: y = -0.02x + 20.56

#The R squared value is .49, meaning that horsepower explains 49% of the variance in the quarter mile time.

#This is what I would expect - the more horsepower, the more powerful engine and the faster a car should be able to go.

#Scatter plot with vehicle weight and quarter mile time

library("ggplot2")
ggplot(data=mtcars, aes(x = wt, y = qsec)) + geom_point() + geom_smooth(method='lm', se = TRUE)

#The above graph is uncorrelated.

#Compute the linear regression for vehicle weight and quarter mile time

regression2 <- lm(qsec~wt, mtcars)
summary(regression2)

#The equation of the line is: y = -.32x + 18.88

#The R squared value is -.00, meaning that vehicle weight does not account for any of the variance in quarter mile time

#I would have thought that if a car was heavier, it would be slower off the mark.  It looks like weights just don't vary enough in this dataset though.