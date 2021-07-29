h + geom_histogram(binwidth = 10)
h + geom_histogram(binwidth = 10) +
  ggtitle("Histogram of Heights") +
  xlab("Height (in cm)")

#Relative Frequencies"

h + geom_histogram(binwidth = 10, aes(y = ..count../sum(..count..))) +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)") +
  ylab("Relative frequency")

h + geom_histogram(binwidth = 10, fill = "goldenrod", color = "deepskyblue4") +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)")

#Eruptions Histogram


faithful_histogram <- ggplot(faithful, aes(x = eruptions))
faithful_histogram + geom_histogram()


faithful_histogram + geom_histogram(breaks = seq(1.4, 5.2, by = 0.2))

faithful_histogram + geom_histogram(breaks = seq(1.4, 5.2, by = 0.2))


#Box Plot

head(cars)

d <- ggplot(cars, aes(x = "", y = dist))
d + geom_boxplot() + xlab("")

summary(cars$dist)


30 * 1.5 = 45

45 + 56 = 101

26 - 45 = -19

ggplot(faithful, aes(sample = eruptions)) + geom_qq()

ggplot(morley, aes(sample = Speed)) + geom_qq()