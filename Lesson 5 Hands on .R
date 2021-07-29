# Hands on Lesson 5

#This is to get access to different inherent R datasets

rr = data.frame(rivers)
rr1 = ggplot(rr, aes(y=rivers))


head(rr)

#create a histogram with suitable bin widths

rr = data.frame(rivers)
rr
miles<-c(rivers)
miles
miles_df<-data.frame(miles)
d<-ggplot(miles_df, aes(x=miles))d+geom_histogram()
d <-ggplot(miles_df, aes(x = miles)) 
d+geom_histogram()
rr1+geom_histogram(binwidth = 10, fill = "goldenrod", color = "deepskyblue4") +
  ggtitle("Rivers in North America") + xlab("Length in miles (in cm)")

#a box plot

d <- ggplot(rr, aes( x= "", y = miles))
d + geom_boxplot() + xlab("")


#normal probability plot

ggplot(rr, aes(sample=miles)) + geom_qq()

#Are there any outliers in this data set?

# Yes We have outliers 

#Are they high or low outliers?

# We have both 

#Do these data appear to come from a normal distribution?

# So this indicates that these data have a distribution that is approximately normal.