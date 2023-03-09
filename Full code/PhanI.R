data <- read.csv("owid-covid-data.csv")

library(tidyverse)
library(dplyr)
library(tidyr)
library(lubridate)
library(psych)

data <- data %>% na.omit()
data <- filter(data, continent != "")
data <- data %>% mutate(date = lubridate::mdy(date))

iso_code <- data$iso_code
continent <- data$continent
location <- data$location
date <- data$date
new_cases <- data$new_cases
new_deaths <- data$new_deaths

ques1 <- function() {
  cat("Câu 1:", "\n")
  y <- unique(year(as.Date(date, format = "%m/%d/%Y")))
  cat("Không gian mẫu:", y, "\n")
}

ques2 <- function() {
  cat("Câu 2:", "\n")
  a <- data[, c(1, 2, 3)]
  a <- subset(a, continent != "")
  b <- a %>% group_by(iso_code, location) %>% group_keys()
  count <- c("count", as.character(dim(b)[1]))
  
  b <- b[1:10, c(1, 2)]
  b <- rbind(b, count)
  names(b) <- c("iso_code: ", "country")
  print(b, row.names  = F)
}

ques3 <- function() { 
  cat("Câu 3:","\n") 
  continent1 <- unique(continent) 
  continent1 <- subset(continent1, continent1 != "") 
  chauluc <- c("Châu Á","Châu Âu","Châu Phi","Bac Mi", "Nam Mi", "Chau Dai Duong" )
  s <- data.frame(continent1,chauluc,stringsAsFactors = F) 
  names(s) = c("Continent:",as.character(length(continent1))) 
  print(s, row.names = F) } 

ques4 <- function() { 
  cat("Câu 4:","\n") 
  a <- subset(data, continent != "")
  a <- a %>% group_by(continent) %>% tally()
  tong <- c("Tong: ", as.character(sum(a[2])))
  a <- rbind(a, tong)
  names(a) <- c("Continent: ", "Observations")
  print(a, row.names = F)
}

ques5 <- function() { 
  cat("Câu 5:","\n") 
  a <- subset(data, continent != "")  
  
  b <- a %>% group_by(iso_code) %>% tally()
  tong <- c("Tong:",sum(b[2]))
  b <- b[(nrow(b)-9):nrow(b), c(1, 2)]
  names(b) <- c("iso_code", "Observations")
  b <- rbind(b, tong)
  print(b, row.names = F)
}

ques6 <- function() { 
  cat("Câu 6:","\n") 
  a <- subset(data, continent != "")
  a <- a %>% group_by(continent) %>% tally()
  min <- a[a$'n' == min(a[2]),]
  names(min) <- c("Continent:", "Minimum")
  print(min , row.names = F)
}

ques7 <- function() { 
  cat("Câu 7:","\n") 
  a <- subset(data, continent != "")
  a <- a %>% group_by(continent) %>% tally()
  max <- a[a$'n' == max(a[2]),]
  names(max) <- c("Continent:", "Maximum")
  print(max , row.names = F)
}

ques8 <- function() { 
  a <- subset(data, continent != "")  
  a <- a %>% group_by(location) %>% tally()
  min <- a[a$'n' == min(a[2]),]
  names(min) <- c("Country:", "Minimum")
  print(min , row.names = F)
}

ques9 <- function() { 
  a <- subset(data, continent != "")  
  a <- a %>% group_by(location) %>% tally()
  max <- a[a$'n' == max(a[2]),]
  names(max) <- c("Country:", "Maximum")
  print(max , row.names = F)
}

ques10 <- function() { 
  a <- data %>% group_by(date) %>% tally()
  min <- a[a$'n' == min(a[2]),]
  names(min) <- c("Date:", "Minimum")
  print(min, row.names  = F)
}

ques11 <- function() { 
  a <- data %>% group_by(date) %>% tally()
  max <- a[a$'n' == max(a[2]),]
  names(max) <- c("Date:", "Maximum")
  print(max, row.names  = F)
}

ques12 = function() {
  cat("Câu 12:", "\n")
  temp <-  filter(data, nchar(continent) != 0)
  temp <- data.frame(table(temp$date, temp$continent))
  names(temp) <- c("Date","Continent","Numbers of Data")
  cat("Số lượng dữ liệu thể hiện thu thập dữ liệu được theo date và châu lục:","\n")
  print(temp)
}

ques13 = function() {
  cat("Câu 13:", "\n")
  temp <- data[,c(2,4)]
  temp <- subset(temp, continent != "")
  temp <- temp %>% group_by(continent, date) %>% tally()
  temp <- max(temp$n)
  cat("Số lượng dữ liệu thể hiện thu thập dữ liệu được là lớn nhất theo date và châu lục là", temp,"\n")
}

ques14 = function() {
  cat("Câu 14:", "\n")
  temp <- data[,c(2,4)]
  temp <- subset(temp, continent != "")
  temp <- temp %>% group_by(continent, date) %>% tally()
  temp <- min(temp$n)
  cat("Số lượng dữ liệu thể hiện thu thập dữ liệu được là nhỏ nhất theo date và châu lục là",temp,"\n")
}

ques15 = function(){
  cat("Câu 15:","\n")
  k <- "2022-02-19"
  t <- "Oceania"
  temp <- subset(data, iso_code != "")
  temp <- temp %>% group_by(continent,date) %>% tally()
  temp <- temp %>% filter(date == k) %>% filter(continent == t)
  cat("Số lượng dữ liệu thể hiện thu thập dữ liệu được ngày", k, "và châu lục", t, "là:", temp$n,"\n")
}

ques16 = function() {
  cat("Câu 16:", "\n")
  temp <- subset(data, iso_code != "")
  temp <- temp %>% group_by(iso_code) %>% tally()
  
  number <- temp %>% count(n)
  
  res <- data.frame()
  
  for (x in 1:length(number$nn)){
    if(number[x,2] > 1){
      res <- bind_rows(res, temp %>% filter(n == as.numeric(number[x,1])))
    }
  }
  cat("Các nước có số lượng dữ liệu thể hiện thu thập dữ liệu được là bằng nhau:","\n")
  print(res$iso_code)
}

ques17 = function() {
  cat("Câu 17:", "\n")
  temp <- subset(data, iso_code != "")
  temp <- temp %>% filter(str_length(iso_code) > 3) %>% distinct(iso_code, location, .keep_all = FALSE)
  
  print(temp)
}

ques1()
ques2()
ques3()
ques4()
ques5()
ques6()
ques7()
ques8()
ques9()
ques10()
ques11()
ques12()
ques13()
ques14()
ques15()
ques16()
ques17()