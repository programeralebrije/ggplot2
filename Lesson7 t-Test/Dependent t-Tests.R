View(nhtemp)
first25 <- nhtemp[1:25]
last25 <- nhtemp[36:60]
first25
last25

temp <- t.test(first25, last25, paired = TRUE)
temp

