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


