#This is to view the dataset in its entirety
mtcars 

#Box plot of miles per gallon grouped by number of cylinders

#The simple way using the built-in R function boxplot
boxplot(mtcars$mpg ~ mtcars$cyl, data=mtcars)

#The slightly more complex way with more adaptability, using ggplot
library("ggplot2")
ggplot(mtcars, aes(x = cyl, y = mpg)) + geom_boxplot(aes(group=cyl))

#Yes, this makes sense - the more cylinders a car has, the more gas it will use and the lower the miles per gallon will be.


#Use the summarize and group by function to compute how many cars have each cylinder number

library("dplyr")
mtcars %>% group_by(cyl) %>% summarize(count = n())