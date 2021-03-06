library(ggplot2)

d <- ggplot(faithful, aes(x = eruptions, y = waiting))

d + geom_point()
#plot title update 

d + geom_point() + ggtitle("Old Faithful Eruption vs Waiting Times") +
  xlab("Eruption Time (min)") + ylab("Wating Time (min)")
#linela model 


#plot for the visual 
d + geom_point() + geom_smooth(method=lm)

#Eruption Lineal #1 no gray 
d + geom_point() + geom_smooth(method=lm, se=FALSE)


#Eruption Lineal Color change 
geom_smooth(method=lm, se=FALSE, color = "goldenrod2")


#little corelations samples 

d <- ggplot(USArrests, aes(x = UrbanPop, y = Murder))
d + geom_point() + geom_smooth(method=lm, se=FALSE)


#negative correlation plot 

d <- ggplot(mtcars, aes(x = disp, y = mpg))
d + geom_point() + geom_smooth(method=lm, se=FALSE)

#this is just to test corraletions 
cor.test(mtcars$hp, mtcars$cyl, method="pearson", use = "complete.obs")

install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")

mtcars_quant <- mtcars[, c(1,2,3,4,5,6,7)]

#correlation of plot 
chart.Correlation(mtcars_quant, histogram = FALSE, method = "pearson")
corr_matrix <- cor(mtcars_quant)

corr_matrix

#installed corr plot package
install.packages("corrplot")
library("corrplot")
corrplot(corr_matrix, type = "upper", order = "hclust", p.mat = corr_matrix,sig.level = 0.01, insig = "blank")
#lower corralation 
corrplot(corr_matrix, type = "lower", order = "hclust", p.mat = corr_matrix,sig.level = 0.01, insig = "blank")

head(cars)

lin_reg <- lm(dist ~ speed, cars)
print(lin_reg)

summary(lin_reg)

#sctter plot + fit line 

d <- ggplot(cars, aes(x = speed, y = dist))
d + geom_point()+geom_smooth(method = lm, se=FALSE)
