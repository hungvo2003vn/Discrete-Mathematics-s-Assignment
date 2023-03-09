my_data <- read.csv(file = "owid-covid-data.csv", header = TRUE)
library(ggplot2)
library("ggpubr")
time <- as.Date(my_data$date, "%m/%d/%Y")
month <- format(time, "%B")
day <- format(time, "%d")
year <- format(time, "%Y")
my_data$month <- month
my_data$day <- day
my_data$year <- year
options(scipen = 100)
#Sentence 1:
#2020:
data_2020 <- my_data[which((my_data$iso_code == "OWID_WRL") & (my_data$year == "2020")), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
#January:
data_January_2020 <- data_2020[which(data_2020$month == "January"), names(data_2020) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_January_2020 <- c()
figure_January_2020[1] = data_January_2020$new_cases[1]
figure_January_2020[2] = (data_January_2020$new_cases[1] + data_January_2020$new_cases[2]) / 2
figure_January_2020[3] = (data_January_2020$new_cases[1] + data_January_2020$new_cases[2] + data_January_2020$new_cases[3]) / 3
figure_January_2020[4] = (data_January_2020$new_cases[1] + data_January_2020$new_cases[2] + data_January_2020$new_cases[3] + data_January_2020$new_cases[4]) / 4
figure_January_2020[5] = (data_January_2020$new_cases[1] + data_January_2020$new_cases[2] + data_January_2020$new_cases[3] + data_January_2020$new_cases[4] + data_January_2020$new_cases[5]) / 5
figure_January_2020[6] = (data_January_2020$new_cases[1] + data_January_2020$new_cases[2] + data_January_2020$new_cases[3] + data_January_2020$new_cases[4] + data_January_2020$new_cases[5] + data_January_2020$new_cases[6]) / 6
for (i in 7: length(data_January_2020$day)) {
  figure_January_2020[i] = (data_January_2020$new_cases[i-6] + data_January_2020$new_cases[i-5] + data_January_2020$new_cases[i-4] + data_January_2020$new_cases[i-3] + data_January_2020$new_cases[i-2] + data_January_2020$new_cases[i-1] + data_January_2020$new_cases[i]) / 7
}
#July:
data_July_2020 <- data_2020[which(data_2020$month == "July"), names(data_2020) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_July_2020 <- c()
figure_July_2020[1] = data_July_2020$new_cases[1]
figure_July_2020[2] = (data_July_2020$new_cases[1] + data_July_2020$new_cases[2]) / 2
figure_July_2020[3] = (data_July_2020$new_cases[1] + data_July_2020$new_cases[2] + data_July_2020$new_cases[3]) / 3
figure_July_2020[4] = (data_July_2020$new_cases[1] + data_July_2020$new_cases[2] + data_July_2020$new_cases[3] + data_July_2020$new_cases[4]) / 4
figure_July_2020[5] = (data_July_2020$new_cases[1] + data_July_2020$new_cases[2] + data_July_2020$new_cases[3] + data_July_2020$new_cases[4] + data_July_2020$new_cases[5]) / 5
figure_July_2020[6] = (data_July_2020$new_cases[1] + data_July_2020$new_cases[2] + data_July_2020$new_cases[3] + data_July_2020$new_cases[4] + data_July_2020$new_cases[5] + data_July_2020$new_cases[6]) / 6
for (i in 7: length(data_July_2020$day)) {
  figure_July_2020[i] = (data_July_2020$new_cases[i-6] + data_July_2020$new_cases[i-5] + data_July_2020$new_cases[i-4] + data_July_2020$new_cases[i-3] + data_July_2020$new_cases[i-2] + data_July_2020$new_cases[i-1] + data_July_2020$new_cases[i]) / 7
}
#August:
data_August_2020 <- data_2020[which(data_2020$month == "August"), names(data_2020) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_August_2020 <- c()
figure_August_2020[1] = data_August_2020$new_cases[1]
figure_August_2020[2] = (data_August_2020$new_cases[1] + data_August_2020$new_cases[2]) / 2
figure_August_2020[3] = (data_August_2020$new_cases[1] + data_August_2020$new_cases[2] + data_August_2020$new_cases[3]) / 3
figure_August_2020[4] = (data_August_2020$new_cases[1] + data_August_2020$new_cases[2] + data_August_2020$new_cases[3] + data_August_2020$new_cases[4]) / 4
figure_August_2020[5] = (data_August_2020$new_cases[1] + data_August_2020$new_cases[2] + data_August_2020$new_cases[3] + data_August_2020$new_cases[4] + data_August_2020$new_cases[5]) / 5
figure_August_2020[6] = (data_August_2020$new_cases[1] + data_August_2020$new_cases[2] + data_August_2020$new_cases[3] + data_August_2020$new_cases[4] + data_August_2020$new_cases[5] + data_August_2020$new_cases[6]) / 6
for (i in 7: length(data_August_2020$day)) {
  figure_August_2020[i] = (data_August_2020$new_cases[i-6] + data_August_2020$new_cases[i-5] + data_August_2020$new_cases[i-4] + data_August_2020$new_cases[i-3] + data_August_2020$new_cases[i-2] + data_August_2020$new_cases[i-1] + data_August_2020$new_cases[i]) / 7
}
#October:
data_October_2020 <- data_2020[which(data_2020$month == "October"), names(data_2020) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_October_2020 <- c()
figure_October_2020[1] = data_October_2020$new_cases[1]
figure_October_2020[2] = (data_October_2020$new_cases[1] + data_October_2020$new_cases[2]) / 2
figure_October_2020[3] = (data_October_2020$new_cases[1] + data_October_2020$new_cases[2] + data_October_2020$new_cases[3]) / 3
figure_October_2020[4] = (data_October_2020$new_cases[1] + data_October_2020$new_cases[2] + data_October_2020$new_cases[3] + data_October_2020$new_cases[4]) / 4
figure_October_2020[5] = (data_October_2020$new_cases[1] + data_October_2020$new_cases[2] + data_October_2020$new_cases[3] + data_October_2020$new_cases[4] + data_October_2020$new_cases[5]) / 5
figure_October_2020[6] = (data_October_2020$new_cases[1] + data_October_2020$new_cases[2] + data_October_2020$new_cases[3] + data_October_2020$new_cases[4] + data_October_2020$new_cases[5] + data_October_2020$new_cases[6]) / 6
for (i in 7: length(data_October_2020$day)) {
  figure_October_2020[i] = (data_October_2020$new_cases[i-6] + data_October_2020$new_cases[i-5] + data_October_2020$new_cases[i-4] + data_October_2020$new_cases[i-3] + data_October_2020$new_cases[i-2] + data_October_2020$new_cases[i-1] + data_October_2020$new_cases[i]) / 7
}
data_January_2020$figure_2020 <- figure_January_2020
data_July_2020$figure_2020 <- figure_July_2020
data_August_2020$figure_2020 <- figure_August_2020
data_October_2020$figure_2020 <- figure_October_2020
ggplot(rbind(data_January_2020,data_July_2020,data_August_2020,data_October_2020), aes(x = day, y = figure_2020, group = month, color = month)) + geom_line() +  labs(title = "New cases of COVID 19 in the world in 2020 for average of 7 days", x = "days", y = "new cases")
#2021:
data_2021 <- my_data[which((my_data$iso_code == "OWID_WRL") & (my_data$year == "2021")), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
#January:
data_January_2021 <- data_2021[which(data_2021$month == "January"), names(data_2021) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_January_2021 <- c()
figure_January_2021[1] = data_January_2021$new_cases[1]
figure_January_2021[2] = (data_January_2021$new_cases[1] + data_January_2021$new_cases[2]) / 2
figure_January_2021[3] = (data_January_2021$new_cases[1] + data_January_2021$new_cases[2] + data_January_2021$new_cases[3]) / 3
figure_January_2021[4] = (data_January_2021$new_cases[1] + data_January_2021$new_cases[2] + data_January_2021$new_cases[3] + data_January_2021$new_cases[4]) / 4
figure_January_2021[5] = (data_January_2021$new_cases[1] + data_January_2021$new_cases[2] + data_January_2021$new_cases[3] + data_January_2021$new_cases[4] + data_January_2021$new_cases[5]) / 5
figure_January_2021[6] = (data_January_2021$new_cases[1] + data_January_2021$new_cases[2] + data_January_2021$new_cases[3] + data_January_2021$new_cases[4] + data_January_2021$new_cases[5] + data_January_2021$new_cases[6]) / 6
for (i in 7: length(data_January_2021$day)) {
  figure_January_2021[i] = (data_January_2021$new_cases[i-6] + data_January_2021$new_cases[i-5] + data_January_2021$new_cases[i-4] + data_January_2021$new_cases[i-3] + data_January_2021$new_cases[i-2] + data_January_2021$new_cases[i-1] + data_January_2021$new_cases[i]) / 7
}
#July:
data_July_2021 <- data_2021[which(data_2021$month == "July"), names(data_2021) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_July_2021 <- c()
figure_July_2021[1] = data_July_2021$new_cases[1]
figure_July_2021[2] = (data_July_2021$new_cases[1] + data_July_2021$new_cases[2]) / 2
figure_July_2021[3] = (data_July_2021$new_cases[1] + data_July_2021$new_cases[2] + data_July_2021$new_cases[3]) / 3
figure_July_2021[4] = (data_July_2021$new_cases[1] + data_July_2021$new_cases[2] + data_July_2021$new_cases[3] + data_July_2021$new_cases[4]) / 4
figure_July_2021[5] = (data_July_2021$new_cases[1] + data_July_2021$new_cases[2] + data_July_2021$new_cases[3] + data_July_2021$new_cases[4] + data_July_2021$new_cases[5]) / 5
figure_July_2021[6] = (data_July_2021$new_cases[1] + data_July_2021$new_cases[2] + data_July_2021$new_cases[3] + data_July_2021$new_cases[4] + data_July_2021$new_cases[5] + data_July_2021$new_cases[6]) / 6
for (i in 7: length(data_July_2021$day)) {
  figure_July_2021[i] = (data_July_2021$new_cases[i-6] + data_July_2021$new_cases[i-5] + data_July_2021$new_cases[i-4] + data_July_2021$new_cases[i-3] + data_July_2021$new_cases[i-2] + data_July_2021$new_cases[i-1] + data_July_2021$new_cases[i]) / 7
}
#August:
data_August_2021 <- data_2021[which(data_2021$month == "August"), names(data_2021) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_August_2021 <- c()
figure_August_2021[1] = data_August_2021$new_cases[1]
figure_August_2021[2] = (data_August_2021$new_cases[1] + data_August_2021$new_cases[2]) / 2
figure_August_2021[3] = (data_August_2021$new_cases[1] + data_August_2021$new_cases[2] + data_August_2021$new_cases[3]) / 3
figure_August_2021[4] = (data_August_2021$new_cases[1] + data_August_2021$new_cases[2] + data_August_2021$new_cases[3] + data_August_2021$new_cases[4]) / 4
figure_August_2021[5] = (data_August_2021$new_cases[1] + data_August_2021$new_cases[2] + data_August_2021$new_cases[3] + data_August_2021$new_cases[4] + data_August_2021$new_cases[5]) / 5
figure_August_2021[6] = (data_August_2021$new_cases[1] + data_August_2021$new_cases[2] + data_August_2021$new_cases[3] + data_August_2021$new_cases[4] + data_August_2021$new_cases[5] + data_August_2021$new_cases[6]) / 6
for (i in 7: length(data_August_2021$day)) {
  figure_August_2021[i] = (data_August_2021$new_cases[i-6] + data_August_2021$new_cases[i-5] + data_August_2021$new_cases[i-4] + data_August_2021$new_cases[i-3] + data_August_2021$new_cases[i-2] + data_August_2021$new_cases[i-1] + data_August_2021$new_cases[i]) / 7
}
#October:
data_October_2021 <- data_2021[which(data_2021$month == "October"), names(data_2021) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_October_2021 <- c()
figure_October_2021[1] = data_October_2021$new_cases[1]
figure_October_2021[2] = (data_October_2021$new_cases[1] + data_October_2021$new_cases[2]) / 2
figure_October_2021[3] = (data_October_2021$new_cases[1] + data_October_2021$new_cases[2] + data_October_2021$new_cases[3]) / 3
figure_October_2021[4] = (data_October_2021$new_cases[1] + data_October_2021$new_cases[2] + data_October_2021$new_cases[3] + data_October_2021$new_cases[4]) / 4
figure_October_2021[5] = (data_October_2021$new_cases[1] + data_October_2021$new_cases[2] + data_October_2021$new_cases[3] + data_October_2021$new_cases[4] + data_October_2021$new_cases[5]) / 5
figure_October_2021[6] = (data_October_2021$new_cases[1] + data_October_2021$new_cases[2] + data_October_2021$new_cases[3] + data_October_2021$new_cases[4] + data_October_2021$new_cases[5] + data_October_2021$new_cases[6]) / 6
for (i in 7: length(data_October_2021$day)) {
  figure_October_2021[i] = (data_October_2021$new_cases[i-6] + data_October_2021$new_cases[i-5] + data_October_2021$new_cases[i-4] + data_October_2021$new_cases[i-3] + data_October_2021$new_cases[i-2] + data_October_2021$new_cases[i-1] + data_October_2021$new_cases[i]) / 7
}
data_January_2021$figure_2021 <- figure_January_2021
data_July_2021$figure_2021 <- figure_July_2021
data_August_2021$figure_2021 <- figure_August_2021
data_October_2021$figure_2021 <- figure_October_2021
ggplot(rbind(data_January_2021,data_July_2021,data_August_2021,data_October_2021), aes(x = day, y = figure_2021, group = month, color = month)) + geom_line() +  labs(title = "New cases of COVID 19 in the world in 2021 for average of 7 days", x = "days", y = "new cases")
#2022:
data_2022 <- my_data[which((my_data$iso_code == "OWID_WRL") & (my_data$year == "2022")), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
#January:
data_January_2022 <- data_2022[which(data_2022$month == "January"), names(data_2022) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
figure_January_2022 <- c()
figure_January_2022[1] = data_January_2022$new_cases[1]
figure_January_2022[2] = (data_January_2022$new_cases[1] + data_January_2022$new_cases[2]) / 2
figure_January_2022[3] = (data_January_2022$new_cases[1] + data_January_2022$new_cases[2] + data_January_2022$new_cases[3]) / 3
figure_January_2022[4] = (data_January_2022$new_cases[1] + data_January_2022$new_cases[2] + data_January_2022$new_cases[3] + data_January_2022$new_cases[4]) / 4
figure_January_2022[5] = (data_January_2022$new_cases[1] + data_January_2022$new_cases[2] + data_January_2022$new_cases[3] + data_January_2022$new_cases[4] + data_January_2022$new_cases[5]) / 5
figure_January_2022[6] = (data_January_2022$new_cases[1] + data_January_2022$new_cases[2] + data_January_2022$new_cases[3] + data_January_2022$new_cases[4] + data_January_2022$new_cases[5] + data_January_2022$new_cases[6]) / 6
for (i in 7: length(data_January_2022$day)) {
  figure_January_2022[i] = (data_January_2022$new_cases[i-6] + data_January_2022$new_cases[i-5] + data_January_2022$new_cases[i-4] + data_January_2022$new_cases[i-3] + data_January_2022$new_cases[i-2] + data_January_2022$new_cases[i-1] + data_January_2022$new_cases[i]) / 7
}
data_January_2022$figure_2022 <- figure_January_2022
ggplot(data_January_2022, aes(x = day, y = figure_2022, group = month, color = month)) + geom_line() +  labs(title = "New cases of COVID 19 in the world in 2022 for average of 7 days", x = "days", y = "new cases")
#Sentence 2:
#2020:
#January:
figure_deaths_January_2020 <- c()
figure_deaths_January_2020[1] = data_January_2020$new_deaths[1]
figure_deaths_January_2020[2] = (data_January_2020$new_deaths[1] + data_January_2020$new_deaths[2]) / 2
figure_deaths_January_2020[3] = (data_January_2020$new_deaths[1] + data_January_2020$new_deaths[2] + data_January_2020$new_deaths[3]) / 3
figure_deaths_January_2020[4] = (data_January_2020$new_deaths[1] + data_January_2020$new_deaths[2] + data_January_2020$new_deaths[3] + data_January_2020$new_deaths[4]) / 4
figure_deaths_January_2020[5] = (data_January_2020$new_deaths[1] + data_January_2020$new_deaths[2] + data_January_2020$new_deaths[3] + data_January_2020$new_deaths[4] + data_January_2020$new_deaths[5]) / 5
figure_deaths_January_2020[6] = (data_January_2020$new_deaths[1] + data_January_2020$new_deaths[2] + data_January_2020$new_deaths[3] + data_January_2020$new_deaths[4] + data_January_2020$new_deaths[5] + data_January_2020$new_deaths[6]) / 6
for (i in 7: length(data_January_2020$day)) {
  figure_deaths_January_2020[i] = (data_January_2020$new_deaths[i-6] + data_January_2020$new_deaths[i-5] + data_January_2020$new_deaths[i-4] + data_January_2020$new_deaths[i-3] + data_January_2020$new_deaths[i-2] + data_January_2020$new_deaths[i-1] + data_January_2020$new_deaths[i]) / 7
}
#July:
figure_deaths_July_2020 <- c()
figure_deaths_July_2020[1] = data_July_2020$new_deaths[1]
figure_deaths_July_2020[2] = (data_July_2020$new_deaths[1] + data_July_2020$new_deaths[2]) / 2
figure_deaths_July_2020[3] = (data_July_2020$new_deaths[1] + data_July_2020$new_deaths[2] + data_July_2020$new_deaths[3]) / 3
figure_deaths_July_2020[4] = (data_July_2020$new_deaths[1] + data_July_2020$new_deaths[2] + data_July_2020$new_deaths[3] + data_July_2020$new_deaths[4]) / 4
figure_deaths_July_2020[5] = (data_July_2020$new_deaths[1] + data_July_2020$new_deaths[2] + data_July_2020$new_deaths[3] + data_July_2020$new_deaths[4] + data_July_2020$new_deaths[5]) / 5
figure_deaths_July_2020[6] = (data_July_2020$new_deaths[1] + data_July_2020$new_deaths[2] + data_July_2020$new_deaths[3] + data_July_2020$new_deaths[4] + data_July_2020$new_deaths[5] + data_July_2020$new_deaths[6]) / 6
for (i in 7: length(data_July_2020$day)) {
  figure_deaths_July_2020[i] = (data_July_2020$new_deaths[i-6] + data_July_2020$new_deaths[i-5] + data_July_2020$new_deaths[i-4] + data_July_2020$new_deaths[i-3] + data_July_2020$new_deaths[i-2] + data_July_2020$new_deaths[i-1] + data_July_2020$new_deaths[i]) / 7
}
#August:
figure_deaths_August_2020 <- c()
figure_deaths_August_2020[1] = data_August_2020$new_deaths[1]
figure_deaths_August_2020[2] = (data_August_2020$new_deaths[1] + data_August_2020$new_deaths[2]) / 2
figure_deaths_August_2020[3] = (data_August_2020$new_deaths[1] + data_August_2020$new_deaths[2] + data_August_2020$new_deaths[3]) / 3
figure_deaths_August_2020[4] = (data_August_2020$new_deaths[1] + data_August_2020$new_deaths[2] + data_August_2020$new_deaths[3] + data_August_2020$new_deaths[4]) / 4
figure_deaths_August_2020[5] = (data_August_2020$new_deaths[1] + data_August_2020$new_deaths[2] + data_August_2020$new_deaths[3] + data_August_2020$new_deaths[4] + data_August_2020$new_deaths[5]) / 5
figure_deaths_August_2020[6] = (data_August_2020$new_deaths[1] + data_August_2020$new_deaths[2] + data_August_2020$new_deaths[3] + data_August_2020$new_deaths[4] + data_August_2020$new_deaths[5] + data_August_2020$new_deaths[6]) / 6
for (i in 7: length(data_August_2020$day)) {
  figure_deaths_August_2020[i] = (data_August_2020$new_deaths[i-6] + data_August_2020$new_deaths[i-5] + data_August_2020$new_deaths[i-4] + data_August_2020$new_deaths[i-3] + data_August_2020$new_deaths[i-2] + data_August_2020$new_deaths[i-1] + data_August_2020$new_deaths[i]) / 7
}
#October:
figure_deaths_October_2020 <- c()
figure_deaths_October_2020[1] = data_October_2020$new_deaths[1]
figure_deaths_October_2020[2] = (data_October_2020$new_deaths[1] + data_October_2020$new_deaths[2]) / 2
figure_deaths_October_2020[3] = (data_October_2020$new_deaths[1] + data_October_2020$new_deaths[2] + data_October_2020$new_deaths[3]) / 3
figure_deaths_October_2020[4] = (data_October_2020$new_deaths[1] + data_October_2020$new_deaths[2] + data_October_2020$new_deaths[3] + data_October_2020$new_deaths[4]) / 4
figure_deaths_October_2020[5] = (data_October_2020$new_deaths[1] + data_October_2020$new_deaths[2] + data_October_2020$new_deaths[3] + data_October_2020$new_deaths[4] + data_October_2020$new_deaths[5]) / 5
figure_deaths_October_2020[6] = (data_October_2020$new_deaths[1] + data_October_2020$new_deaths[2] + data_October_2020$new_deaths[3] + data_October_2020$new_deaths[4] + data_October_2020$new_deaths[5] + data_October_2020$new_deaths[6]) / 6
for (i in 7: length(data_October_2020$day)) {
  figure_deaths_October_2020[i] = (data_October_2020$new_deaths[i-6] + data_October_2020$new_deaths[i-5] + data_October_2020$new_deaths[i-4] + data_October_2020$new_deaths[i-3] + data_October_2020$new_deaths[i-2] + data_October_2020$new_deaths[i-1] + data_October_2020$new_deaths[i]) / 7
}
data_January_2020$figure_deaths_2020 <- figure_deaths_January_2020
data_July_2020$figure_deaths_2020 <- figure_deaths_July_2020
data_August_2020$figure_deaths_2020 <- figure_deaths_August_2020
data_October_2020$figure_deaths_2020 <- figure_deaths_October_2020
ggplot(rbind(data_January_2020,data_July_2020,data_August_2020,data_October_2020), aes(x = day, y = figure_deaths_2020, group = month, color = month)) + geom_line() +  labs(title = "New deaths of COVID 19 in the world in 2020 for average of 7 days", x = "days", y = "new deaths")
#2021:
#January:
figure_deaths_January_2021 <- c()
figure_deaths_January_2021[1] = data_January_2021$new_deaths[1]
figure_deaths_January_2021[2] = (data_January_2021$new_deaths[1] + data_January_2021$new_deaths[2]) / 2
figure_deaths_January_2021[3] = (data_January_2021$new_deaths[1] + data_January_2021$new_deaths[2] + data_January_2021$new_deaths[3]) / 3
figure_deaths_January_2021[4] = (data_January_2021$new_deaths[1] + data_January_2021$new_deaths[2] + data_January_2021$new_deaths[3] + data_January_2021$new_deaths[4]) / 4
figure_deaths_January_2021[5] = (data_January_2021$new_deaths[1] + data_January_2021$new_deaths[2] + data_January_2021$new_deaths[3] + data_January_2021$new_deaths[4] + data_January_2021$new_deaths[5]) / 5
figure_deaths_January_2021[6] = (data_January_2021$new_deaths[1] + data_January_2021$new_deaths[2] + data_January_2021$new_deaths[3] + data_January_2021$new_deaths[4] + data_January_2021$new_deaths[5] + data_January_2021$new_deaths[6]) / 6
for (i in 7: length(data_January_2021$day)) {
  figure_deaths_January_2021[i] = (data_January_2021$new_deaths[i-6] + data_January_2021$new_deaths[i-5] + data_January_2021$new_deaths[i-4] + data_January_2021$new_deaths[i-3] + data_January_2021$new_deaths[i-2] + data_January_2021$new_deaths[i-1] + data_January_2021$new_deaths[i]) / 7
}
#July:
figure_deaths_July_2021 <- c()
figure_deaths_July_2021[1] = data_July_2021$new_deaths[1]
figure_deaths_July_2021[2] = (data_July_2021$new_deaths[1] + data_July_2021$new_deaths[2]) / 2
figure_deaths_July_2021[3] = (data_July_2021$new_deaths[1] + data_July_2021$new_deaths[2] + data_July_2021$new_deaths[3]) / 3
figure_deaths_July_2021[4] = (data_July_2021$new_deaths[1] + data_July_2021$new_deaths[2] + data_July_2021$new_deaths[3] + data_July_2021$new_deaths[4]) / 4
figure_deaths_July_2021[5] = (data_July_2021$new_deaths[1] + data_July_2021$new_deaths[2] + data_July_2021$new_deaths[3] + data_July_2021$new_deaths[4] + data_July_2021$new_deaths[5]) / 5
figure_deaths_July_2021[6] = (data_July_2021$new_deaths[1] + data_July_2021$new_deaths[2] + data_July_2021$new_deaths[3] + data_July_2021$new_deaths[4] + data_July_2021$new_deaths[5] + data_July_2021$new_deaths[6]) / 6
for (i in 7: length(data_July_2021$day)) {
  figure_deaths_July_2021[i] = (data_July_2021$new_deaths[i-6] + data_July_2021$new_deaths[i-5] + data_July_2021$new_deaths[i-4] + data_July_2021$new_deaths[i-3] + data_July_2021$new_deaths[i-2] + data_July_2021$new_deaths[i-1] + data_July_2021$new_deaths[i]) / 7
}
#August:
figure_deaths_August_2021 <- c()
figure_deaths_August_2021[1] = data_August_2021$new_deaths[1]
figure_deaths_August_2021[2] = (data_August_2021$new_deaths[1] + data_August_2021$new_deaths[2]) / 2
figure_deaths_August_2021[3] = (data_August_2021$new_deaths[1] + data_August_2021$new_deaths[2] + data_August_2021$new_deaths[3]) / 3
figure_deaths_August_2021[4] = (data_August_2021$new_deaths[1] + data_August_2021$new_deaths[2] + data_August_2021$new_deaths[3] + data_August_2021$new_deaths[4]) / 4
figure_deaths_August_2021[5] = (data_August_2021$new_deaths[1] + data_August_2021$new_deaths[2] + data_August_2021$new_deaths[3] + data_August_2021$new_deaths[4] + data_August_2021$new_deaths[5]) / 5
figure_deaths_August_2021[6] = (data_August_2021$new_deaths[1] + data_August_2021$new_deaths[2] + data_August_2021$new_deaths[3] + data_August_2021$new_deaths[4] + data_August_2021$new_deaths[5] + data_August_2021$new_deaths[6]) / 6
for (i in 7: length(data_August_2021$day)) {
  figure_deaths_August_2021[i] = (data_August_2021$new_deaths[i-6] + data_August_2021$new_deaths[i-5] + data_August_2021$new_deaths[i-4] + data_August_2021$new_deaths[i-3] + data_August_2021$new_deaths[i-2] + data_August_2021$new_deaths[i-1] + data_August_2021$new_deaths[i]) / 7
}
#October:
figure_deaths_October_2021 <- c()
figure_deaths_October_2021[1] = data_October_2021$new_deaths[1]
figure_deaths_October_2021[2] = (data_October_2021$new_deaths[1] + data_October_2021$new_deaths[2]) / 2
figure_deaths_October_2021[3] = (data_October_2021$new_deaths[1] + data_October_2021$new_deaths[2] + data_October_2021$new_deaths[3]) / 3
figure_deaths_October_2021[4] = (data_October_2021$new_deaths[1] + data_October_2021$new_deaths[2] + data_October_2021$new_deaths[3] + data_October_2021$new_deaths[4]) / 4
figure_deaths_October_2021[5] = (data_October_2021$new_deaths[1] + data_October_2021$new_deaths[2] + data_October_2021$new_deaths[3] + data_October_2021$new_deaths[4] + data_October_2021$new_deaths[5]) / 5
figure_deaths_October_2021[6] = (data_October_2021$new_deaths[1] + data_October_2021$new_deaths[2] + data_October_2021$new_deaths[3] + data_October_2021$new_deaths[4] + data_October_2021$new_deaths[5] + data_October_2021$new_deaths[6]) / 6
for (i in 7: length(data_October_2021$day)) {
  figure_deaths_October_2021[i] = (data_October_2021$new_deaths[i-6] + data_October_2021$new_deaths[i-5] + data_October_2021$new_deaths[i-4] + data_October_2021$new_deaths[i-3] + data_October_2021$new_deaths[i-2] + data_October_2021$new_deaths[i-1] + data_October_2021$new_deaths[i]) / 7
}
data_January_2021$figure_deaths_2021 <- figure_deaths_January_2021
data_July_2021$figure_deaths_2021 <- figure_deaths_July_2021
data_August_2021$figure_deaths_2021 <- figure_deaths_August_2021
data_October_2021$figure_deaths_2021 <- figure_deaths_October_2021
ggplot(rbind(data_January_2021,data_July_2021,data_August_2021,data_October_2021), aes(x = day, y = figure_deaths_2021, group = month, color = month)) + geom_line() +  labs(title = "New deaths of COVID 19 in the world in 2021 for average of 7 days", x = "days", y = "new deaths")
#2022:
#January:
data_January_2022 <- data_2022[which(data_2022$month == "January"), names(data_2022) %in% c("iso_code","continent","location","date","new_deaths","new_deaths","month","day","year") ]
figure_deaths_January_2022 <- c()
figure_deaths_January_2022[1] = data_January_2022$new_deaths[1]
figure_deaths_January_2022[2] = (data_January_2022$new_deaths[1] + data_January_2022$new_deaths[2]) / 2
figure_deaths_January_2022[3] = (data_January_2022$new_deaths[1] + data_January_2022$new_deaths[2] + data_January_2022$new_deaths[3]) / 3
figure_deaths_January_2022[4] = (data_January_2022$new_deaths[1] + data_January_2022$new_deaths[2] + data_January_2022$new_deaths[3] + data_January_2022$new_deaths[4]) / 4
figure_deaths_January_2022[5] = (data_January_2022$new_deaths[1] + data_January_2022$new_deaths[2] + data_January_2022$new_deaths[3] + data_January_2022$new_deaths[4] + data_January_2022$new_deaths[5]) / 5
figure_deaths_January_2022[6] = (data_January_2022$new_deaths[1] + data_January_2022$new_deaths[2] + data_January_2022$new_deaths[3] + data_January_2022$new_deaths[4] + data_January_2022$new_deaths[5] + data_January_2022$new_deaths[6]) / 6
for (i in 7: length(data_January_2022$day)) {
  figure_deaths_January_2022[i] = (data_January_2022$new_deaths[i-6] + data_January_2022$new_deaths[i-5] + data_January_2022$new_deaths[i-4] + data_January_2022$new_deaths[i-3] + data_January_2022$new_deaths[i-2] + data_January_2022$new_deaths[i-1] + data_January_2022$new_deaths[i]) / 7
}
data_January_2022$figure_deaths_2022 <- figure_deaths_January_2022
ggplot(data_January_2022, aes(x = day, y = figure_deaths_2022, group = month, color = month)) + geom_line() +  labs(title = "New deaths of COVID 19 in the world in 2022 for average of 7 days", x = "days", y = "new deaths")
#Sentence 3:
#2020:
data_November.December_2020 <- data_2020[which((data_2020$month == "November") | (data_2020$month == "December") ), names(data_2020) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
data_November.December_2020$date <- as.Date(data_November.December_2020$date, "%m/%d/%Y")
figure_November.December_2020 <- c()
figure_November.December_2020[1] = data_November.December_2020$new_cases[1]
figure_November.December_2020[2] = (data_November.December_2020$new_cases[1] + data_November.December_2020$new_cases[2]) / 2
figure_November.December_2020[3] = (data_November.December_2020$new_cases[1] + data_November.December_2020$new_cases[2] + data_November.December_2020$new_cases[3]) / 3
figure_November.December_2020[4] = (data_November.December_2020$new_cases[1] + data_November.December_2020$new_cases[2] + data_November.December_2020$new_cases[3] + data_November.December_2020$new_cases[4]) / 4
figure_November.December_2020[5] = (data_November.December_2020$new_cases[1] + data_November.December_2020$new_cases[2] + data_November.December_2020$new_cases[3] + data_November.December_2020$new_cases[4] + data_November.December_2020$new_cases[5]) / 5
figure_November.December_2020[6] = (data_November.December_2020$new_cases[1] + data_November.December_2020$new_cases[2] + data_November.December_2020$new_cases[3] + data_November.December_2020$new_cases[4] + data_November.December_2020$new_cases[5] + data_November.December_2020$new_cases[6]) / 6
for (i in 7: 61) {
  figure_November.December_2020[i] = (data_November.December_2020$new_cases[i-6] + data_November.December_2020$new_cases[i-5] + data_November.December_2020$new_cases[i-4] + data_November.December_2020$new_cases[i-3] + data_November.December_2020$new_cases[i-2] + data_November.December_2020$new_cases[i-1] + data_November.December_2020$new_cases[i]) / 7
}
data_November.December_2020$figure <- figure_November.December_2020
ggplot(data_November.December_2020, aes(x = date, y = figure, group = 1)) + geom_line() +  labs(title = "New cases in the world in November and December 2020 for average of 7 days", x = "days", y = "new cases")
data_November.December_2021 <- data_2021[which((data_2021$month == "November") | (data_2021$month == "December") ), names(data_2021) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
data_November.December_2021$date <- as.Date(data_November.December_2021$date, "%m/%d/%Y")
figure_November.December_2021 <- c()
figure_November.December_2021[1] = data_November.December_2021$new_cases[1]
figure_November.December_2021[2] = (data_November.December_2021$new_cases[1] + data_November.December_2021$new_cases[2]) / 2
figure_November.December_2021[3] = (data_November.December_2021$new_cases[1] + data_November.December_2021$new_cases[2] + data_November.December_2021$new_cases[3]) / 3
figure_November.December_2021[4] = (data_November.December_2021$new_cases[1] + data_November.December_2021$new_cases[2] + data_November.December_2021$new_cases[3] + data_November.December_2021$new_cases[4]) / 4
figure_November.December_2021[5] = (data_November.December_2021$new_cases[1] + data_November.December_2021$new_cases[2] + data_November.December_2021$new_cases[3] + data_November.December_2021$new_cases[4] + data_November.December_2021$new_cases[5]) / 5
figure_November.December_2021[6] = (data_November.December_2021$new_cases[1] + data_November.December_2021$new_cases[2] + data_November.December_2021$new_cases[3] + data_November.December_2021$new_cases[4] + data_November.December_2021$new_cases[5] + data_November.December_2021$new_cases[6]) / 6
for (i in 7: 61) {
  figure_November.December_2021[i] = (data_November.December_2021$new_cases[i-6] + data_November.December_2021$new_cases[i-5] + data_November.December_2021$new_cases[i-4] + data_November.December_2021$new_cases[i-3] + data_November.December_2021$new_cases[i-2] + data_November.December_2021$new_cases[i-1] + data_November.December_2021$new_cases[i]) / 7
}
data_November.December_2021$figure <- figure_November.December_2021
ggplot(data_November.December_2021, aes(x = date, y = figure, group = 1)) + geom_line() +  labs(title = "New cases in the world in November and December 2021 for average of 7 days", x = "days", y = "new cases")
data_January.February_2022 <- data_2022[which((data_2022$month == "January") | (data_2022$month == "February") ), names(data_2022) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year") ]
data_January.February_2022$date <- as.Date(data_January.February_2022$date, "%m/%d/%Y")
figure_January.February_2022 <- c()
figure_January.February_2022[1] = data_January.February_2022$new_cases[1]
figure_January.February_2022[2] = (data_January.February_2022$new_cases[1] + data_January.February_2022$new_cases[2]) / 2
figure_January.February_2022[3] = (data_January.February_2022$new_cases[1] + data_January.February_2022$new_cases[2] + data_January.February_2022$new_cases[3]) / 3
figure_January.February_2022[4] = (data_January.February_2022$new_cases[1] + data_January.February_2022$new_cases[2] + data_January.February_2022$new_cases[3] + data_January.February_2022$new_cases[4]) / 4
figure_January.February_2022[5] = (data_January.February_2022$new_cases[1] + data_January.February_2022$new_cases[2] + data_January.February_2022$new_cases[3] + data_January.February_2022$new_cases[4] + data_January.February_2022$new_cases[5]) / 5
figure_January.February_2022[6] = (data_January.February_2022$new_cases[1] + data_January.February_2022$new_cases[2] + data_January.February_2022$new_cases[3] + data_January.February_2022$new_cases[4] + data_January.February_2022$new_cases[5] + data_January.February_2022$new_cases[6]) / 6
for (i in 7: 50) {
  figure_January.February_2022[i] = (data_January.February_2022$new_cases[i-6] + data_January.February_2022$new_cases[i-5] + data_January.February_2022$new_cases[i-4] + data_January.February_2022$new_cases[i-3] + data_January.February_2022$new_cases[i-2] + data_January.February_2022$new_cases[i-1] + data_January.February_2022$new_cases[i]) / 7
}
data_January.February_2022$figure <- figure_January.February_2022
ggplot(data_January.February_2022, aes(x = date, y = figure, group = 1)) + geom_line() +  labs(title = "New cases in the world in January and February 2022 for average of 7 days", x = "days", y = "new cases")
#Sentence 4:
#2020:
figure_deaths_November.December_2020 <- c()
figure_deaths_November.December_2020[1] = data_November.December_2020$new_deaths[1]
figure_deaths_November.December_2020[2] = (data_November.December_2020$new_deaths[1] + data_November.December_2020$new_deaths[2]) / 2
figure_deaths_November.December_2020[3] = (data_November.December_2020$new_deaths[1] + data_November.December_2020$new_deaths[2] + data_November.December_2020$new_deaths[3]) / 3
figure_deaths_November.December_2020[4] = (data_November.December_2020$new_deaths[1] + data_November.December_2020$new_deaths[2] + data_November.December_2020$new_deaths[3] + data_November.December_2020$new_deaths[4]) / 4
figure_deaths_November.December_2020[5] = (data_November.December_2020$new_deaths[1] + data_November.December_2020$new_deaths[2] + data_November.December_2020$new_deaths[3] + data_November.December_2020$new_deaths[4] + data_November.December_2020$new_deaths[5]) / 5
figure_deaths_November.December_2020[6] = (data_November.December_2020$new_deaths[1] + data_November.December_2020$new_deaths[2] + data_November.December_2020$new_deaths[3] + data_November.December_2020$new_deaths[4] + data_November.December_2020$new_deaths[5] + data_November.December_2020$new_deaths[6]) / 6
for (i in 7: 61) {
  figure_deaths_November.December_2020[i] = (data_November.December_2020$new_deaths[i-6] + data_November.December_2020$new_deaths[i-5] + data_November.December_2020$new_deaths[i-4] + data_November.December_2020$new_deaths[i-3] + data_November.December_2020$new_deaths[i-2] + data_November.December_2020$new_deaths[i-1] + data_November.December_2020$new_deaths[i]) / 7
}
data_November.December_2020$figure_deaths <- figure_deaths_November.December_2020
ggplot(data_November.December_2020, aes(x = date, y = figure_deaths, group = 1)) + geom_line() +  labs(title = "New deaths in the world in November and December 2020 for average of 7 days", x = "days", y = "new deaths")
#2021:
figure_deaths_November.December_2021 <- c()
figure_deaths_November.December_2021[1] = data_November.December_2021$new_deaths[1]
figure_deaths_November.December_2021[2] = (data_November.December_2021$new_deaths[1] + data_November.December_2021$new_deaths[2]) / 2
figure_deaths_November.December_2021[3] = (data_November.December_2021$new_deaths[1] + data_November.December_2021$new_deaths[2] + data_November.December_2021$new_deaths[3]) / 3
figure_deaths_November.December_2021[4] = (data_November.December_2021$new_deaths[1] + data_November.December_2021$new_deaths[2] + data_November.December_2021$new_deaths[3] + data_November.December_2021$new_deaths[4]) / 4
figure_deaths_November.December_2021[5] = (data_November.December_2021$new_deaths[1] + data_November.December_2021$new_deaths[2] + data_November.December_2021$new_deaths[3] + data_November.December_2021$new_deaths[4] + data_November.December_2021$new_deaths[5]) / 5
figure_deaths_November.December_2021[6] = (data_November.December_2021$new_deaths[1] + data_November.December_2021$new_deaths[2] + data_November.December_2021$new_deaths[3] + data_November.December_2021$new_deaths[4] + data_November.December_2021$new_deaths[5] + data_November.December_2021$new_deaths[6]) / 6
for (i in 7: 61) {
  figure_deaths_November.December_2021[i] = (data_November.December_2021$new_deaths[i-6] + data_November.December_2021$new_deaths[i-5] + data_November.December_2021$new_deaths[i-4] + data_November.December_2021$new_deaths[i-3] + data_November.December_2021$new_deaths[i-2] + data_November.December_2021$new_deaths[i-1] + data_November.December_2021$new_deaths[i]) / 7
}
data_November.December_2021$figure_deaths <- figure_deaths_November.December_2021
ggplot(data_November.December_2021, aes(x = date, y = figure_deaths, group = 1)) + geom_line() +  labs(title = "New deaths in the world in November and December 2021 for average of 7 days", x = "days", y = "new deaths")
#2022:
figure_deaths_January.February_2022 <- c()
figure_deaths_January.February_2022[1] = data_January.February_2022$new_deaths[1]
figure_deaths_January.February_2022[2] = (data_January.February_2022$new_deaths[1] + data_January.February_2022$new_deaths[2]) / 2
figure_deaths_January.February_2022[3] = (data_January.February_2022$new_deaths[1] + data_January.February_2022$new_deaths[2] + data_January.February_2022$new_deaths[3]) / 3
figure_deaths_January.February_2022[4] = (data_January.February_2022$new_deaths[1] + data_January.February_2022$new_deaths[2] + data_January.February_2022$new_deaths[3] + data_January.February_2022$new_deaths[4]) / 4
figure_deaths_January.February_2022[5] = (data_January.February_2022$new_deaths[1] + data_January.February_2022$new_deaths[2] + data_January.February_2022$new_deaths[3] + data_January.February_2022$new_deaths[4] + data_January.February_2022$new_deaths[5]) / 5
figure_deaths_January.February_2022[6] = (data_January.February_2022$new_deaths[1] + data_January.February_2022$new_deaths[2] + data_January.February_2022$new_deaths[3] + data_January.February_2022$new_deaths[4] + data_January.February_2022$new_deaths[5] + data_January.February_2022$new_deaths[6]) / 6
for (i in 7: 50) {
  figure_deaths_January.February_2022[i] = (data_January.February_2022$new_deaths[i-6] + data_January.February_2022$new_deaths[i-5] + data_January.February_2022$new_deaths[i-4] + data_January.February_2022$new_deaths[i-3] + data_January.February_2022$new_deaths[i-2] + data_January.February_2022$new_deaths[i-1] + data_January.February_2022$new_deaths[i]) / 7
}
data_January.February_2022$figure_deaths <- figure_deaths_January.February_2022
ggplot(data_January.February_2022, aes(x = date, y = figure_deaths, group = 1)) + geom_line() +  labs(title = "New deaths in the world in January and February 2022 for average of 7 days", x = "days", y = "new deaths")
#Sentence 5:
figure_cumulative_cases_2020 <- c()
for (index in 1: 61) {
  figure_cumulative_cases_2020[index] = 0
}
for (i in 1: 61) {
  for (j in 1: i) {
    figure_cumulative_cases_2020[i] = figure_cumulative_cases_2020[i] + as.numeric(data_November.December_2020$figure[j]) 
  }
}
data_November.December_2020$figure_cumulative_cases <- figure_cumulative_cases_2020
ggplot(data_November.December_2020, aes(x = date, y = figure_cumulative_cases, group = 1)) + geom_line() +  labs(title = "New cumulative cases in the world in November and December 2020 for average of 7 days", x = "days", y = "new cases")
figure_cumulative_cases_2021 <- c()
for (index in 1: 61) {
  figure_cumulative_cases_2021[index] = 0
}
for (i in 1: 61) {
  for (j in 1: i) {
    figure_cumulative_cases_2021[i] = figure_cumulative_cases_2021[i] + as.numeric(data_November.December_2021$figure[j]) 
  }
}
data_November.December_2021$figure_cumulative_cases <- figure_cumulative_cases_2021
ggplot(data_November.December_2021, aes(x = date, y = figure_cumulative_cases, group = 1)) + geom_line() +  labs(title = "New cumulative cases in the world in November and December 2021 for average of 7 days", x = "days", y = "new cases")
figure_cumulative_cases_2022 <- c()
for (index in 1: 50) {
  figure_cumulative_cases_2022[index] = 0
}
for (i in 1: 50) {
  for (j in 1: i) {
    figure_cumulative_cases_2022[i] = figure_cumulative_cases_2022[i] + as.numeric(data_January.February_2022$figure[j]) 
  }
}
data_January.February_2022$figure_cumulative_cases <- figure_cumulative_cases_2022
ggplot(data_January.February_2022, aes(x = date, y = figure_cumulative_cases, group = 1)) + geom_line() +  labs(title = "New cumulative cases in the world in January and February 2022 for average of 7 days", x = "days", y = "new cases")
#Sentence 6:
figure_cumulative_deaths_2020 <- c()
for (index in 1: 61) {
  figure_cumulative_deaths_2020[index] = 0
}
for (i in 1: 61) {
  for (j in 1: i) {
    figure_cumulative_deaths_2020[i] = figure_cumulative_deaths_2020[i] + as.numeric(data_November.December_2020$figure_deaths[j]) 
  }
}
data_November.December_2020$figure_cumulative_deaths <- figure_cumulative_deaths_2020
ggplot(data_November.December_2020, aes(x = date, y = figure_cumulative_deaths, group = 1)) + geom_line() +  labs(title = "New cumulative deaths in the world in November and December 2020 for average of 7 days", x = "days", y = "new deaths")
figure_cumulative_deaths_2021 <- c()
for (index in 1: 61) {
  figure_cumulative_deaths_2021[index] = 0
}
for (i in 1: 61) {
  for (j in 1: i) {
    figure_cumulative_deaths_2021[i] = figure_cumulative_deaths_2021[i] + as.numeric(data_November.December_2021$figure_deaths[j]) 
  }
}
data_November.December_2021$figure_cumulative_deaths <- figure_cumulative_deaths_2021
ggplot(data_November.December_2021, aes(x = date, y = figure_cumulative_deaths, group = 1)) + geom_line() +  labs(title = "New cumulative deaths in the world in November and December 2021 for average of 7 days", x = "days", y = "new deaths")
figure_cumulative_deaths_2022 <- c()
for (index in 1: 50) {
  figure_cumulative_deaths_2022[index] = 0
}
for (i in 1: 50) {
  for (j in 1: i) {
    figure_cumulative_deaths_2022[i] = figure_cumulative_deaths_2022[i] + as.numeric(data_January.February_2022$figure_deaths[j]) 
  }
}
data_January.February_2022$figure_cumulative_deaths <- figure_cumulative_deaths_2022
ggplot(data_January.February_2022, aes(x = date, y = figure_cumulative_deaths, group = 1)) + geom_line() +  labs(title = "New cumulative deaths in the world in January and February 2022 for average of 7 days", x = "days", y = "new deaths")
#Sentence 1:
#AUS:
data_AUS <-  my_data[which(my_data$iso_code == "AUS"), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
total_case_AUS <- sum(data_AUS$new_cases)
accumulated_case_AUS <- c()
for (i in 1: length(data_AUS$new_cases)) {
  accumulated_case_AUS[i] <- 0
}
for (i in 1: length(data_AUS$new_cases)) {
  for (j in 1: i) {
    accumulated_case_AUS[i] <- accumulated_case_AUS[i] + data_AUS$new_cases[j] 
  }
}
accumulated_percent_AUS <- c()
type <- c()
for (i in 1: length(data_AUS$new_cases)) {
  type[i] <- "new cases"
}
data_AUS$type <- type
for (i in 1: length(data_AUS$new_cases)) {
  accumulated_percent_AUS[i] <- (accumulated_case_AUS[i] / total_case_AUS) * 100 
}
data_AUS$percent <- accumulated_percent_AUS
data_AUS$date <- as.Date(data_AUS$date, "%m/%d/%Y")
data_AUS <-  data_AUS[which(data_AUS$date >= "2020-02-24"), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_AUS_1 <-  my_data[which(my_data$iso_code == "AUS"), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_AUS_1 <- na.omit(data_AUS_1)
accumulated_death_AUS <- c()
type1 <- c()
for (i in 1: length(data_AUS_1$new_deaths)) {
  accumulated_death_AUS[i] <- 0
}
for (i in 1: length(data_AUS_1$new_deaths)) {
  for (j in 1: i) {
    accumulated_death_AUS[i] <- accumulated_death_AUS[i] + data_AUS_1$new_deaths[j] 
  }
}
for (i in 1: length(data_AUS_1$new_deaths)) {
  type1[i] <- "new deaths"
}
data_AUS_1$type <- type1
total_death_AUS <- sum(data_AUS_1$new_deaths, na.rm =TRUE)
data_AUS_1$date <- as.Date(data_AUS_1$date, "%m/%d/%Y")
accumulated_death_percent_AUS <- c()
for (i in 1: length(data_AUS_1$new_deaths)) {
  accumulated_death_percent_AUS[i] <- (accumulated_death_AUS[i] / total_death_AUS) * 100 
}
data_AUS_1$percent <- accumulated_death_percent_AUS
ggplot(rbind(data_AUS,data_AUS_1), aes(x = date, y = percent, group = type, color = type)) + geom_line() + ylim(0,100)  +  labs(title = "The percents of new cumulative cases and new cumulative deaths in Australia", x = "days", y = "percents")

#NZL:
data_NZL <-  my_data[which(my_data$iso_code == "NZL"), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NZL$new_cases <- abs(data_NZL$new_cases)
total_case_NZL <- 0
accumulated_case_NZL <- c()
for (i in 1: length(data_NZL$new_cases)) {
  total_case_NZL <- total_case_NZL + data_NZL$new_cases[i]
}
for (i in 1: length(data_NZL$new_cases)) {
  accumulated_case_NZL[i] <- 0
}
for (i in 1: length(data_NZL$new_cases)) {
  for (j in 1: i) {
    accumulated_case_NZL[i] <- accumulated_case_NZL[i] + data_NZL$new_cases[j] 
  }
}
options(scipen = 100)
accumulated_percent_NZL <- c()
type <- c()
for (i in 1: length(data_NZL$new_cases)) {
  type[i] <- "new cases"
}
data_NZL$type <- type
for (i in 1: length(data_NZL$new_cases)) {
  accumulated_percent_NZL[i] <- (accumulated_case_NZL[i] / total_case_NZL) * 100 
}
data_NZL$percent <- accumulated_percent_NZL
data_NZL$date <- as.Date(data_NZL$date, "%m/%d/%Y")
data_NZL_1 <-  my_data[which(my_data$iso_code == "NZL"), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NZL_1 <- na.omit(data_NZL_1)
accumulated_death_NZL <- c()
type1 <- c()
for (i in 1: length(data_NZL_1$new_deaths)) {
  accumulated_death_NZL[i] <- 0
}
for (i in 1: length(data_NZL_1$new_deaths)) {
  for (j in 1: i) {
    accumulated_death_NZL[i] <- accumulated_death_NZL[i] + data_NZL_1$new_deaths[j] 
  }
}
for (i in 1: length(data_NZL_1$new_deaths)) {
  type1[i] <- "new deaths"
}
data_NZL_1$type <- type1
total_death_NZL <- 0
data_NZL_1$date <- as.Date(data_NZL_1$date, "%m/%d/%Y")
for (i in 1: length(data_NZL_1$new_deaths)) {
  total_death_NZL <- total_death_NZL + data_NZL_1$new_deaths[i]
}
accumulated_death_percent_NZL <- c()
for (i in 1: length(data_NZL_1$new_deaths)) {
  accumulated_death_percent_NZL[i] <- (accumulated_death_NZL[i] / total_death_NZL) * 100 
}
data_NZL_1$percent <- accumulated_death_percent_NZL
ggplot(rbind(data_NZL,data_NZL_1), aes(x = date, y = percent, group = type, color = type)) + geom_line() + ylim(0,100) + labs(title = "The percents of new cumulative cases and new cumulative deaths in New Zealand", x = "days", y = "percents")

#NCL:
data_NCL <-  my_data[which(my_data$iso_code == "NCL"), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
total_case_NCL <- sum(data_NCL$new_cases, na.rm =TRUE)
accumulated_case_NCL <- c()
for (i in 1: length(data_NCL$new_cases)) {
  accumulated_case_NCL[i] <- 0
}
for (i in 1: length(data_NCL$new_cases)) {
  for (j in 1: i) {
    accumulated_case_NCL[i] <- accumulated_case_NCL[i] + data_NCL$new_cases[j] 
  }
}
accumulated_percent_NCL <- c()
type <- c()
for (i in 1: length(data_NCL$new_cases)) {
  type[i] <- "new cases"
}
data_NCL$type <- type
for (i in 1: length(data_NCL$new_cases)) {
  accumulated_percent_NCL[i] <- (accumulated_case_NCL[i] / total_case_NCL) * 100 
}
data_NCL$percent <- accumulated_percent_NCL
data_NCL$date <- as.Date(data_NCL$date, "%m/%d/%Y")
data_NCL_1 <-  my_data[which(my_data$iso_code == "NCL"), names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NCL_1 <- na.omit(data_NCL_1)
accumulated_death_NCL <- c()
type1 <- c()
for (i in 1: length(data_NCL_1$new_deaths)) {
  accumulated_death_NCL[i] <- 0
}
for (i in 1: length(data_NCL_1$new_deaths)) {
  for (j in 1: i) {
    accumulated_death_NCL[i] <- accumulated_death_NCL[i] + data_NCL_1$new_deaths[j] 
  }
}
for (i in 1: length(data_NCL_1$new_deaths)) {
  type1[i] <- "new deaths"
}
data_NCL_1$type <- type1
total_death_NCL <- 0
data_NCL_1$date <- as.Date(data_NCL_1$date, "%m/%d/%Y")
for (i in 1: length(data_NCL_1$new_deaths)) {
  total_death_NCL <- total_death_NCL + data_NCL_1$new_deaths[i]
}
accumulated_death_percent_NCL <- c()
for (i in 1: length(data_NCL_1$new_deaths)) {
  accumulated_death_percent_NCL[i] <- (accumulated_death_NCL[i] / total_death_NCL) * 100 
}
data_NCL_1$percent <- accumulated_death_percent_NCL
ggplot(rbind(data_NCL,data_NCL_1), aes(x = date, y = percent, group = type, color = type)) + geom_line() + ylim(0,100)  +  labs(title = "The percents of new cumulative cases and new cumulative deaths in New Caledonia", x = "days", y = "percents")
#Sentence 2:
#2020:
data_AUS_2020 <-  my_data[which((my_data$iso_code == "AUS") & (my_data$year == 2020)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NZL_2020 <-  my_data[which((my_data$iso_code == "NZL") & (my_data$year == 2020)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NCL_2020 <-  my_data[which((my_data$iso_code == "NCL") & (my_data$year == 2020)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_AUS_2020$new_deaths <- abs(data_AUS_2020$new_deaths)
#July:
data_AUS_July_2020 <- data_AUS_2020[which(data_AUS_2020$month == "July") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_July_2020 <- data_NZL_2020[which(data_NZL_2020$month == "July") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_July_2020, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in July 2020", x = "new cases", y = "new deaths")
ggplot(data_NZL_July_2020, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in July 2020", x = "new cases", y = "new deaths")
cor(data_AUS_July_2020$new_cases, data_AUS_July_2020$new_deaths, method = "pearson")
#August:
data_AUS_August_2020 <- data_AUS_2020[which(data_AUS_2020$month == "August") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_August_2020 <- data_NZL_2020[which(data_NZL_2020$month == "August") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_August_2020, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in August 2020", x = "new cases", y = "new deaths")
ggplot(data_NZL_August_2020, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in August 2020", x = "new cases", y = "new deaths")
cor(data_AUS_August_2020$new_cases, data_AUS_August_2020$new_deaths, method = "pearson")
#October:
data_AUS_October_2020 <- data_AUS_2020[which(data_AUS_2020$month == "October") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_October_2020 <- data_NZL_2020[which(data_NZL_2020$month == "October") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_October_2020, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in October 2020", x = "new cases", y = "new deaths")
ggplot(data_NZL_October_2020, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in October 2020", x = "new cases", y = "new deaths")
cor(data_AUS_October_2020$new_cases, data_AUS_October_2020$new_deaths, method = "pearson")

#2021:
data_AUS_2021 <-  my_data[which((my_data$iso_code == "AUS") & (my_data$year == 2021)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NZL_2021 <-  my_data[which((my_data$iso_code == "NZL") & (my_data$year == 2021)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NCL_2021 <-  my_data[which((my_data$iso_code == "NCL") & (my_data$year == 2021)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_AUS_2021$new_deaths <- abs(data_AUS_2021$new_deaths)
data_NZL_2021$new_cases <- abs(data_NZL_2021$new_cases)
#January:
data_AUS_January_2021 <- data_AUS_2021[which(data_AUS_2021$month == "January") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_January_2021 <- data_NZL_2021[which(data_NZL_2021$month == "January") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_January_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in January 2021", x = "new cases", y = "new deaths")
ggplot(data_NZL_January_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in January 2021", x = "new cases", y = "new deaths")
#July:
data_AUS_July_2021 <- data_AUS_2021[which(data_AUS_2021$month == "July") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_July_2021 <- data_NZL_2021[which(data_NZL_2021$month == "July") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_July_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in July 2021", x = "new cases", y = "new deaths")
ggplot(data_NZL_July_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in July 2021", x = "new cases", y = "new deaths")
cor(data_AUS_July_2021$new_cases, data_AUS_July_2021$new_deaths, method = "pearson")
#August:
data_AUS_August_2021 <- data_AUS_2021[which(data_AUS_2021$month == "August") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_August_2021 <- data_NZL_2021[which(data_NZL_2021$month == "August") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_August_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in August 2021", x = "new cases", y = "new deaths")
ggplot(data_NZL_August_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in August 2021", x = "new cases", y = "new deaths")
cor(data_AUS_August_2021$new_cases, data_AUS_August_2021$new_deaths, method = "pearson")
#October:
data_AUS_October_2021 <- data_AUS_2021[which(data_AUS_2021$month == "October") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_October_2021 <- data_NZL_2021[which(data_NZL_2021$month == "October") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NCL_October_2021 <- data_NCL_2021[which(data_NCL_2021$month == "October") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_October_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in October 2021", x = "new cases", y = "new deaths")
ggplot(data_NZL_October_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in October 2021", x = "new cases", y = "new deaths")
ggplot(data_NCL_October_2021, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NCL in October 2021", x = "new cases", y = "new deaths")
cor(data_AUS_October_2021$new_cases, data_AUS_October_2021$new_deaths, method = "pearson")
cor(data_NZL_October_2021$new_cases, data_NZL_October_2021$new_deaths, method = "pearson")
cor(data_NCL_October_2021$new_cases, data_NCL_October_2021$new_deaths, method = "pearson")
#2022:
data_AUS_2022 <-  my_data[which((my_data$iso_code == "AUS") & (my_data$year == 2022)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NZL_2022 <-  my_data[which((my_data$iso_code == "NZL") & (my_data$year == 2022)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
data_NCL_2022 <-  my_data[which((my_data$iso_code == "NCL") & (my_data$year == 2022)) , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")]
#January:
data_AUS_January_2022 <- data_AUS_2022[which(data_AUS_2022$month == "January") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NZL_January_2022 <- data_NZL_2022[which(data_NZL_2022$month == "January") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
data_NCL_January_2022 <- data_NCL_2022[which(data_NCL_2022$month == "January") , names(my_data) %in% c("iso_code","continent","location","date","new_cases","new_deaths","month","day","year")] 
ggplot(data_AUS_January_2022, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in January 2022", x = "new cases", y = "new deaths")
ggplot(data_NZL_January_2022, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in January 2022", x = "new cases", y = "new deaths")
ggplot(data_NCL_January_2022, aes(x= new_cases, y = new_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NCL in January 2022", x = "new cases", y = "new deaths")
cor(data_AUS_January_2022$new_cases, data_AUS_January_2022$new_deaths, method = "pearson")
cor(data_NZL_January_2022$new_cases, data_NZL_January_2022$new_deaths, method = "pearson")
cor(data_NCL_January_2022$new_cases, data_NCL_January_2022$new_deaths, method = "pearson")
#Sentence 3:
#2020:
#July:
figure_AUS_July_2020 <- c()
figure_AUS_July_2020[1] = data_AUS_July_2020$new_cases[1]
figure_AUS_July_2020[2] = (data_AUS_July_2020$new_cases[1] + data_AUS_July_2020$new_cases[2]) / 2
figure_AUS_July_2020[3] = (data_AUS_July_2020$new_cases[1] + data_AUS_July_2020$new_cases[2] + data_AUS_July_2020$new_cases[3]) / 3
figure_AUS_July_2020[4] = (data_AUS_July_2020$new_cases[1] + data_AUS_July_2020$new_cases[2] + data_AUS_July_2020$new_cases[3] + data_AUS_July_2020$new_cases[4]) / 4
figure_AUS_July_2020[5] = (data_AUS_July_2020$new_cases[1] + data_AUS_July_2020$new_cases[2] + data_AUS_July_2020$new_cases[3] + data_AUS_July_2020$new_cases[4] + data_AUS_July_2020$new_cases[5]) / 5
figure_AUS_July_2020[6] = (data_AUS_July_2020$new_cases[1] + data_AUS_July_2020$new_cases[2] + data_AUS_July_2020$new_cases[3] + data_AUS_July_2020$new_cases[4] + data_AUS_July_2020$new_cases[5] + data_AUS_July_2020$new_cases[6]) / 6
for (i in 7: length(data_AUS_July_2020$day)) {
  figure_AUS_July_2020[i] = (data_AUS_July_2020$new_cases[i-6] + data_AUS_July_2020$new_cases[i-5] + data_AUS_July_2020$new_cases[i-4] + data_AUS_July_2020$new_cases[i-3] + data_AUS_July_2020$new_cases[i-2] + data_AUS_July_2020$new_cases[i-1] + data_AUS_July_2020$new_cases[i]) / 7
}
figure_deaths_AUS_July_2020 <- c()
figure_deaths_AUS_July_2020[1] = data_AUS_July_2020$new_deaths[1]
figure_deaths_AUS_July_2020[2] = (data_AUS_July_2020$new_deaths[1] + data_AUS_July_2020$new_deaths[2]) / 2
figure_deaths_AUS_July_2020[3] = (data_AUS_July_2020$new_deaths[1] + data_AUS_July_2020$new_deaths[2] + data_AUS_July_2020$new_deaths[3]) / 3
figure_deaths_AUS_July_2020[4] = (data_AUS_July_2020$new_deaths[1] + data_AUS_July_2020$new_deaths[2] + data_AUS_July_2020$new_deaths[3] + data_AUS_July_2020$new_deaths[4]) / 4
figure_deaths_AUS_July_2020[5] = (data_AUS_July_2020$new_deaths[1] + data_AUS_July_2020$new_deaths[2] + data_AUS_July_2020$new_deaths[3] + data_AUS_July_2020$new_deaths[4] + data_AUS_July_2020$new_deaths[5]) / 5
figure_deaths_AUS_July_2020[6] = (data_AUS_July_2020$new_deaths[1] + data_AUS_July_2020$new_deaths[2] + data_AUS_July_2020$new_deaths[3] + data_AUS_July_2020$new_deaths[4] + data_AUS_July_2020$new_deaths[5] + data_AUS_July_2020$new_deaths[6]) / 6
for (i in 7: length(data_AUS_July_2020$day)) {
  figure_deaths_AUS_July_2020[i] = (data_AUS_July_2020$new_deaths[i-6] + data_AUS_July_2020$new_deaths[i-5] + data_AUS_July_2020$new_deaths[i-4] + data_AUS_July_2020$new_deaths[i-3] + data_AUS_July_2020$new_deaths[i-2] + data_AUS_July_2020$new_deaths[i-1] + data_AUS_July_2020$new_deaths[i]) / 7
}
figure_NZL_July_2020 <- c()
figure_NZL_July_2020[1] = data_NZL_July_2020$new_cases[1]
figure_NZL_July_2020[2] = (data_NZL_July_2020$new_cases[1] + data_NZL_July_2020$new_cases[2]) / 2
figure_NZL_July_2020[3] = (data_NZL_July_2020$new_cases[1] + data_NZL_July_2020$new_cases[2] + data_NZL_July_2020$new_cases[3]) / 3
figure_NZL_July_2020[4] = (data_NZL_July_2020$new_cases[1] + data_NZL_July_2020$new_cases[2] + data_NZL_July_2020$new_cases[3] + data_NZL_July_2020$new_cases[4]) / 4
figure_NZL_July_2020[5] = (data_NZL_July_2020$new_cases[1] + data_NZL_July_2020$new_cases[2] + data_NZL_July_2020$new_cases[3] + data_NZL_July_2020$new_cases[4] + data_NZL_July_2020$new_cases[5]) / 5
figure_NZL_July_2020[6] = (data_NZL_July_2020$new_cases[1] + data_NZL_July_2020$new_cases[2] + data_NZL_July_2020$new_cases[3] + data_NZL_July_2020$new_cases[4] + data_NZL_July_2020$new_cases[5] + data_NZL_July_2020$new_cases[6]) / 6
for (i in 7: length(data_NZL_July_2020$day)) {
  figure_NZL_July_2020[i] = (data_NZL_July_2020$new_cases[i-6] + data_NZL_July_2020$new_cases[i-5] + data_NZL_July_2020$new_cases[i-4] + data_NZL_July_2020$new_cases[i-3] + data_NZL_July_2020$new_cases[i-2] + data_NZL_July_2020$new_cases[i-1] + data_NZL_July_2020$new_cases[i]) / 7
}
figure_deaths_NZL_July_2020 <- c()
figure_deaths_NZL_July_2020[1] = data_NZL_July_2020$new_deaths[1]
figure_deaths_NZL_July_2020[2] = (data_NZL_July_2020$new_deaths[1] + data_NZL_July_2020$new_deaths[2]) / 2
figure_deaths_NZL_July_2020[3] = (data_NZL_July_2020$new_deaths[1] + data_NZL_July_2020$new_deaths[2] + data_NZL_July_2020$new_deaths[3]) / 3
figure_deaths_NZL_July_2020[4] = (data_NZL_July_2020$new_deaths[1] + data_NZL_July_2020$new_deaths[2] + data_NZL_July_2020$new_deaths[3] + data_NZL_July_2020$new_deaths[4]) / 4
figure_deaths_NZL_July_2020[5] = (data_NZL_July_2020$new_deaths[1] + data_NZL_July_2020$new_deaths[2] + data_NZL_July_2020$new_deaths[3] + data_NZL_July_2020$new_deaths[4] + data_NZL_July_2020$new_deaths[5]) / 5
figure_deaths_NZL_July_2020[6] = (data_NZL_July_2020$new_deaths[1] + data_NZL_July_2020$new_deaths[2] + data_NZL_July_2020$new_deaths[3] + data_NZL_July_2020$new_deaths[4] + data_NZL_July_2020$new_deaths[5] + data_NZL_July_2020$new_deaths[6]) / 6
for (i in 7: length(data_NZL_July_2020$day)) {
  figure_deaths_NZL_July_2020[i] = (data_NZL_July_2020$new_deaths[i-6] + data_NZL_July_2020$new_deaths[i-5] + data_NZL_July_2020$new_deaths[i-4] + data_NZL_July_2020$new_deaths[i-3] + data_NZL_July_2020$new_deaths[i-2] + data_NZL_July_2020$new_deaths[i-1] + data_NZL_July_2020$new_deaths[i]) / 7
}
data_AUS_July_2020$avg_cases <- figure_AUS_July_2020
data_AUS_July_2020$avg_deaths <- figure_deaths_AUS_July_2020
data_NZL_July_2020$avg_cases <- figure_NZL_July_2020
data_NZL_July_2020$avg_deaths <- figure_deaths_NZL_July_2020
ggplot(data_AUS_July_2020, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in July 2020 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_July_2020, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in July 2020 (for avg in 7 days)", x = "new cases", y = "new deaths")
cor(data_AUS_July_2020$avg_cases, data_AUS_July_2020$avg_deaths, method = "pearson")
#August:
figure_AUS_August_2020 <- c()
figure_AUS_August_2020[1] = data_AUS_August_2020$new_cases[1]
figure_AUS_August_2020[2] = (data_AUS_August_2020$new_cases[1] + data_AUS_August_2020$new_cases[2]) / 2
figure_AUS_August_2020[3] = (data_AUS_August_2020$new_cases[1] + data_AUS_August_2020$new_cases[2] + data_AUS_August_2020$new_cases[3]) / 3
figure_AUS_August_2020[4] = (data_AUS_August_2020$new_cases[1] + data_AUS_August_2020$new_cases[2] + data_AUS_August_2020$new_cases[3] + data_AUS_August_2020$new_cases[4]) / 4
figure_AUS_August_2020[5] = (data_AUS_August_2020$new_cases[1] + data_AUS_August_2020$new_cases[2] + data_AUS_August_2020$new_cases[3] + data_AUS_August_2020$new_cases[4] + data_AUS_August_2020$new_cases[5]) / 5
figure_AUS_August_2020[6] = (data_AUS_August_2020$new_cases[1] + data_AUS_August_2020$new_cases[2] + data_AUS_August_2020$new_cases[3] + data_AUS_August_2020$new_cases[4] + data_AUS_August_2020$new_cases[5] + data_AUS_August_2020$new_cases[6]) / 6
for (i in 7: length(data_AUS_August_2020$day)) {
  figure_AUS_August_2020[i] = (data_AUS_August_2020$new_cases[i-6] + data_AUS_August_2020$new_cases[i-5] + data_AUS_August_2020$new_cases[i-4] + data_AUS_August_2020$new_cases[i-3] + data_AUS_August_2020$new_cases[i-2] + data_AUS_August_2020$new_cases[i-1] + data_AUS_August_2020$new_cases[i]) / 7
}
figure_deaths_AUS_August_2020 <- c()
figure_deaths_AUS_August_2020[1] = data_AUS_August_2020$new_deaths[1]
figure_deaths_AUS_August_2020[2] = (data_AUS_August_2020$new_deaths[1] + data_AUS_August_2020$new_deaths[2]) / 2
figure_deaths_AUS_August_2020[3] = (data_AUS_August_2020$new_deaths[1] + data_AUS_August_2020$new_deaths[2] + data_AUS_August_2020$new_deaths[3]) / 3
figure_deaths_AUS_August_2020[4] = (data_AUS_August_2020$new_deaths[1] + data_AUS_August_2020$new_deaths[2] + data_AUS_August_2020$new_deaths[3] + data_AUS_August_2020$new_deaths[4]) / 4
figure_deaths_AUS_August_2020[5] = (data_AUS_August_2020$new_deaths[1] + data_AUS_August_2020$new_deaths[2] + data_AUS_August_2020$new_deaths[3] + data_AUS_August_2020$new_deaths[4] + data_AUS_August_2020$new_deaths[5]) / 5
figure_deaths_AUS_August_2020[6] = (data_AUS_August_2020$new_deaths[1] + data_AUS_August_2020$new_deaths[2] + data_AUS_August_2020$new_deaths[3] + data_AUS_August_2020$new_deaths[4] + data_AUS_August_2020$new_deaths[5] + data_AUS_August_2020$new_deaths[6]) / 6
for (i in 7: length(data_AUS_August_2020$day)) {
  figure_deaths_AUS_August_2020[i] = (data_AUS_August_2020$new_deaths[i-6] + data_AUS_August_2020$new_deaths[i-5] + data_AUS_August_2020$new_deaths[i-4] + data_AUS_August_2020$new_deaths[i-3] + data_AUS_August_2020$new_deaths[i-2] + data_AUS_August_2020$new_deaths[i-1] + data_AUS_August_2020$new_deaths[i]) / 7
}
figure_NZL_August_2020 <- c()
figure_NZL_August_2020[1] = data_NZL_August_2020$new_cases[1]
figure_NZL_August_2020[2] = (data_NZL_August_2020$new_cases[1] + data_NZL_August_2020$new_cases[2]) / 2
figure_NZL_August_2020[3] = (data_NZL_August_2020$new_cases[1] + data_NZL_August_2020$new_cases[2] + data_NZL_August_2020$new_cases[3]) / 3
figure_NZL_August_2020[4] = (data_NZL_August_2020$new_cases[1] + data_NZL_August_2020$new_cases[2] + data_NZL_August_2020$new_cases[3] + data_NZL_August_2020$new_cases[4]) / 4
figure_NZL_August_2020[5] = (data_NZL_August_2020$new_cases[1] + data_NZL_August_2020$new_cases[2] + data_NZL_August_2020$new_cases[3] + data_NZL_August_2020$new_cases[4] + data_NZL_August_2020$new_cases[5]) / 5
figure_NZL_August_2020[6] = (data_NZL_August_2020$new_cases[1] + data_NZL_August_2020$new_cases[2] + data_NZL_August_2020$new_cases[3] + data_NZL_August_2020$new_cases[4] + data_NZL_August_2020$new_cases[5] + data_NZL_August_2020$new_cases[6]) / 6
for (i in 7: length(data_NZL_August_2020$day)) {
  figure_NZL_August_2020[i] = (data_NZL_August_2020$new_cases[i-6] + data_NZL_August_2020$new_cases[i-5] + data_NZL_August_2020$new_cases[i-4] + data_NZL_August_2020$new_cases[i-3] + data_NZL_August_2020$new_cases[i-2] + data_NZL_August_2020$new_cases[i-1] + data_NZL_August_2020$new_cases[i]) / 7
}
figure_deaths_NZL_August_2020 <- c()
figure_deaths_NZL_August_2020[1] = data_NZL_August_2020$new_deaths[1]
figure_deaths_NZL_August_2020[2] = (data_NZL_August_2020$new_deaths[1] + data_NZL_August_2020$new_deaths[2]) / 2
figure_deaths_NZL_August_2020[3] = (data_NZL_August_2020$new_deaths[1] + data_NZL_August_2020$new_deaths[2] + data_NZL_August_2020$new_deaths[3]) / 3
figure_deaths_NZL_August_2020[4] = (data_NZL_August_2020$new_deaths[1] + data_NZL_August_2020$new_deaths[2] + data_NZL_August_2020$new_deaths[3] + data_NZL_August_2020$new_deaths[4]) / 4
figure_deaths_NZL_August_2020[5] = (data_NZL_August_2020$new_deaths[1] + data_NZL_August_2020$new_deaths[2] + data_NZL_August_2020$new_deaths[3] + data_NZL_August_2020$new_deaths[4] + data_NZL_August_2020$new_deaths[5]) / 5
figure_deaths_NZL_August_2020[6] = (data_NZL_August_2020$new_deaths[1] + data_NZL_August_2020$new_deaths[2] + data_NZL_August_2020$new_deaths[3] + data_NZL_August_2020$new_deaths[4] + data_NZL_August_2020$new_deaths[5] + data_NZL_August_2020$new_deaths[6]) / 6
for (i in 7: length(data_NZL_August_2020$day)) {
  figure_deaths_NZL_August_2020[i] = (data_NZL_August_2020$new_deaths[i-6] + data_NZL_August_2020$new_deaths[i-5] + data_NZL_August_2020$new_deaths[i-4] + data_NZL_August_2020$new_deaths[i-3] + data_NZL_August_2020$new_deaths[i-2] + data_NZL_August_2020$new_deaths[i-1] + data_NZL_August_2020$new_deaths[i]) / 7
}
data_AUS_August_2020$avg_cases <- figure_AUS_August_2020
data_AUS_August_2020$avg_deaths <- figure_deaths_AUS_August_2020
data_NZL_August_2020$avg_cases <- figure_NZL_August_2020
data_NZL_August_2020$avg_deaths <- figure_deaths_NZL_August_2020
ggplot(data_AUS_August_2020, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in August 2020 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_August_2020, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in August 2020 (for avg in 7 days)", x = "new cases", y = "new deaths")
cor(data_AUS_August_2020$avg_cases, data_AUS_August_2020$avg_deaths, method = "pearson")
#October:
figure_AUS_October_2020 <- c()
figure_AUS_October_2020[1] = data_AUS_October_2020$new_cases[1]
figure_AUS_October_2020[2] = (data_AUS_October_2020$new_cases[1] + data_AUS_October_2020$new_cases[2]) / 2
figure_AUS_October_2020[3] = (data_AUS_October_2020$new_cases[1] + data_AUS_October_2020$new_cases[2] + data_AUS_October_2020$new_cases[3]) / 3
figure_AUS_October_2020[4] = (data_AUS_October_2020$new_cases[1] + data_AUS_October_2020$new_cases[2] + data_AUS_October_2020$new_cases[3] + data_AUS_October_2020$new_cases[4]) / 4
figure_AUS_October_2020[5] = (data_AUS_October_2020$new_cases[1] + data_AUS_October_2020$new_cases[2] + data_AUS_October_2020$new_cases[3] + data_AUS_October_2020$new_cases[4] + data_AUS_October_2020$new_cases[5]) / 5
figure_AUS_October_2020[6] = (data_AUS_October_2020$new_cases[1] + data_AUS_October_2020$new_cases[2] + data_AUS_October_2020$new_cases[3] + data_AUS_October_2020$new_cases[4] + data_AUS_October_2020$new_cases[5] + data_AUS_October_2020$new_cases[6]) / 6
for (i in 7: length(data_AUS_October_2020$day)) {
  figure_AUS_October_2020[i] = (data_AUS_October_2020$new_cases[i-6] + data_AUS_October_2020$new_cases[i-5] + data_AUS_October_2020$new_cases[i-4] + data_AUS_October_2020$new_cases[i-3] + data_AUS_October_2020$new_cases[i-2] + data_AUS_October_2020$new_cases[i-1] + data_AUS_October_2020$new_cases[i]) / 7
}
figure_deaths_AUS_October_2020 <- c()
figure_deaths_AUS_October_2020[1] = data_AUS_October_2020$new_deaths[1]
figure_deaths_AUS_October_2020[2] = (data_AUS_October_2020$new_deaths[1] + data_AUS_October_2020$new_deaths[2]) / 2
figure_deaths_AUS_October_2020[3] = (data_AUS_October_2020$new_deaths[1] + data_AUS_October_2020$new_deaths[2] + data_AUS_October_2020$new_deaths[3]) / 3
figure_deaths_AUS_October_2020[4] = (data_AUS_October_2020$new_deaths[1] + data_AUS_October_2020$new_deaths[2] + data_AUS_October_2020$new_deaths[3] + data_AUS_October_2020$new_deaths[4]) / 4
figure_deaths_AUS_October_2020[5] = (data_AUS_October_2020$new_deaths[1] + data_AUS_October_2020$new_deaths[2] + data_AUS_October_2020$new_deaths[3] + data_AUS_October_2020$new_deaths[4] + data_AUS_October_2020$new_deaths[5]) / 5
figure_deaths_AUS_October_2020[6] = (data_AUS_October_2020$new_deaths[1] + data_AUS_October_2020$new_deaths[2] + data_AUS_October_2020$new_deaths[3] + data_AUS_October_2020$new_deaths[4] + data_AUS_October_2020$new_deaths[5] + data_AUS_October_2020$new_deaths[6]) / 6
for (i in 7: length(data_AUS_October_2020$day)) {
  figure_deaths_AUS_October_2020[i] = (data_AUS_October_2020$new_deaths[i-6] + data_AUS_October_2020$new_deaths[i-5] + data_AUS_October_2020$new_deaths[i-4] + data_AUS_October_2020$new_deaths[i-3] + data_AUS_October_2020$new_deaths[i-2] + data_AUS_October_2020$new_deaths[i-1] + data_AUS_October_2020$new_deaths[i]) / 7
}
figure_NZL_October_2020 <- c()
figure_NZL_October_2020[1] = data_NZL_October_2020$new_cases[1]
figure_NZL_October_2020[2] = (data_NZL_October_2020$new_cases[1] + data_NZL_October_2020$new_cases[2]) / 2
figure_NZL_October_2020[3] = (data_NZL_October_2020$new_cases[1] + data_NZL_October_2020$new_cases[2] + data_NZL_October_2020$new_cases[3]) / 3
figure_NZL_October_2020[4] = (data_NZL_October_2020$new_cases[1] + data_NZL_October_2020$new_cases[2] + data_NZL_October_2020$new_cases[3] + data_NZL_October_2020$new_cases[4]) / 4
figure_NZL_October_2020[5] = (data_NZL_October_2020$new_cases[1] + data_NZL_October_2020$new_cases[2] + data_NZL_October_2020$new_cases[3] + data_NZL_October_2020$new_cases[4] + data_NZL_October_2020$new_cases[5]) / 5
figure_NZL_October_2020[6] = (data_NZL_October_2020$new_cases[1] + data_NZL_October_2020$new_cases[2] + data_NZL_October_2020$new_cases[3] + data_NZL_October_2020$new_cases[4] + data_NZL_October_2020$new_cases[5] + data_NZL_October_2020$new_cases[6]) / 6
for (i in 7: length(data_NZL_October_2020$day)) {
  figure_NZL_October_2020[i] = (data_NZL_October_2020$new_cases[i-6] + data_NZL_October_2020$new_cases[i-5] + data_NZL_October_2020$new_cases[i-4] + data_NZL_October_2020$new_cases[i-3] + data_NZL_October_2020$new_cases[i-2] + data_NZL_October_2020$new_cases[i-1] + data_NZL_October_2020$new_cases[i]) / 7
}
figure_deaths_NZL_October_2020 <- c()
figure_deaths_NZL_October_2020[1] = data_NZL_October_2020$new_deaths[1]
figure_deaths_NZL_October_2020[2] = (data_NZL_October_2020$new_deaths[1] + data_NZL_October_2020$new_deaths[2]) / 2
figure_deaths_NZL_October_2020[3] = (data_NZL_October_2020$new_deaths[1] + data_NZL_October_2020$new_deaths[2] + data_NZL_October_2020$new_deaths[3]) / 3
figure_deaths_NZL_October_2020[4] = (data_NZL_October_2020$new_deaths[1] + data_NZL_October_2020$new_deaths[2] + data_NZL_October_2020$new_deaths[3] + data_NZL_October_2020$new_deaths[4]) / 4
figure_deaths_NZL_October_2020[5] = (data_NZL_October_2020$new_deaths[1] + data_NZL_October_2020$new_deaths[2] + data_NZL_October_2020$new_deaths[3] + data_NZL_October_2020$new_deaths[4] + data_NZL_October_2020$new_deaths[5]) / 5
figure_deaths_NZL_October_2020[6] = (data_NZL_October_2020$new_deaths[1] + data_NZL_October_2020$new_deaths[2] + data_NZL_October_2020$new_deaths[3] + data_NZL_October_2020$new_deaths[4] + data_NZL_October_2020$new_deaths[5] + data_NZL_October_2020$new_deaths[6]) / 6
for (i in 7: length(data_NZL_October_2020$day)) {
  figure_deaths_NZL_October_2020[i] = (data_NZL_October_2020$new_deaths[i-6] + data_NZL_October_2020$new_deaths[i-5] + data_NZL_October_2020$new_deaths[i-4] + data_NZL_October_2020$new_deaths[i-3] + data_NZL_October_2020$new_deaths[i-2] + data_NZL_October_2020$new_deaths[i-1] + data_NZL_October_2020$new_deaths[i]) / 7
}
data_AUS_October_2020$avg_cases <- figure_AUS_October_2020
data_AUS_October_2020$avg_deaths <- figure_deaths_AUS_October_2020
data_NZL_October_2020$avg_cases <- figure_NZL_October_2020
data_NZL_October_2020$avg_deaths <- figure_deaths_NZL_October_2020
ggplot(data_AUS_October_2020, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in October 2020 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_October_2020, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in October 2020 (for avg in 7 days)", x = "new cases", y = "new deaths")
cor(data_AUS_October_2020$avg_cases, data_AUS_October_2020$avg_deaths, method = "pearson")
#2021:
#January:
figure_AUS_January_2021 <- c()
figure_AUS_January_2021[1] = data_AUS_January_2021$new_cases[1]
figure_AUS_January_2021[2] = (data_AUS_January_2021$new_cases[1] + data_AUS_January_2021$new_cases[2]) / 2
figure_AUS_January_2021[3] = (data_AUS_January_2021$new_cases[1] + data_AUS_January_2021$new_cases[2] + data_AUS_January_2021$new_cases[3]) / 3
figure_AUS_January_2021[4] = (data_AUS_January_2021$new_cases[1] + data_AUS_January_2021$new_cases[2] + data_AUS_January_2021$new_cases[3] + data_AUS_January_2021$new_cases[4]) / 4
figure_AUS_January_2021[5] = (data_AUS_January_2021$new_cases[1] + data_AUS_January_2021$new_cases[2] + data_AUS_January_2021$new_cases[3] + data_AUS_January_2021$new_cases[4] + data_AUS_January_2021$new_cases[5]) / 5
figure_AUS_January_2021[6] = (data_AUS_January_2021$new_cases[1] + data_AUS_January_2021$new_cases[2] + data_AUS_January_2021$new_cases[3] + data_AUS_January_2021$new_cases[4] + data_AUS_January_2021$new_cases[5] + data_AUS_January_2021$new_cases[6]) / 6
for (i in 7: length(data_AUS_January_2021$day)) {
  figure_AUS_January_2021[i] = (data_AUS_January_2021$new_cases[i-6] + data_AUS_January_2021$new_cases[i-5] + data_AUS_January_2021$new_cases[i-4] + data_AUS_January_2021$new_cases[i-3] + data_AUS_January_2021$new_cases[i-2] + data_AUS_January_2021$new_cases[i-1] + data_AUS_January_2021$new_cases[i]) / 7
}
figure_deaths_AUS_January_2021 <- c()
figure_deaths_AUS_January_2021[1] = data_AUS_January_2021$new_deaths[1]
figure_deaths_AUS_January_2021[2] = (data_AUS_January_2021$new_deaths[1] + data_AUS_January_2021$new_deaths[2]) / 2
figure_deaths_AUS_January_2021[3] = (data_AUS_January_2021$new_deaths[1] + data_AUS_January_2021$new_deaths[2] + data_AUS_January_2021$new_deaths[3]) / 3
figure_deaths_AUS_January_2021[4] = (data_AUS_January_2021$new_deaths[1] + data_AUS_January_2021$new_deaths[2] + data_AUS_January_2021$new_deaths[3] + data_AUS_January_2021$new_deaths[4]) / 4
figure_deaths_AUS_January_2021[5] = (data_AUS_January_2021$new_deaths[1] + data_AUS_January_2021$new_deaths[2] + data_AUS_January_2021$new_deaths[3] + data_AUS_January_2021$new_deaths[4] + data_AUS_January_2021$new_deaths[5]) / 5
figure_deaths_AUS_January_2021[6] = (data_AUS_January_2021$new_deaths[1] + data_AUS_January_2021$new_deaths[2] + data_AUS_January_2021$new_deaths[3] + data_AUS_January_2021$new_deaths[4] + data_AUS_January_2021$new_deaths[5] + data_AUS_January_2021$new_deaths[6]) / 6
for (i in 7: length(data_AUS_January_2021$day)) {
  figure_deaths_AUS_January_2021[i] = (data_AUS_January_2021$new_deaths[i-6] + data_AUS_January_2021$new_deaths[i-5] + data_AUS_January_2021$new_deaths[i-4] + data_AUS_January_2021$new_deaths[i-3] + data_AUS_January_2021$new_deaths[i-2] + data_AUS_January_2021$new_deaths[i-1] + data_AUS_January_2021$new_deaths[i]) / 7
}
figure_NZL_January_2021 <- c()
figure_NZL_January_2021[1] = data_NZL_January_2021$new_cases[1]
figure_NZL_January_2021[2] = (data_NZL_January_2021$new_cases[1] + data_NZL_January_2021$new_cases[2]) / 2
figure_NZL_January_2021[3] = (data_NZL_January_2021$new_cases[1] + data_NZL_January_2021$new_cases[2] + data_NZL_January_2021$new_cases[3]) / 3
figure_NZL_January_2021[4] = (data_NZL_January_2021$new_cases[1] + data_NZL_January_2021$new_cases[2] + data_NZL_January_2021$new_cases[3] + data_NZL_January_2021$new_cases[4]) / 4
figure_NZL_January_2021[5] = (data_NZL_January_2021$new_cases[1] + data_NZL_January_2021$new_cases[2] + data_NZL_January_2021$new_cases[3] + data_NZL_January_2021$new_cases[4] + data_NZL_January_2021$new_cases[5]) / 5
figure_NZL_January_2021[6] = (data_NZL_January_2021$new_cases[1] + data_NZL_January_2021$new_cases[2] + data_NZL_January_2021$new_cases[3] + data_NZL_January_2021$new_cases[4] + data_NZL_January_2021$new_cases[5] + data_NZL_January_2021$new_cases[6]) / 6
for (i in 7: length(data_NZL_January_2021$day)) {
  figure_NZL_January_2021[i] = (data_NZL_January_2021$new_cases[i-6] + data_NZL_January_2021$new_cases[i-5] + data_NZL_January_2021$new_cases[i-4] + data_NZL_January_2021$new_cases[i-3] + data_NZL_January_2021$new_cases[i-2] + data_NZL_January_2021$new_cases[i-1] + data_NZL_January_2021$new_cases[i]) / 7
}
figure_deaths_NZL_January_2021 <- c()
figure_deaths_NZL_January_2021[1] = data_NZL_January_2021$new_deaths[1]
figure_deaths_NZL_January_2021[2] = (data_NZL_January_2021$new_deaths[1] + data_NZL_January_2021$new_deaths[2]) / 2
figure_deaths_NZL_January_2021[3] = (data_NZL_January_2021$new_deaths[1] + data_NZL_January_2021$new_deaths[2] + data_NZL_January_2021$new_deaths[3]) / 3
figure_deaths_NZL_January_2021[4] = (data_NZL_January_2021$new_deaths[1] + data_NZL_January_2021$new_deaths[2] + data_NZL_January_2021$new_deaths[3] + data_NZL_January_2021$new_deaths[4]) / 4
figure_deaths_NZL_January_2021[5] = (data_NZL_January_2021$new_deaths[1] + data_NZL_January_2021$new_deaths[2] + data_NZL_January_2021$new_deaths[3] + data_NZL_January_2021$new_deaths[4] + data_NZL_January_2021$new_deaths[5]) / 5
figure_deaths_NZL_January_2021[6] = (data_NZL_January_2021$new_deaths[1] + data_NZL_January_2021$new_deaths[2] + data_NZL_January_2021$new_deaths[3] + data_NZL_January_2021$new_deaths[4] + data_NZL_January_2021$new_deaths[5] + data_NZL_January_2021$new_deaths[6]) / 6
for (i in 7: length(data_NZL_January_2021$day)) {
  figure_deaths_NZL_January_2021[i] = (data_NZL_January_2021$new_deaths[i-6] + data_NZL_January_2021$new_deaths[i-5] + data_NZL_January_2021$new_deaths[i-4] + data_NZL_January_2021$new_deaths[i-3] + data_NZL_January_2021$new_deaths[i-2] + data_NZL_January_2021$new_deaths[i-1] + data_NZL_January_2021$new_deaths[i]) / 7
}
data_AUS_January_2021$avg_cases <- figure_AUS_January_2021
data_AUS_January_2021$avg_deaths <- figure_deaths_AUS_January_2021
data_NZL_January_2021$avg_cases <- figure_NZL_January_2021
data_NZL_January_2021$avg_deaths <- figure_deaths_NZL_January_2021
ggplot(data_AUS_January_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in July 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_January_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in July 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
#July:
figure_AUS_July_2021 <- c()
figure_AUS_July_2021[1] = data_AUS_July_2021$new_cases[1]
figure_AUS_July_2021[2] = (data_AUS_July_2021$new_cases[1] + data_AUS_July_2021$new_cases[2]) / 2
figure_AUS_July_2021[3] = (data_AUS_July_2021$new_cases[1] + data_AUS_July_2021$new_cases[2] + data_AUS_July_2021$new_cases[3]) / 3
figure_AUS_July_2021[4] = (data_AUS_July_2021$new_cases[1] + data_AUS_July_2021$new_cases[2] + data_AUS_July_2021$new_cases[3] + data_AUS_July_2021$new_cases[4]) / 4
figure_AUS_July_2021[5] = (data_AUS_July_2021$new_cases[1] + data_AUS_July_2021$new_cases[2] + data_AUS_July_2021$new_cases[3] + data_AUS_July_2021$new_cases[4] + data_AUS_July_2021$new_cases[5]) / 5
figure_AUS_July_2021[6] = (data_AUS_July_2021$new_cases[1] + data_AUS_July_2021$new_cases[2] + data_AUS_July_2021$new_cases[3] + data_AUS_July_2021$new_cases[4] + data_AUS_July_2021$new_cases[5] + data_AUS_July_2021$new_cases[6]) / 6
for (i in 7: length(data_AUS_July_2021$day)) {
  figure_AUS_July_2021[i] = (data_AUS_July_2021$new_cases[i-6] + data_AUS_July_2021$new_cases[i-5] + data_AUS_July_2021$new_cases[i-4] + data_AUS_July_2021$new_cases[i-3] + data_AUS_July_2021$new_cases[i-2] + data_AUS_July_2021$new_cases[i-1] + data_AUS_July_2021$new_cases[i]) / 7
}
figure_deaths_AUS_July_2021 <- c()
figure_deaths_AUS_July_2021[1] = data_AUS_July_2021$new_deaths[1]
figure_deaths_AUS_July_2021[2] = (data_AUS_July_2021$new_deaths[1] + data_AUS_July_2021$new_deaths[2]) / 2
figure_deaths_AUS_July_2021[3] = (data_AUS_July_2021$new_deaths[1] + data_AUS_July_2021$new_deaths[2] + data_AUS_July_2021$new_deaths[3]) / 3
figure_deaths_AUS_July_2021[4] = (data_AUS_July_2021$new_deaths[1] + data_AUS_July_2021$new_deaths[2] + data_AUS_July_2021$new_deaths[3] + data_AUS_July_2021$new_deaths[4]) / 4
figure_deaths_AUS_July_2021[5] = (data_AUS_July_2021$new_deaths[1] + data_AUS_July_2021$new_deaths[2] + data_AUS_July_2021$new_deaths[3] + data_AUS_July_2021$new_deaths[4] + data_AUS_July_2021$new_deaths[5]) / 5
figure_deaths_AUS_July_2021[6] = (data_AUS_July_2021$new_deaths[1] + data_AUS_July_2021$new_deaths[2] + data_AUS_July_2021$new_deaths[3] + data_AUS_July_2021$new_deaths[4] + data_AUS_July_2021$new_deaths[5] + data_AUS_July_2021$new_deaths[6]) / 6
for (i in 7: length(data_AUS_July_2021$day)) {
  figure_deaths_AUS_July_2021[i] = (data_AUS_July_2021$new_deaths[i-6] + data_AUS_July_2021$new_deaths[i-5] + data_AUS_July_2021$new_deaths[i-4] + data_AUS_July_2021$new_deaths[i-3] + data_AUS_July_2021$new_deaths[i-2] + data_AUS_July_2021$new_deaths[i-1] + data_AUS_July_2021$new_deaths[i]) / 7
}
figure_NZL_July_2021 <- c()
figure_NZL_July_2021[1] = data_NZL_July_2021$new_cases[1]
figure_NZL_July_2021[2] = (data_NZL_July_2021$new_cases[1] + data_NZL_July_2021$new_cases[2]) / 2
figure_NZL_July_2021[3] = (data_NZL_July_2021$new_cases[1] + data_NZL_July_2021$new_cases[2] + data_NZL_July_2021$new_cases[3]) / 3
figure_NZL_July_2021[4] = (data_NZL_July_2021$new_cases[1] + data_NZL_July_2021$new_cases[2] + data_NZL_July_2021$new_cases[3] + data_NZL_July_2021$new_cases[4]) / 4
figure_NZL_July_2021[5] = (data_NZL_July_2021$new_cases[1] + data_NZL_July_2021$new_cases[2] + data_NZL_July_2021$new_cases[3] + data_NZL_July_2021$new_cases[4] + data_NZL_July_2021$new_cases[5]) / 5
figure_NZL_July_2021[6] = (data_NZL_July_2021$new_cases[1] + data_NZL_July_2021$new_cases[2] + data_NZL_July_2021$new_cases[3] + data_NZL_July_2021$new_cases[4] + data_NZL_July_2021$new_cases[5] + data_NZL_July_2021$new_cases[6]) / 6
for (i in 7: length(data_NZL_July_2021$day)) {
  figure_NZL_July_2021[i] = (data_NZL_July_2021$new_cases[i-6] + data_NZL_July_2021$new_cases[i-5] + data_NZL_July_2021$new_cases[i-4] + data_NZL_July_2021$new_cases[i-3] + data_NZL_July_2021$new_cases[i-2] + data_NZL_July_2021$new_cases[i-1] + data_NZL_July_2021$new_cases[i]) / 7
}
figure_deaths_NZL_July_2021 <- c()
figure_deaths_NZL_July_2021[1] = data_NZL_July_2021$new_deaths[1]
figure_deaths_NZL_July_2021[2] = (data_NZL_July_2021$new_deaths[1] + data_NZL_July_2021$new_deaths[2]) / 2
figure_deaths_NZL_July_2021[3] = (data_NZL_July_2021$new_deaths[1] + data_NZL_July_2021$new_deaths[2] + data_NZL_July_2021$new_deaths[3]) / 3
figure_deaths_NZL_July_2021[4] = (data_NZL_July_2021$new_deaths[1] + data_NZL_July_2021$new_deaths[2] + data_NZL_July_2021$new_deaths[3] + data_NZL_July_2021$new_deaths[4]) / 4
figure_deaths_NZL_July_2021[5] = (data_NZL_July_2021$new_deaths[1] + data_NZL_July_2021$new_deaths[2] + data_NZL_July_2021$new_deaths[3] + data_NZL_July_2021$new_deaths[4] + data_NZL_July_2021$new_deaths[5]) / 5
figure_deaths_NZL_July_2021[6] = (data_NZL_July_2021$new_deaths[1] + data_NZL_July_2021$new_deaths[2] + data_NZL_July_2021$new_deaths[3] + data_NZL_July_2021$new_deaths[4] + data_NZL_July_2021$new_deaths[5] + data_NZL_July_2021$new_deaths[6]) / 6
for (i in 7: length(data_NZL_July_2021$day)) {
  figure_deaths_NZL_July_2021[i] = (data_NZL_July_2021$new_deaths[i-6] + data_NZL_July_2021$new_deaths[i-5] + data_NZL_July_2021$new_deaths[i-4] + data_NZL_July_2021$new_deaths[i-3] + data_NZL_July_2021$new_deaths[i-2] + data_NZL_July_2021$new_deaths[i-1] + data_NZL_July_2021$new_deaths[i]) / 7
}
data_AUS_July_2021$avg_cases <- figure_AUS_July_2021
data_AUS_July_2021$avg_deaths <- figure_deaths_AUS_July_2021
data_NZL_July_2021$avg_cases <- figure_NZL_July_2021
data_NZL_July_2021$avg_deaths <- figure_deaths_NZL_July_2021
ggplot(data_AUS_July_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in July 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_July_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in July 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
cor(data_AUS_July_2021$avg_cases, data_AUS_July_2021$avg_deaths, method = "pearson")
#August:
figure_AUS_August_2021 <- c()
figure_AUS_August_2021[1] = data_AUS_August_2021$new_cases[1]
figure_AUS_August_2021[2] = (data_AUS_August_2021$new_cases[1] + data_AUS_August_2021$new_cases[2]) / 2
figure_AUS_August_2021[3] = (data_AUS_August_2021$new_cases[1] + data_AUS_August_2021$new_cases[2] + data_AUS_August_2021$new_cases[3]) / 3
figure_AUS_August_2021[4] = (data_AUS_August_2021$new_cases[1] + data_AUS_August_2021$new_cases[2] + data_AUS_August_2021$new_cases[3] + data_AUS_August_2021$new_cases[4]) / 4
figure_AUS_August_2021[5] = (data_AUS_August_2021$new_cases[1] + data_AUS_August_2021$new_cases[2] + data_AUS_August_2021$new_cases[3] + data_AUS_August_2021$new_cases[4] + data_AUS_August_2021$new_cases[5]) / 5
figure_AUS_August_2021[6] = (data_AUS_August_2021$new_cases[1] + data_AUS_August_2021$new_cases[2] + data_AUS_August_2021$new_cases[3] + data_AUS_August_2021$new_cases[4] + data_AUS_August_2021$new_cases[5] + data_AUS_August_2021$new_cases[6]) / 6
for (i in 7: length(data_AUS_August_2021$day)) {
  figure_AUS_August_2021[i] = (data_AUS_August_2021$new_cases[i-6] + data_AUS_August_2021$new_cases[i-5] + data_AUS_August_2021$new_cases[i-4] + data_AUS_August_2021$new_cases[i-3] + data_AUS_August_2021$new_cases[i-2] + data_AUS_August_2021$new_cases[i-1] + data_AUS_August_2021$new_cases[i]) / 7
}
figure_deaths_AUS_August_2021 <- c()
figure_deaths_AUS_August_2021[1] = data_AUS_August_2021$new_deaths[1]
figure_deaths_AUS_August_2021[2] = (data_AUS_August_2021$new_deaths[1] + data_AUS_August_2021$new_deaths[2]) / 2
figure_deaths_AUS_August_2021[3] = (data_AUS_August_2021$new_deaths[1] + data_AUS_August_2021$new_deaths[2] + data_AUS_August_2021$new_deaths[3]) / 3
figure_deaths_AUS_August_2021[4] = (data_AUS_August_2021$new_deaths[1] + data_AUS_August_2021$new_deaths[2] + data_AUS_August_2021$new_deaths[3] + data_AUS_August_2021$new_deaths[4]) / 4
figure_deaths_AUS_August_2021[5] = (data_AUS_August_2021$new_deaths[1] + data_AUS_August_2021$new_deaths[2] + data_AUS_August_2021$new_deaths[3] + data_AUS_August_2021$new_deaths[4] + data_AUS_August_2021$new_deaths[5]) / 5
figure_deaths_AUS_August_2021[6] = (data_AUS_August_2021$new_deaths[1] + data_AUS_August_2021$new_deaths[2] + data_AUS_August_2021$new_deaths[3] + data_AUS_August_2021$new_deaths[4] + data_AUS_August_2021$new_deaths[5] + data_AUS_August_2021$new_deaths[6]) / 6
for (i in 7: length(data_AUS_August_2021$day)) {
  figure_deaths_AUS_August_2021[i] = (data_AUS_August_2021$new_deaths[i-6] + data_AUS_August_2021$new_deaths[i-5] + data_AUS_August_2021$new_deaths[i-4] + data_AUS_August_2021$new_deaths[i-3] + data_AUS_August_2021$new_deaths[i-2] + data_AUS_August_2021$new_deaths[i-1] + data_AUS_August_2021$new_deaths[i]) / 7
}
figure_NZL_August_2021 <- c()
figure_NZL_August_2021[1] = data_NZL_August_2021$new_cases[1]
figure_NZL_August_2021[2] = (data_NZL_August_2021$new_cases[1] + data_NZL_August_2021$new_cases[2]) / 2
figure_NZL_August_2021[3] = (data_NZL_August_2021$new_cases[1] + data_NZL_August_2021$new_cases[2] + data_NZL_August_2021$new_cases[3]) / 3
figure_NZL_August_2021[4] = (data_NZL_August_2021$new_cases[1] + data_NZL_August_2021$new_cases[2] + data_NZL_August_2021$new_cases[3] + data_NZL_August_2021$new_cases[4]) / 4
figure_NZL_August_2021[5] = (data_NZL_August_2021$new_cases[1] + data_NZL_August_2021$new_cases[2] + data_NZL_August_2021$new_cases[3] + data_NZL_August_2021$new_cases[4] + data_NZL_August_2021$new_cases[5]) / 5
figure_NZL_August_2021[6] = (data_NZL_August_2021$new_cases[1] + data_NZL_August_2021$new_cases[2] + data_NZL_August_2021$new_cases[3] + data_NZL_August_2021$new_cases[4] + data_NZL_August_2021$new_cases[5] + data_NZL_August_2021$new_cases[6]) / 6
for (i in 7: length(data_NZL_August_2021$day)) {
  figure_NZL_August_2021[i] = (data_NZL_August_2021$new_cases[i-6] + data_NZL_August_2021$new_cases[i-5] + data_NZL_August_2021$new_cases[i-4] + data_NZL_August_2021$new_cases[i-3] + data_NZL_August_2021$new_cases[i-2] + data_NZL_August_2021$new_cases[i-1] + data_NZL_August_2021$new_cases[i]) / 7
}
figure_deaths_NZL_August_2021 <- c()
figure_deaths_NZL_August_2021[1] = data_NZL_August_2021$new_deaths[1]
figure_deaths_NZL_August_2021[2] = (data_NZL_August_2021$new_deaths[1] + data_NZL_August_2021$new_deaths[2]) / 2
figure_deaths_NZL_August_2021[3] = (data_NZL_August_2021$new_deaths[1] + data_NZL_August_2021$new_deaths[2] + data_NZL_August_2021$new_deaths[3]) / 3
figure_deaths_NZL_August_2021[4] = (data_NZL_August_2021$new_deaths[1] + data_NZL_August_2021$new_deaths[2] + data_NZL_August_2021$new_deaths[3] + data_NZL_August_2021$new_deaths[4]) / 4
figure_deaths_NZL_August_2021[5] = (data_NZL_August_2021$new_deaths[1] + data_NZL_August_2021$new_deaths[2] + data_NZL_August_2021$new_deaths[3] + data_NZL_August_2021$new_deaths[4] + data_NZL_August_2021$new_deaths[5]) / 5
figure_deaths_NZL_August_2021[6] = (data_NZL_August_2021$new_deaths[1] + data_NZL_August_2021$new_deaths[2] + data_NZL_August_2021$new_deaths[3] + data_NZL_August_2021$new_deaths[4] + data_NZL_August_2021$new_deaths[5] + data_NZL_August_2021$new_deaths[6]) / 6
for (i in 7: length(data_NZL_August_2021$day)) {
  figure_deaths_NZL_August_2021[i] = (data_NZL_August_2021$new_deaths[i-6] + data_NZL_August_2021$new_deaths[i-5] + data_NZL_August_2021$new_deaths[i-4] + data_NZL_August_2021$new_deaths[i-3] + data_NZL_August_2021$new_deaths[i-2] + data_NZL_August_2021$new_deaths[i-1] + data_NZL_August_2021$new_deaths[i]) / 7
}
data_AUS_August_2021$avg_cases <- figure_AUS_August_2021
data_AUS_August_2021$avg_deaths <- figure_deaths_AUS_August_2021
data_NZL_August_2021$avg_cases <- figure_NZL_August_2021
data_NZL_August_2021$avg_deaths <- figure_deaths_NZL_August_2021
ggplot(data_AUS_August_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in August 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_August_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in August 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
cor(data_AUS_August_2021$avg_cases, data_AUS_August_2021$avg_deaths, method = "pearson")
#October:
figure_AUS_October_2021 <- c()
figure_AUS_October_2021[1] = data_AUS_October_2021$new_cases[1]
figure_AUS_October_2021[2] = (data_AUS_October_2021$new_cases[1] + data_AUS_October_2021$new_cases[2]) / 2
figure_AUS_October_2021[3] = (data_AUS_October_2021$new_cases[1] + data_AUS_October_2021$new_cases[2] + data_AUS_October_2021$new_cases[3]) / 3
figure_AUS_October_2021[4] = (data_AUS_October_2021$new_cases[1] + data_AUS_October_2021$new_cases[2] + data_AUS_October_2021$new_cases[3] + data_AUS_October_2021$new_cases[4]) / 4
figure_AUS_October_2021[5] = (data_AUS_October_2021$new_cases[1] + data_AUS_October_2021$new_cases[2] + data_AUS_October_2021$new_cases[3] + data_AUS_October_2021$new_cases[4] + data_AUS_October_2021$new_cases[5]) / 5
figure_AUS_October_2021[6] = (data_AUS_October_2021$new_cases[1] + data_AUS_October_2021$new_cases[2] + data_AUS_October_2021$new_cases[3] + data_AUS_October_2021$new_cases[4] + data_AUS_October_2021$new_cases[5] + data_AUS_October_2021$new_cases[6]) / 6
for (i in 7: length(data_AUS_October_2021$day)) {
  figure_AUS_October_2021[i] = (data_AUS_October_2021$new_cases[i-6] + data_AUS_October_2021$new_cases[i-5] + data_AUS_October_2021$new_cases[i-4] + data_AUS_October_2021$new_cases[i-3] + data_AUS_October_2021$new_cases[i-2] + data_AUS_October_2021$new_cases[i-1] + data_AUS_October_2021$new_cases[i]) / 7
}
figure_deaths_AUS_October_2021 <- c()
figure_deaths_AUS_October_2021[1] = data_AUS_October_2021$new_deaths[1]
figure_deaths_AUS_October_2021[2] = (data_AUS_October_2021$new_deaths[1] + data_AUS_October_2021$new_deaths[2]) / 2
figure_deaths_AUS_October_2021[3] = (data_AUS_October_2021$new_deaths[1] + data_AUS_October_2021$new_deaths[2] + data_AUS_October_2021$new_deaths[3]) / 3
figure_deaths_AUS_October_2021[4] = (data_AUS_October_2021$new_deaths[1] + data_AUS_October_2021$new_deaths[2] + data_AUS_October_2021$new_deaths[3] + data_AUS_October_2021$new_deaths[4]) / 4
figure_deaths_AUS_October_2021[5] = (data_AUS_October_2021$new_deaths[1] + data_AUS_October_2021$new_deaths[2] + data_AUS_October_2021$new_deaths[3] + data_AUS_October_2021$new_deaths[4] + data_AUS_October_2021$new_deaths[5]) / 5
figure_deaths_AUS_October_2021[6] = (data_AUS_October_2021$new_deaths[1] + data_AUS_October_2021$new_deaths[2] + data_AUS_October_2021$new_deaths[3] + data_AUS_October_2021$new_deaths[4] + data_AUS_October_2021$new_deaths[5] + data_AUS_October_2021$new_deaths[6]) / 6
for (i in 7: length(data_AUS_October_2021$day)) {
  figure_deaths_AUS_October_2021[i] = (data_AUS_October_2021$new_deaths[i-6] + data_AUS_October_2021$new_deaths[i-5] + data_AUS_October_2021$new_deaths[i-4] + data_AUS_October_2021$new_deaths[i-3] + data_AUS_October_2021$new_deaths[i-2] + data_AUS_October_2021$new_deaths[i-1] + data_AUS_October_2021$new_deaths[i]) / 7
}
figure_NZL_October_2021 <- c()
figure_NZL_October_2021[1] = data_NZL_October_2021$new_cases[1]
figure_NZL_October_2021[2] = (data_NZL_October_2021$new_cases[1] + data_NZL_October_2021$new_cases[2]) / 2
figure_NZL_October_2021[3] = (data_NZL_October_2021$new_cases[1] + data_NZL_October_2021$new_cases[2] + data_NZL_October_2021$new_cases[3]) / 3
figure_NZL_October_2021[4] = (data_NZL_October_2021$new_cases[1] + data_NZL_October_2021$new_cases[2] + data_NZL_October_2021$new_cases[3] + data_NZL_October_2021$new_cases[4]) / 4
figure_NZL_October_2021[5] = (data_NZL_October_2021$new_cases[1] + data_NZL_October_2021$new_cases[2] + data_NZL_October_2021$new_cases[3] + data_NZL_October_2021$new_cases[4] + data_NZL_October_2021$new_cases[5]) / 5
figure_NZL_October_2021[6] = (data_NZL_October_2021$new_cases[1] + data_NZL_October_2021$new_cases[2] + data_NZL_October_2021$new_cases[3] + data_NZL_October_2021$new_cases[4] + data_NZL_October_2021$new_cases[5] + data_NZL_October_2021$new_cases[6]) / 6
for (i in 7: length(data_NZL_October_2021$day)) {
  figure_NZL_October_2021[i] = (data_NZL_October_2021$new_cases[i-6] + data_NZL_October_2021$new_cases[i-5] + data_NZL_October_2021$new_cases[i-4] + data_NZL_October_2021$new_cases[i-3] + data_NZL_October_2021$new_cases[i-2] + data_NZL_October_2021$new_cases[i-1] + data_NZL_October_2021$new_cases[i]) / 7
}
figure_deaths_NZL_October_2021 <- c()
figure_deaths_NZL_October_2021[1] = data_NZL_October_2021$new_deaths[1]
figure_deaths_NZL_October_2021[2] = (data_NZL_October_2021$new_deaths[1] + data_NZL_October_2021$new_deaths[2]) / 2
figure_deaths_NZL_October_2021[3] = (data_NZL_October_2021$new_deaths[1] + data_NZL_October_2021$new_deaths[2] + data_NZL_October_2021$new_deaths[3]) / 3
figure_deaths_NZL_October_2021[4] = (data_NZL_October_2021$new_deaths[1] + data_NZL_October_2021$new_deaths[2] + data_NZL_October_2021$new_deaths[3] + data_NZL_October_2021$new_deaths[4]) / 4
figure_deaths_NZL_October_2021[5] = (data_NZL_October_2021$new_deaths[1] + data_NZL_October_2021$new_deaths[2] + data_NZL_October_2021$new_deaths[3] + data_NZL_October_2021$new_deaths[4] + data_NZL_October_2021$new_deaths[5]) / 5
figure_deaths_NZL_October_2021[6] = (data_NZL_October_2021$new_deaths[1] + data_NZL_October_2021$new_deaths[2] + data_NZL_October_2021$new_deaths[3] + data_NZL_October_2021$new_deaths[4] + data_NZL_October_2021$new_deaths[5] + data_NZL_October_2021$new_deaths[6]) / 6
for (i in 7: length(data_NZL_October_2021$day)) {
  figure_deaths_NZL_October_2021[i] = (data_NZL_October_2021$new_deaths[i-6] + data_NZL_October_2021$new_deaths[i-5] + data_NZL_October_2021$new_deaths[i-4] + data_NZL_October_2021$new_deaths[i-3] + data_NZL_October_2021$new_deaths[i-2] + data_NZL_October_2021$new_deaths[i-1] + data_NZL_October_2021$new_deaths[i]) / 7
}
figure_NCL_October_2021 <- c()
figure_NCL_October_2021[1] = data_NCL_October_2021$new_cases[1]
figure_NCL_October_2021[2] = (data_NCL_October_2021$new_cases[1] + data_NCL_October_2021$new_cases[2]) / 2
figure_NCL_October_2021[3] = (data_NCL_October_2021$new_cases[1] + data_NCL_October_2021$new_cases[2] + data_NCL_October_2021$new_cases[3]) / 3
figure_NCL_October_2021[4] = (data_NCL_October_2021$new_cases[1] + data_NCL_October_2021$new_cases[2] + data_NCL_October_2021$new_cases[3] + data_NCL_October_2021$new_cases[4]) / 4
figure_NCL_October_2021[5] = (data_NCL_October_2021$new_cases[1] + data_NCL_October_2021$new_cases[2] + data_NCL_October_2021$new_cases[3] + data_NCL_October_2021$new_cases[4] + data_NCL_October_2021$new_cases[5]) / 5
figure_NCL_October_2021[6] = (data_NCL_October_2021$new_cases[1] + data_NCL_October_2021$new_cases[2] + data_NCL_October_2021$new_cases[3] + data_NCL_October_2021$new_cases[4] + data_NCL_October_2021$new_cases[5] + data_NCL_October_2021$new_cases[6]) / 6
for (i in 7: length(data_NCL_October_2021$day)) {
  figure_NCL_October_2021[i] = (data_NCL_October_2021$new_cases[i-6] + data_NCL_October_2021$new_cases[i-5] + data_NCL_October_2021$new_cases[i-4] + data_NCL_October_2021$new_cases[i-3] + data_NCL_October_2021$new_cases[i-2] + data_NCL_October_2021$new_cases[i-1] + data_NCL_October_2021$new_cases[i]) / 7
}
figure_deaths_NCL_October_2021 <- c()
figure_deaths_NCL_October_2021[1] = data_NCL_October_2021$new_deaths[1]
figure_deaths_NCL_October_2021[2] = (data_NCL_October_2021$new_deaths[1] + data_NCL_October_2021$new_deaths[2]) / 2
figure_deaths_NCL_October_2021[3] = (data_NCL_October_2021$new_deaths[1] + data_NCL_October_2021$new_deaths[2] + data_NCL_October_2021$new_deaths[3]) / 3
figure_deaths_NCL_October_2021[4] = (data_NCL_October_2021$new_deaths[1] + data_NCL_October_2021$new_deaths[2] + data_NCL_October_2021$new_deaths[3] + data_NCL_October_2021$new_deaths[4]) / 4
figure_deaths_NCL_October_2021[5] = (data_NCL_October_2021$new_deaths[1] + data_NCL_October_2021$new_deaths[2] + data_NCL_October_2021$new_deaths[3] + data_NCL_October_2021$new_deaths[4] + data_NCL_October_2021$new_deaths[5]) / 5
figure_deaths_NCL_October_2021[6] = (data_NCL_October_2021$new_deaths[1] + data_NCL_October_2021$new_deaths[2] + data_NCL_October_2021$new_deaths[3] + data_NCL_October_2021$new_deaths[4] + data_NCL_October_2021$new_deaths[5] + data_NCL_October_2021$new_deaths[6]) / 6
for (i in 7: length(data_NCL_October_2021$day)) {
  figure_deaths_NCL_October_2021[i] = (data_NCL_October_2021$new_deaths[i-6] + data_NCL_October_2021$new_deaths[i-5] + data_NCL_October_2021$new_deaths[i-4] + data_NCL_October_2021$new_deaths[i-3] + data_NCL_October_2021$new_deaths[i-2] + data_NCL_October_2021$new_deaths[i-1] + data_NCL_October_2021$new_deaths[i]) / 7
}
data_AUS_October_2021$avg_cases <- figure_AUS_October_2021
data_AUS_October_2021$avg_deaths <- figure_deaths_AUS_October_2021
data_NZL_October_2021$avg_cases <- figure_NZL_October_2021
data_NZL_October_2021$avg_deaths <- figure_deaths_NZL_October_2021
data_NCL_October_2021$avg_cases <- figure_NCL_October_2021
data_NCL_October_2021$avg_deaths <- figure_deaths_NCL_October_2021
ggplot(data_AUS_October_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in October 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_October_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in October 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NCL_October_2021, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NCL in October 2021 (for avg in 7 days)", x = "new cases", y = "new deaths")
cor(data_AUS_October_2021$avg_cases, data_AUS_October_2021$avg_deaths, method = "pearson")
cor(data_NZL_October_2021$avg_cases, data_NZL_October_2021$avg_deaths, method = "pearson")
cor(data_NCL_October_2021$avg_cases, data_NCL_October_2021$avg_deaths, method = "pearson")
#2022:
#January:
figure_AUS_January_2022 <- c()
figure_AUS_January_2022[1] = data_AUS_January_2022$new_cases[1]
figure_AUS_January_2022[2] = (data_AUS_January_2022$new_cases[1] + data_AUS_January_2022$new_cases[2]) / 2
figure_AUS_January_2022[3] = (data_AUS_January_2022$new_cases[1] + data_AUS_January_2022$new_cases[2] + data_AUS_January_2022$new_cases[3]) / 3
figure_AUS_January_2022[4] = (data_AUS_January_2022$new_cases[1] + data_AUS_January_2022$new_cases[2] + data_AUS_January_2022$new_cases[3] + data_AUS_January_2022$new_cases[4]) / 4
figure_AUS_January_2022[5] = (data_AUS_January_2022$new_cases[1] + data_AUS_January_2022$new_cases[2] + data_AUS_January_2022$new_cases[3] + data_AUS_January_2022$new_cases[4] + data_AUS_January_2022$new_cases[5]) / 5
figure_AUS_January_2022[6] = (data_AUS_January_2022$new_cases[1] + data_AUS_January_2022$new_cases[2] + data_AUS_January_2022$new_cases[3] + data_AUS_January_2022$new_cases[4] + data_AUS_January_2022$new_cases[5] + data_AUS_January_2022$new_cases[6]) / 6
for (i in 7: length(data_AUS_January_2022$day)) {
  figure_AUS_January_2022[i] = (data_AUS_January_2022$new_cases[i-6] + data_AUS_January_2022$new_cases[i-5] + data_AUS_January_2022$new_cases[i-4] + data_AUS_January_2022$new_cases[i-3] + data_AUS_January_2022$new_cases[i-2] + data_AUS_January_2022$new_cases[i-1] + data_AUS_January_2022$new_cases[i]) / 7
}
figure_deaths_AUS_January_2022 <- c()
figure_deaths_AUS_January_2022[1] = data_AUS_January_2022$new_deaths[1]
figure_deaths_AUS_January_2022[2] = (data_AUS_January_2022$new_deaths[1] + data_AUS_January_2022$new_deaths[2]) / 2
figure_deaths_AUS_January_2022[3] = (data_AUS_January_2022$new_deaths[1] + data_AUS_January_2022$new_deaths[2] + data_AUS_January_2022$new_deaths[3]) / 3
figure_deaths_AUS_January_2022[4] = (data_AUS_January_2022$new_deaths[1] + data_AUS_January_2022$new_deaths[2] + data_AUS_January_2022$new_deaths[3] + data_AUS_January_2022$new_deaths[4]) / 4
figure_deaths_AUS_January_2022[5] = (data_AUS_January_2022$new_deaths[1] + data_AUS_January_2022$new_deaths[2] + data_AUS_January_2022$new_deaths[3] + data_AUS_January_2022$new_deaths[4] + data_AUS_January_2022$new_deaths[5]) / 5
figure_deaths_AUS_January_2022[6] = (data_AUS_January_2022$new_deaths[1] + data_AUS_January_2022$new_deaths[2] + data_AUS_January_2022$new_deaths[3] + data_AUS_January_2022$new_deaths[4] + data_AUS_January_2022$new_deaths[5] + data_AUS_January_2022$new_deaths[6]) / 6
for (i in 7: length(data_AUS_January_2022$day)) {
  figure_deaths_AUS_January_2022[i] = (data_AUS_January_2022$new_deaths[i-6] + data_AUS_January_2022$new_deaths[i-5] + data_AUS_January_2022$new_deaths[i-4] + data_AUS_January_2022$new_deaths[i-3] + data_AUS_January_2022$new_deaths[i-2] + data_AUS_January_2022$new_deaths[i-1] + data_AUS_January_2022$new_deaths[i]) / 7
}
figure_NZL_January_2022 <- c()
figure_NZL_January_2022[1] = data_NZL_January_2022$new_cases[1]
figure_NZL_January_2022[2] = (data_NZL_January_2022$new_cases[1] + data_NZL_January_2022$new_cases[2]) / 2
figure_NZL_January_2022[3] = (data_NZL_January_2022$new_cases[1] + data_NZL_January_2022$new_cases[2] + data_NZL_January_2022$new_cases[3]) / 3
figure_NZL_January_2022[4] = (data_NZL_January_2022$new_cases[1] + data_NZL_January_2022$new_cases[2] + data_NZL_January_2022$new_cases[3] + data_NZL_January_2022$new_cases[4]) / 4
figure_NZL_January_2022[5] = (data_NZL_January_2022$new_cases[1] + data_NZL_January_2022$new_cases[2] + data_NZL_January_2022$new_cases[3] + data_NZL_January_2022$new_cases[4] + data_NZL_January_2022$new_cases[5]) / 5
figure_NZL_January_2022[6] = (data_NZL_January_2022$new_cases[1] + data_NZL_January_2022$new_cases[2] + data_NZL_January_2022$new_cases[3] + data_NZL_January_2022$new_cases[4] + data_NZL_January_2022$new_cases[5] + data_NZL_January_2022$new_cases[6]) / 6
for (i in 7: length(data_NZL_January_2022$day)) {
  figure_NZL_January_2022[i] = (data_NZL_January_2022$new_cases[i-6] + data_NZL_January_2022$new_cases[i-5] + data_NZL_January_2022$new_cases[i-4] + data_NZL_January_2022$new_cases[i-3] + data_NZL_January_2022$new_cases[i-2] + data_NZL_January_2022$new_cases[i-1] + data_NZL_January_2022$new_cases[i]) / 7
}
figure_deaths_NZL_January_2022 <- c()
figure_deaths_NZL_January_2022[1] = data_NZL_January_2022$new_deaths[1]
figure_deaths_NZL_January_2022[2] = (data_NZL_January_2022$new_deaths[1] + data_NZL_January_2022$new_deaths[2]) / 2
figure_deaths_NZL_January_2022[3] = (data_NZL_January_2022$new_deaths[1] + data_NZL_January_2022$new_deaths[2] + data_NZL_January_2022$new_deaths[3]) / 3
figure_deaths_NZL_January_2022[4] = (data_NZL_January_2022$new_deaths[1] + data_NZL_January_2022$new_deaths[2] + data_NZL_January_2022$new_deaths[3] + data_NZL_January_2022$new_deaths[4]) / 4
figure_deaths_NZL_January_2022[5] = (data_NZL_January_2022$new_deaths[1] + data_NZL_January_2022$new_deaths[2] + data_NZL_January_2022$new_deaths[3] + data_NZL_January_2022$new_deaths[4] + data_NZL_January_2022$new_deaths[5]) / 5
figure_deaths_NZL_January_2022[6] = (data_NZL_January_2022$new_deaths[1] + data_NZL_January_2022$new_deaths[2] + data_NZL_January_2022$new_deaths[3] + data_NZL_January_2022$new_deaths[4] + data_NZL_January_2022$new_deaths[5] + data_NZL_January_2022$new_deaths[6]) / 6
for (i in 7: length(data_NZL_January_2022$day)) {
  figure_deaths_NZL_January_2022[i] = (data_NZL_January_2022$new_deaths[i-6] + data_NZL_January_2022$new_deaths[i-5] + data_NZL_January_2022$new_deaths[i-4] + data_NZL_January_2022$new_deaths[i-3] + data_NZL_January_2022$new_deaths[i-2] + data_NZL_January_2022$new_deaths[i-1] + data_NZL_January_2022$new_deaths[i]) / 7
}
figure_NCL_January_2022 <- c()
figure_NCL_January_2022[1] = data_NCL_January_2022$new_cases[1]
figure_NCL_January_2022[2] = (data_NCL_January_2022$new_cases[1] + data_NCL_January_2022$new_cases[2]) / 2
figure_NCL_January_2022[3] = (data_NCL_January_2022$new_cases[1] + data_NCL_January_2022$new_cases[2] + data_NCL_January_2022$new_cases[3]) / 3
figure_NCL_January_2022[4] = (data_NCL_January_2022$new_cases[1] + data_NCL_January_2022$new_cases[2] + data_NCL_January_2022$new_cases[3] + data_NCL_January_2022$new_cases[4]) / 4
figure_NCL_January_2022[5] = (data_NCL_January_2022$new_cases[1] + data_NCL_January_2022$new_cases[2] + data_NCL_January_2022$new_cases[3] + data_NCL_January_2022$new_cases[4] + data_NCL_January_2022$new_cases[5]) / 5
figure_NCL_January_2022[6] = (data_NCL_January_2022$new_cases[1] + data_NCL_January_2022$new_cases[2] + data_NCL_January_2022$new_cases[3] + data_NCL_January_2022$new_cases[4] + data_NCL_January_2022$new_cases[5] + data_NCL_January_2022$new_cases[6]) / 6
for (i in 7: length(data_NCL_January_2022$day)) {
  figure_NCL_January_2022[i] = (data_NCL_January_2022$new_cases[i-6] + data_NCL_January_2022$new_cases[i-5] + data_NCL_January_2022$new_cases[i-4] + data_NCL_January_2022$new_cases[i-3] + data_NCL_January_2022$new_cases[i-2] + data_NCL_January_2022$new_cases[i-1] + data_NCL_January_2022$new_cases[i]) / 7
}
figure_deaths_NCL_January_2022 <- c()
figure_deaths_NCL_January_2022[1] = data_NCL_January_2022$new_deaths[1]
figure_deaths_NCL_January_2022[2] = (data_NCL_January_2022$new_deaths[1] + data_NCL_January_2022$new_deaths[2]) / 2
figure_deaths_NCL_January_2022[3] = (data_NCL_January_2022$new_deaths[1] + data_NCL_January_2022$new_deaths[2] + data_NCL_January_2022$new_deaths[3]) / 3
figure_deaths_NCL_January_2022[4] = (data_NCL_January_2022$new_deaths[1] + data_NCL_January_2022$new_deaths[2] + data_NCL_January_2022$new_deaths[3] + data_NCL_January_2022$new_deaths[4]) / 4
figure_deaths_NCL_January_2022[5] = (data_NCL_January_2022$new_deaths[1] + data_NCL_January_2022$new_deaths[2] + data_NCL_January_2022$new_deaths[3] + data_NCL_January_2022$new_deaths[4] + data_NCL_January_2022$new_deaths[5]) / 5
figure_deaths_NCL_January_2022[6] = (data_NCL_January_2022$new_deaths[1] + data_NCL_January_2022$new_deaths[2] + data_NCL_January_2022$new_deaths[3] + data_NCL_January_2022$new_deaths[4] + data_NCL_January_2022$new_deaths[5] + data_NCL_January_2022$new_deaths[6]) / 6
for (i in 7: length(data_NCL_January_2022$day)) {
  figure_deaths_NCL_January_2022[i] = (data_NCL_January_2022$new_deaths[i-6] + data_NCL_January_2022$new_deaths[i-5] + data_NCL_January_2022$new_deaths[i-4] + data_NCL_January_2022$new_deaths[i-3] + data_NCL_January_2022$new_deaths[i-2] + data_NCL_January_2022$new_deaths[i-1] + data_NCL_January_2022$new_deaths[i]) / 7
}
data_AUS_January_2022$avg_cases <- figure_AUS_January_2022
data_AUS_January_2022$avg_deaths <- figure_deaths_AUS_January_2022
data_NZL_January_2022$avg_cases <- figure_NZL_January_2022
data_NZL_January_2022$avg_deaths <- figure_deaths_NZL_January_2022
data_NCL_January_2022$avg_cases <- figure_NCL_January_2022
data_NCL_January_2022$avg_deaths <- figure_deaths_NCL_January_2022
ggplot(data_AUS_January_2022, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of AUS in January 2022 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NZL_January_2022, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NZL in January 2022 (for avg in 7 days)", x = "new cases", y = "new deaths")
ggplot(data_NCL_January_2022, aes(x= avg_cases, y = avg_deaths, group = 1)) + geom_point() + geom_smooth(method = "lm") + labs(title = "Correlation coeffecient between new cases & new deaths of NCL in January 2022 (for avg in 7 days)", x = "new cases", y = "new deaths")
cor(data_AUS_January_2022$avg_cases, data_AUS_January_2022$avg_deaths, method = "pearson")
cor(data_NZL_January_2022$avg_cases, data_NZL_January_2022$avg_deaths, method = "pearson")
cor(data_NCL_January_2022$avg_cases, data_NCL_January_2022$avg_deaths, method = "pearson")