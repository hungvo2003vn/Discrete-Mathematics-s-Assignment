library(readr)
library(ggplot2)
library(dplyr)
library(lubridate)
library(foreign)

data <- read.csv("owid-covid-data.csv")
data <- data %>% na.omit()
data <- data %>% mutate(date = lubridate::mdy(date))

Australia <- filter(data, location == "Australia")
NewCaledonia <- filter(data, location == "New Caledonia")
NewZealand <- filter(data, location == "New Zealand")

ques1 = function(){
  last7days <- filter(data, date <= "2022-02-19" & date >= "2022-02-13")
  last7days <- filter(last7days, location == "Australia" | location == "New Caledonia" | location == "New Zealand")
  
  last7days.Australia <- filter(last7days, location == "Australia")
  last7days.NewCaledonia <- filter(last7days, location == "New Caledonia")
  last7days.NewZealand <- filter(last7days, location == "New Zealand")
  
  plot(last7days.Australia$new_cases, type = "b", xaxt = "n", ylim = c(-5000,35000), col = "red", xlab = "Date", ylab = "Numbers of New Cases", main = "New Cases in last 7 days in 2022", lwd = 2)
  lines(last7days.NewCaledonia$new_cases, type = "b", col = "blue", lwd = 2)
  lines(last7days.NewZealand$new_cases, type = "b", col = "green", lwd = 2)
  axis(side = 1,at=c(1,2,3,4,5,6,7),labels = c("2022-02-13","2022-02-14","2022-02-15","2022-02-16","2022-02-17","2022-02-18","2022-02-19"))
}

ques7 = function(){
  maxDeath.Australia <- filter(Australia, new_deaths == max(Australia$new_deaths))
  maxDeath.NewCAledonia <- filter(NewCaledonia, new_deaths == max(NewCaledonia$new_deaths))
  maxDeath.NewZealand <- filter(NewZealand, new_deaths == max(NewZealand$new_deaths))
  
  cat("Ngày có số lượng tử vong lớn nhất ở Australia là \n")
  print(maxDeath.Australia$date)
  cat("Ngày có số lượng tử vong lớn nhất ở New Caledonia là \n")
  print(maxDeath.NewCAledonia$date)
  cat("Ngày có số lượng tử vong lớn nhất ở New Zealand là \n")
  print(maxDeath.NewZealand$date)
}

  newCases.Australia <- Australia$new_cases
  newDeaths.Australia <- Australia$new_deaths
  data.Australia <- data.frame(newCases.Australia,newDeaths.Australia)
  data.Australia %>% datatable()
  
  cor(data.Australia)
  corrplot(cor(data.Australia), method = "shade")
  ggplot(data.Australia, aes(x = newCases.Australia, y = newDeaths.Australia)) + geom_point(col = "red")
  
  newCases.NewCaledonia <- NewCaledonia$new_cases
  newDeaths.NewCaledonia <- NewCaledonia$new_deaths
  data.NewCaledonia <- data.frame(newCases.NewCaledonia,newDeaths.NewCaledonia)
  data.NewCaledonia %>% datatable()
  
  cor(data.NewCaledonia)
  corrplot(cor(data.NewCaledonia), method = "shade")
  ggplot(data.NewCaledonia, aes(x = newCases.NewCaledonia, y = newDeaths.NewCaledonia)) + geom_point(col = "blue")
  
  newCases.NewZealand <- NewZealand$new_cases
  newDeaths.NewZealand <- NewZealand$new_deaths
  data.NewZealand <- data.frame(newCases.NewZealand,newDeaths.NewZealand)
  data.NewZealand %>% datatable()
  
  cor(data.NewZealand)
  corrplot(cor(data.NewZealand), method = "shade")
  ggplot(data.NewZealand, aes(x = newCases.NewZealand, y = newDeaths.NewZealand)) + geom_point(col = "green")


ques1()
ques7()
