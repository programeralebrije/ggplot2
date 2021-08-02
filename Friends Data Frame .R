Name <- c("Bob", "Nancy", "Cyrus", "Jackie")
Age <- c(36, 31, 26, 34)
Dominant_Hand <- c("Right", "Right", "Left", "Right")
friends <- data.frame(Name, Age, Dominant_Hand)
head(friends)
tail(friends)
friends
friends[3,2]
friends$Name
friends$Dominant_Hand
veiw(friends)
View(friends)
friends$Shoe_Size <- c(10,8,14,9)
ToothGrowth
View(ToothGrowth)
head(mtcars)
View(mtcars)
tail(mtcars)
library(readxl)
my_petsExcel <- read_excel("Pets.xlsx")

install.packages("dplyr")
library("dplyr")
filter(my_petsExcel, Animal == "Goat")
filter(my_petsExcel, Animal == "Goat", Age <= 2)
filter(my_petsExcel, Weight > 3)
filter(my_petsExcel, Animal %in% c("Goat", "Cat", "Guinea Pig"))
filter(my_petsExcel, Animal != "Gold Fish")
mammals <- filter(my_petsExcel, Animal != "Gold Fish")
mammals
filter(mtcars, cyl == 4)
filter(mtcars, hp < 100)
filter(mtcars, hp > 100)
summarise(mtcars, median.mpg = median(mpg))
mtcars %>% group_by(cyl) %>% summarise(median.mpg = median(mpg))

arrange(my_petsExcel, Age)
arrange(my_petsExcel, desc(Age))

select(my_petsExcel, Name, Animal)
mutate(my_petsExcel, Weight_kg = Weight/2.20462)
mutate(my_petsExcel, Status = "Alive")
summarize(my_petsExcel, ave_age = mean(Age))
my_petsExcel %>% group_by(Animal) %>% summarize(ave.age = mean(Age))
ggplot(morley, aes(x = Expt, y = Speed)) + geom_boxplot(aes(group=Expt))


morley
ggplot(morley, aes(x = Expt, y = Speed)) + geom_boxplot(aes(group=Expt))
head(morley)                    
morley %>% group_by(Expt) %>% summarize(m.speed = mean(Speed))
ggplot(stress_relief, aes(x = MeditationYN, y = BloodPressure)) + geom_boxplot(aes(group=MeditationYN))
