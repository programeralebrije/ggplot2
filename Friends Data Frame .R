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
