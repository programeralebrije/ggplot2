#lesson 9 Data Exploration 
library("ggplot2")
library("dplyr")
library("gapminder")
#View the countries from the gapminder dataset by usings the "levels" function
levels(gapminder$country)
#The 5 countries I chose were Japan, China, Mexico, Italy, and Peru
#View the data as a whole using the "View" function
View (gapminder)
#Make a data frame with only my 5 countries
myfive = gapminder %>% filter(country %in% c("Japan" , "China", "Mexico", "Italy", "Peru"))
#Filter the data to only see the year, country, and gdpPercap
myfive = gapminder %>% filter(country %in% c("Japan" , "China", "Mexico", "Italy", "Peru")) %>% select(country, gdpPercap, year)
#Make a plot to be able to visuialize the data
ggplot(myfive) + geom_line(aes(x= year , y= gdpPercap , color= country)) + ylab("GDP Per Capita") + ggtitle("GDP Per Capita each year")
#Filter the data so that there is only year, country, and LifeExp
myfive = gapminder %>% filter(country %in% c("Japan" , "China", "Mexico", "Italy", "Peru")) %>% select(country, lifeExp, year)
#Make a line plot with the LifeExp and year for each of my 5 countries
ggplot(myfive) + geom_line(aes(x= year , y= lifeExp , color= country)) + ylab("Life Expectancy") + ggtitle("Life Expectancy In Each Country")
#Get the median the life expectancy for each year
median <- gapminder %>% select(lifeExp, year) %>% 
  group_by(year) %>% summarise(mytopfive=median(lifeExp))
median
