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

fosterflakes
frostedflakes

head(frostedflakes)


t_obj <- t.test(frostedflakes$Lab, mu = 37)
print(t_obj)

d <- ggplot2(frostedflakes, aes(x = Lab))
d + geom_histogram(binwidth = 1) +
  geom_vline(xintercept = t_obj$conf.int[1], color = "red") +
  geom_vline(xintercept = t_obj$conf.int[2], color = "red") +
  geom_vline(xintercept = t_obj$null.value, color = "green")

ggplot(frostedflakes, aes(sample = Lab)) + geom_qq()

t_ind <- t.test(frostedflakes$Lab, frostedflakes$IA400, alternative="two.sided", var.equal=FALSE)
print(t_ind)
library(reshape2)
ff <- melt(frostedflakes, id="X")

ggplot(ff) + geom_boxplot(aes(x = variable, y = value)) +
  xlab("Test Method") + ylab("Percentage of Sugar")


scores <- read.csv("scores.csv")
head(scores)

t_dep <- t.test(scores$postest, scores$pretest, paired = TRUE)
t_dep

library(reshape2)
ss <- melt(scores, measure.vars = c("pretest", "postest"))


ggplot(ss) + geom_boxplot(aes(x = variable, y = value)) +
  xlab("Test") + ylab("Score")

