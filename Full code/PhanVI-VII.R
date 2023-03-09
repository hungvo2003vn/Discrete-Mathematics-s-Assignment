
input <- read.csv("owid-covid-data.csv", header = TRUE)
library(tidyr)
input <- input %>% na.omit()
input$new_cases <- abs(input$new_cases)
input$new_deaths <- abs(input$new_deaths)
input$date <- as.Date(input$date, format = "%m/%d/%Y")
Australia <- subset(input, location == "Australia")
Caledonia <- subset(input, location == "New Caledonia")
Zealand <- subset(input, location == "New Zealand")
world <- subset(input, iso_code == "OWID_WRL")
Aus_day <- format(Australia$date, "%d")
Aus_month <- format(Australia$date, "%m")
Aus_year <- format(Australia$date, "%Y")
Cal_day <- format(Caledonia$date, "%d")
Cal_month <- format(Caledonia$date, "%m")
Cal_year <- format(Caledonia$date, "%Y")
Zea_day <- format(Zealand$date, "%d")
Zea_month <- format(Zealand$date, "%m")
Zea_year <- format(Zealand$date, "%Y")
wrl_day <- format(world$date, "%d")
wrl_month <- format(world$date, "%m")
wrl_year <- format(world$date, "%Y")  
#Xu Ly So Lieu
#Australia
Aus_3_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_4_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_5_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_6_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_7_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_8_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_9_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_10_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_11_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_12_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_1_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_2_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_3_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_4_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_5_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_6_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_7_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_8_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_9_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_10_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_11_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_12_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_1_22 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Aus_2_22 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
#New Caledonia
Cal_9_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Cal_10_21 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Cal_11_21 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Cal_12_21 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Cal_1_22 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Cal_2_22 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
#New Zealand
Zea_3_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_4_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_5_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_6_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_7_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_8_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_9_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_10_20 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Zea_11_20 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Zea_12_20 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Zea_1_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_2_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_3_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_4_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_5_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_6_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_7_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_8_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_9_21 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_10_21 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Zea_11_21 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Zea_12_21 <- data.frame(iso_code = c(), 
                        continent = c(), 
                        location = c(), 
                        date = c(), 
                        new_cases = c(), 
                        new_deaths = c(), 
                        stringsAsFactors = FALSE)
Zea_1_22 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
Zea_2_22 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
#World
wrl_1_20 <- data.frame(iso_code = c(), 
                       continent = c(), 
                       location = c(), 
                       date = c(), 
                       new_cases = c(), 
                       new_deaths = c(), 
                       stringsAsFactors = FALSE)
wrl_1_21 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_1_22 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_7_20 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_7_21 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_8_20 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_8_21 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_10_20 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_10_21 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_11_20 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_11_21 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_12_20 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)
wrl_12_21 <- data.frame(iso_code = c(), 
                         continent = c(), 
                         location = c(), 
                         date = c(), 
                         new_cases = c(), 
                         new_deaths = c(), 
                         stringsAsFactors = FALSE)

#Australia
for (i in 1:721){
  if (Aus_month[i] == "01"){
    if (Aus_year[i] == "2021") Aus_1_21 <- rbind(Aus_1_21, Australia[i,])
    if (Aus_year[i] == "2022") Aus_1_22 <- rbind(Aus_1_22, Australia[i,])
  }
  
  if (Aus_month[i] == "02"){
    if (Aus_year[i] == "2021") Aus_2_21 <- rbind(Aus_2_21, Australia[i,])
    if (Aus_year[i] == "2022") Aus_2_22 <- rbind(Aus_2_22, Australia[i,])
  }
  
  if (Aus_month[i] == "03"){
    if (Aus_year[i] == "2020") Aus_3_20 <- rbind(Aus_3_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_3_21 <- rbind(Aus_3_21, Australia[i,])
  }
  
  if (Aus_month[i] == "04"){
    if (Aus_year[i] == "2020") Aus_4_20 <- rbind(Aus_4_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_4_21 <- rbind(Aus_4_21, Australia[i,])
  }
  
  if (Aus_month[i] == "05"){
    if (Aus_year[i] == "2020") Aus_5_20 <- rbind(Aus_5_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_5_21 <- rbind(Aus_5_21, Australia[i,])
  }
  
  if (Aus_month[i] == "06"){
    if (Aus_year[i] == "2020") Aus_6_20 <- rbind(Aus_6_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_6_21 <- rbind(Aus_6_21, Australia[i,])
  }
  
  if (Aus_month[i] == "07"){
    if (Aus_year[i] == "2020") Aus_7_20 <- rbind(Aus_7_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_7_21 <- rbind(Aus_7_21, Australia[i,])
  }
  
  if (Aus_month[i] == "08"){
    if (Aus_year[i] == "2020") Aus_8_20 <- rbind(Aus_8_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_8_21 <- rbind(Aus_8_21, Australia[i,])
  }
  
  if (Aus_month[i] == "09"){
    if (Aus_year[i] == "2020") Aus_9_20 <- rbind(Aus_9_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_9_21 <- rbind(Aus_9_21, Australia[i,])
  }
  
  if (Aus_month[i] == "10"){
    if (Aus_year[i] == "2020") Aus_10_20 <- rbind(Aus_10_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_10_21 <- rbind(Aus_10_21, Australia[i,])
  }
  
  if (Aus_month[i] == "11"){
    if (Aus_year[i] == "2020") Aus_11_20 <- rbind(Aus_11_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_11_21 <- rbind(Aus_11_21, Australia[i,])
  }
  
  if (Aus_month[i] == "12"){
    if (Aus_year[i] == "2020") Aus_12_20 <- rbind(Aus_12_20, Australia[i,])
    if (Aus_year[i] == "2021") Aus_12_21 <- rbind(Aus_12_21, Australia[i,])
  }
}
#New Caledonia
for (i in 1:162){
  if (Cal_month[i] == "09" & Cal_year[i] == "2021") Cal_9_21 <- rbind(Cal_9_21, Caledonia[i,])
  
  if (Cal_month[i] == "10" & Cal_year[i] == "2021") Cal_10_21 <- rbind(Cal_10_21, Caledonia[i,])
  
  if (Cal_month[i] == "11" & Cal_year[i] == "2021") Cal_11_21 <- rbind(Cal_11_21, Caledonia[i,])
  
  if (Cal_month[i] == "12" & Cal_year[i] == "2021") Cal_12_21 <- rbind(Cal_12_21, Caledonia[i,])
  
  if (Cal_month[i] == "01" & Cal_year[i] == "2022") Cal_1_22 <- rbind(Cal_1_22, Caledonia[i,])
  
  if (Cal_month[i] == "02" & Cal_year[i] == "2022") Cal_2_22 <- rbind(Cal_2_22, Caledonia[i,])
}
#New Zealand
for (i in 1:693){
  if (Zea_month[i] == "01"){
    if (Zea_year[i] == "2021") Zea_1_21 <- rbind(Zea_1_21, Zealand[i,])
    if (Zea_year[i] == "2022") Zea_1_22 <- rbind(Zea_1_22, Zealand[i,])
  }
  
  if (Zea_month[i] == "02"){
    if (Zea_year[i] == "2021") Zea_2_21 <- rbind(Zea_2_21, Zealand[i,])
    if (Zea_year[i] == "2022") Zea_2_22 <- rbind(Zea_2_22, Zealand[i,])
  }
  
  if (Zea_month[i] == "03"){
    if (Zea_year[i] == "2020") Zea_3_20 <- rbind(Zea_3_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_3_21 <- rbind(Zea_3_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "04"){
    if (Zea_year[i] == "2020") Zea_4_20 <- rbind(Zea_4_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_4_21 <- rbind(Zea_4_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "05"){
    if (Zea_year[i] == "2020") Zea_5_20 <- rbind(Zea_5_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_5_21 <- rbind(Zea_5_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "06"){
    if (Zea_year[i] == "2020") Zea_6_20 <- rbind(Zea_6_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_6_21 <- rbind(Zea_6_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "07"){
    if (Zea_year[i] == "2020") Zea_7_20 <- rbind(Zea_7_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_7_21 <- rbind(Zea_7_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "08"){
    if (Zea_year[i] == "2020") Zea_8_20 <- rbind(Zea_8_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_8_21 <- rbind(Zea_8_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "09"){
    if (Zea_year[i] == "2020") Zea_9_20 <- rbind(Zea_9_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_9_21 <- rbind(Zea_9_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "10"){
    if (Zea_year[i] == "2020") Zea_10_20 <- rbind(Zea_10_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_10_21 <- rbind(Zea_10_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "11"){
    if (Zea_year[i] == "2020") Zea_11_20 <- rbind(Zea_11_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_11_21 <- rbind(Zea_11_21, Zealand[i,])
  }
  
  if (Zea_month[i] == "12"){
    if (Zea_year[i] == "2020") Zea_12_20 <- rbind(Zea_12_20, Zealand[i,])
    if (Zea_year[i] == "2021") Zea_12_21 <- rbind(Zea_12_21, Zealand[i,])
  }
}
for (i in 1:760){
  if (wrl_month[i] == "01"){
    if (wrl_year[i] == "2020") wrl_1_20 <- rbind(wrl_1_20, world[i,])
    if (wrl_year[i] == "2021") wrl_1_21 <- rbind(wrl_1_21, world[i,])
    if (wrl_year[i] == "2022") wrl_1_22 <- rbind(wrl_1_22, world[i,])
  }
  
  if (wrl_month[i] == "07"){
    if (wrl_year[i] == "2020") wrl_7_20 <- rbind(wrl_7_20, world[i,])
    if (wrl_year[i] == "2021") wrl_7_21 <- rbind(wrl_7_21, world[i,])
  }
  
  if (wrl_month[i] == "08"){
    if (wrl_year[i] == "2020") wrl_8_20 <- rbind(wrl_8_20, world[i,])
    if (wrl_year[i] == "2021") wrl_8_21 <- rbind(wrl_8_21, world[i,])
  }
  
  if (wrl_month[i] == "10"){
    if (wrl_year[i] == "2020") wrl_10_20 <- rbind(wrl_10_20, world[i,])
    if (wrl_year[i] == "2021") wrl_10_21 <- rbind(wrl_10_21, world[i,])
  }
  
  if (wrl_month[i] == "11"){
    if (wrl_year[i] == "2020") wrl_11_20 <- rbind(wrl_11_20, world[i,])
    if (wrl_year[i] == "2021") wrl_11_21 <- rbind(wrl_11_21, world[i,])
  }
  
  if (wrl_month[i] == "12"){
    if (wrl_year[i] == "2020") wrl_12_20 <- rbind(wrl_12_20, world[i,])
    if (wrl_year[i] == "2021") wrl_12_21 <- rbind(wrl_12_21, world[i,])
  }
}
library(lubridate)
#Set preAus
preAus_1_21 <- Aus_1_21
preAus_1_22 <- Aus_1_22
preAus_10_20 <- Aus_10_20
preAus_10_21 <- Aus_10_21
preAus_11_20 <- Aus_11_20
preAus_11_21 <- Aus_11_21
preAus_12_20 <- Aus_12_20
preAus_12_21 <- Aus_12_21
preAus_2_21 <- Aus_2_21
preAus_2_22 <- Aus_2_22
preAus_3_20 <- Aus_3_20
preAus_3_21 <- Aus_3_21
preAus_4_20 <- Aus_4_20
preAus_4_21 <- Aus_4_21
preAus_5_20 <- Aus_5_20
preAus_5_21 <- Aus_5_21
preAus_6_20 <- Aus_6_20
preAus_6_21 <- Aus_6_21
preAus_7_20 <- Aus_7_20
preAus_7_21 <- Aus_7_21
preAus_8_20 <- Aus_8_20
preAus_8_21 <- Aus_8_21
preAus_9_20 <- Aus_9_20
preAus_9_21 <- Aus_9_21
#Set preCal
preCal_1_22 <- Cal_1_22
preCal_10_21 <- Cal_10_21
preCal_11_21 <- Cal_11_21
preCal_12_21 <- Cal_12_21
preCal_2_22 <- Cal_2_22
preCal_9_21 <- Cal_9_21
#set preZea
preZea_1_21 <- Zea_1_21
preZea_1_22 <- Zea_1_22
preZea_10_20 <- Zea_10_20
preZea_10_21 <- Zea_10_21
preZea_11_20 <- Zea_11_20
preZea_11_21 <- Zea_11_21
preZea_12_20 <- Zea_12_20
preZea_12_21 <- Zea_12_21
preZea_2_21 <- Zea_2_21
preZea_2_22 <- Zea_2_22
preZea_3_20 <- Zea_3_20
preZea_3_21 <- Zea_3_21
preZea_4_20 <- Zea_4_20
preZea_4_21 <- Zea_4_21
preZea_5_20 <- Zea_5_20
preZea_5_21 <- Zea_5_21
preZea_6_20 <- Zea_6_20
preZea_6_21 <- Zea_6_21
preZea_7_20 <- Zea_7_20
preZea_7_21 <- Zea_7_21
preZea_8_20 <- Zea_8_20
preZea_8_21 <- Zea_8_21
preZea_9_20 <- Zea_9_20
preZea_9_21 <- Zea_9_21
for (i in 1:31){
  #Australia
  if (i <= 6) {
    #new_cases
    temp1 <- (subset(preAus_1_21, day(preAus_1_21$date[]) <= i & day(preAus_1_21$date[]) >= 1))$new_cases
    Aus_1_21$new_cases[i] <- mean(temp1)
    
    temp1 <- (subset(preAus_1_22, day(preAus_1_22$date[]) <= i & day(preAus_1_22$date[]) >= 1))$new_cases
    Aus_1_22$new_cases[i] <- mean(temp1)
    
    temp3 <- (subset(preAus_3_20, day(preAus_3_20$date[]) <= i & day(preAus_3_20$date[]) >= 1))$new_cases
    Aus_3_20$new_cases[i] <- mean(temp3)
    
    temp3 <- (subset(preAus_3_21, day(preAus_3_21$date[]) <= i & day(preAus_3_21$date[]) >= 1))$new_cases
    Aus_3_21$new_cases[i] <- mean(temp3)
    
    temp5 <- (subset(preAus_5_20, day(preAus_5_20$date[]) <= i & day(preAus_5_20$date[]) >= 1))$new_cases
    Aus_5_20$new_cases[i] <- mean(temp5)
    
    temp5 <- (subset(preAus_5_21, day(preAus_5_21$date[]) <= i & day(preAus_5_21$date[]) >= 1))$new_cases
    Aus_5_21$new_cases[i] <- mean(temp5)
    
    temp7 <- (subset(preAus_7_20, day(preAus_7_20$date[]) <= i & day(preAus_7_20$date[]) >= 1))$new_cases
    Aus_7_20$new_cases[i] <- mean(temp7)
    
    temp7 <- (subset(preAus_7_21, day(preAus_7_21$date[]) <= i & day(preAus_7_21$date[]) >= 1))$new_cases
    Aus_7_21$new_cases[i] <- mean(temp7)
    
    temp8 <- (subset(preAus_8_20, day(preAus_8_20$date[]) <= i & day(preAus_8_20$date[]) >= 1))$new_cases
    Aus_8_20$new_cases[i] <- mean(temp8)
    
    temp8 <- (subset(preAus_8_21, day(preAus_8_21$date[]) <= i & day(preAus_8_21$date[]) >= 1))$new_cases
    Aus_8_21$new_cases[i] <- mean(temp8)
    
    temp10 <- (subset(preAus_10_20, day(preAus_10_20$date[]) <= i & day(preAus_10_20$date[]) >= 1))$new_cases
    Aus_10_20$new_cases[i] <- mean(temp10)
    
    temp10 <- (subset(preAus_10_21, day(preAus_10_21$date[]) <= i & day(preAus_10_21$date[]) >= 1))$new_cases
    Aus_10_21$new_cases[i] <- mean(temp10)
    
    temp12 <- (subset(preAus_12_20, day(preAus_12_20$date[]) <= i & day(preAus_12_20$date[]) >= 1))$new_cases
    Aus_12_20$new_cases[i] <- mean(temp12)
    
    temp12 <- (subset(preAus_12_21, day(preAus_12_21$date[]) <= i & day(preAus_12_21$date[]) >= 1))$new_cases
    Aus_12_21$new_cases[i] <- mean(temp12)
    #new_deaths
    temp1 <- (subset(preAus_1_21, day(preAus_1_21$date[]) <= i & day(preAus_1_21$date[]) >= 1))$new_deaths
    Aus_1_21$new_deaths[i] <- mean(temp1)
    
    temp1 <- (subset(preAus_1_22, day(preAus_1_22$date[]) <= i & day(preAus_1_22$date[]) >= 1))$new_deaths
    Aus_1_22$new_deaths[i] <- mean(temp1)
    
    temp3 <- (subset(preAus_3_20, day(preAus_3_20$date[]) <= i & day(preAus_3_20$date[]) >= 1))$new_deaths
    Aus_3_20$new_deaths[i] <- mean(temp3)
    
    temp3 <- (subset(preAus_3_21, day(preAus_3_21$date[]) <= i & day(preAus_3_21$date[]) >= 1))$new_deaths
    Aus_3_21$new_deaths[i] <- mean(temp3)
    
    temp5 <- (subset(preAus_5_20, day(preAus_5_20$date[]) <= i & day(preAus_5_20$date[]) >= 1))$new_deaths
    Aus_5_20$new_deaths[i] <- mean(temp5)
    
    temp5 <- (subset(preAus_5_21, day(preAus_5_21$date[]) <= i & day(preAus_5_21$date[]) >= 1))$new_deaths
    Aus_5_21$new_deaths[i] <- mean(temp5)
    
    temp7 <- (subset(preAus_7_20, day(preAus_7_20$date[]) <= i & day(preAus_7_20$date[]) >= 1))$new_deaths
    Aus_7_20$new_deaths[i] <- mean(temp7)
    
    temp7 <- (subset(preAus_7_21, day(preAus_7_21$date[]) <= i & day(preAus_7_21$date[]) >= 1))$new_deaths
    Aus_7_21$new_deaths[i] <- mean(temp7)
    
    temp8 <- (subset(preAus_8_20, day(preAus_8_20$date[]) <= i & day(preAus_8_20$date[]) >= 1))$new_deaths
    Aus_8_20$new_deaths[i] <- mean(temp8)
    
    temp8 <- (subset(preAus_8_21, day(preAus_8_21$date[]) <= i & day(preAus_8_21$date[]) >= 1))$new_deaths
    Aus_8_21$new_deaths[i] <- mean(temp8)
    
    temp10 <- (subset(preAus_10_20, day(preAus_10_20$date[]) <= i & day(preAus_10_20$date[]) >= 1))$new_deaths
    Aus_10_20$new_deaths[i] <- mean(temp10)
    
    temp10 <- (subset(preAus_10_21, day(preAus_10_21$date[]) <= i & day(preAus_10_21$date[]) >= 1))$new_deaths
    Aus_10_21$new_deaths[i] <- mean(temp10)
    
    temp12 <- (subset(preAus_12_20, day(preAus_12_20$date[]) <= i & day(preAus_12_20$date[]) >= 1))$new_deaths
    Aus_12_20$new_deaths[i] <- mean(temp12)
    
    temp12 <- (subset(preAus_12_21, day(preAus_12_21$date[]) <= i & day(preAus_12_21$date[]) >= 1))$new_deaths
    Aus_12_21$new_deaths[i] <- mean(temp12)
  }
  if (i >= 7){
    #new_cases
    temp1 <- (subset(preAus_1_21, day(preAus_1_21$date[]) <= i & day(preAus_1_21$date[]) >= i - 6))$new_cases
    Aus_1_21$new_cases[i] <- mean(temp1)
    
    temp1 <- (subset(preAus_1_22, day(preAus_1_22$date[]) <= i & day(preAus_1_22$date[]) >= i - 6))$new_cases
    Aus_1_22$new_cases[i] <- mean(temp1)
    
    temp3 <- (subset(preAus_3_20, day(preAus_3_20$date[]) <= i & day(preAus_3_20$date[]) >= i - 6))$new_cases
    Aus_3_20$new_cases[i] <- mean(temp3)
    
    temp3 <- (subset(preAus_3_21, day(preAus_3_21$date[]) <= i & day(preAus_3_21$date[]) >= i - 6))$new_cases
    Aus_3_21$new_cases[i] <- mean(temp3)
    
    temp5 <- (subset(preAus_5_20, day(preAus_5_20$date[]) <= i & day(preAus_5_20$date[]) >= i - 6))$new_cases
    Aus_5_20$new_cases[i] <- mean(temp5)
    
    temp5 <- (subset(preAus_5_21, day(preAus_5_21$date[]) <= i & day(preAus_5_21$date[]) >= i - 6))$new_cases
    Aus_5_21$new_cases[i] <- mean(temp5)
    
    temp7 <- (subset(preAus_7_20, day(preAus_7_20$date[]) <= i & day(preAus_7_20$date[]) >= i - 6))$new_cases
    Aus_7_20$new_cases[i] <- mean(temp7)
    
    temp7 <- (subset(preAus_7_21, day(preAus_7_21$date[]) <= i & day(preAus_7_21$date[]) >= i - 6))$new_cases
    Aus_7_21$new_cases[i] <- mean(temp7)
    
    temp8 <- (subset(preAus_8_20, day(preAus_8_20$date[]) <= i & day(preAus_8_20$date[]) >= i - 6))$new_cases
    Aus_8_20$new_cases[i] <- mean(temp8)
    
    temp8 <- (subset(preAus_8_21, day(preAus_8_21$date[]) <= i & day(preAus_8_21$date[]) >= i - 6))$new_cases
    Aus_8_21$new_cases[i] <- mean(temp8)
    
    temp10 <- (subset(preAus_10_20, day(preAus_10_20$date[]) <= i & day(preAus_10_20$date[]) >= i - 6))$new_cases
    Aus_10_20$new_cases[i] <- mean(temp10)
    
    temp10 <- (subset(preAus_10_21, day(preAus_10_21$date[]) <= i & day(preAus_10_21$date[]) >= i - 6))$new_cases
    Aus_10_21$new_cases[i] <- mean(temp10)
    
    temp12 <- (subset(preAus_12_20, day(preAus_12_20$date[]) <= i & day(preAus_12_20$date[]) >= i - 6))$new_cases
    Aus_12_20$new_cases[i] <- mean(temp12)
    
    temp12 <- (subset(preAus_12_21, day(preAus_12_21$date[]) <= i & day(preAus_12_21$date[]) >= i - 6))$new_cases
    Aus_12_21$new_cases[i] <- mean(temp12)
    #new_deaths
    temp1 <- (subset(preAus_1_21, day(preAus_1_21$date[]) <= i & day(preAus_1_21$date[]) >= i - 6))$new_deaths
    Aus_1_21$new_deaths[i] <- mean(temp1)
    
    temp1 <- (subset(preAus_1_22, day(preAus_1_22$date[]) <= i & day(preAus_1_22$date[]) >= i - 6))$new_deaths
    Aus_1_22$new_deaths[i] <- mean(temp1)
    
    temp3 <- (subset(preAus_3_20, day(preAus_3_20$date[]) <= i & day(preAus_3_20$date[]) >= i - 6))$new_deaths
    Aus_3_20$new_deaths[i] <- mean(temp3)
    
    temp3 <- (subset(preAus_3_21, day(preAus_3_21$date[]) <= i & day(preAus_3_21$date[]) >= i - 6))$new_deaths
    Aus_3_21$new_deaths[i] <- mean(temp3)
    
    temp5 <- (subset(preAus_5_20, day(preAus_5_20$date[]) <= i & day(preAus_5_20$date[]) >= i - 6))$new_deaths
    Aus_5_20$new_deaths[i] <- mean(temp5)
    
    temp5 <- (subset(preAus_5_21, day(preAus_5_21$date[]) <= i & day(preAus_5_21$date[]) >= i - 6))$new_deaths
    Aus_5_21$new_deaths[i] <- mean(temp5)
    
    temp7 <- (subset(preAus_7_20, day(preAus_7_20$date[]) <= i & day(preAus_7_20$date[]) >= i - 6))$new_deaths
    Aus_7_20$new_deaths[i] <- mean(temp7)
    
    temp7 <- (subset(preAus_7_21, day(preAus_7_21$date[]) <= i & day(preAus_7_21$date[]) >= i - 6))$new_deaths
    Aus_7_21$new_deaths[i] <- mean(temp7)
    
    temp8 <- (subset(preAus_8_20, day(preAus_8_20$date[]) <= i & day(preAus_8_20$date[]) >= i - 6))$new_deaths
    Aus_8_20$new_deaths[i] <- mean(temp8)
    
    temp8 <- (subset(preAus_8_21, day(preAus_8_21$date[]) <= i & day(preAus_8_21$date[]) >= i - 6))$new_deaths
    Aus_8_21$new_deaths[i] <- mean(temp8)
    
    temp10 <- (subset(preAus_10_20, day(preAus_10_20$date[]) <= i & day(preAus_10_20$date[]) >= i - 6))$new_deaths
    Aus_10_20$new_deaths[i] <- mean(temp10)
    
    temp10 <- (subset(preAus_10_21, day(preAus_10_21$date[]) <= i & day(preAus_10_21$date[]) >= i - 6))$new_deaths
    Aus_10_21$new_deaths[i] <- mean(temp10)
    
    temp12 <- (subset(preAus_12_20, day(preAus_12_20$date[]) <= i & day(preAus_12_20$date[]) >= i - 6))$new_deaths
    Aus_12_20$new_deaths[i] <- mean(temp12)
    
    temp12 <- (subset(preAus_12_21, day(preAus_12_21$date[]) <= i & day(preAus_12_21$date[]) >= i - 6))$new_deaths
    Aus_12_21$new_deaths[i] <- mean(temp12)
  }
  #New Caledonia
  if (i <= 6){
    #new_cases
    temp1 <- (subset(preCal_1_22, day(preCal_1_22$date[]) <= i & day(preCal_1_22$date[]) >= 1))$new_cases
    Cal_1_22$new_cases[i] <- mean(temp1)
    
    temp10 <- (subset(preCal_10_21, day(preCal_10_21$date[]) <= i & day(preCal_10_21$date[]) >= 1))$new_cases
    Cal_10_21$new_cases[i] <- mean(temp10)
    
    temp12 <- (subset(preCal_12_21, day(preCal_12_21$date[]) <= i & day(preCal_12_21$date[]) >= 1))$new_cases
    Cal_12_21$new_cases[i] <- mean(temp12)
    #new_deaths
    temp1 <- (subset(preCal_1_22, day(preCal_1_22$date[]) <= i & day(preCal_1_22$date[]) >= 1))$new_deaths
    Cal_1_22$new_deaths[i] <- mean(temp1)
    
    temp10 <- (subset(preCal_10_21, day(preCal_10_21$date[]) <= i & day(preCal_10_21$date[]) >= 1))$new_deaths
    Cal_10_21$new_deaths[i] <- mean(temp10)
    
    temp12 <- (subset(preCal_12_21, day(preCal_12_21$date[]) <= i & day(preCal_12_21$date[]) >= 1))$new_deaths
    Cal_12_21$new_deaths[i] <- mean(temp12)
  }
  if (i >= 7){
    #new_cases
    temp1 <- (subset(preCal_1_22, day(preCal_1_22$date[]) <= i & day(preCal_1_22$date[]) >= i - 6))$new_cases
    Cal_1_22$new_cases[i] <- mean(temp1)
    
    temp10 <- (subset(preCal_10_21, day(preCal_10_21$date[]) <= i & day(preCal_10_21$date[]) >= i - 6))$new_cases
    Cal_10_21$new_cases[i] <- mean(temp10)
    
    temp12 <- (subset(preCal_12_21, day(preCal_12_21$date[]) <= i & day(preCal_12_21$date[]) >= i - 6))$new_cases
    Cal_12_21$new_cases[i] <- mean(temp12)
    #new_deaths
    temp1 <- (subset(preCal_1_22, day(preCal_1_22$date[]) <= i & day(preCal_1_22$date[]) >= i - 6))$new_deaths
    Cal_1_22$new_deaths[i] <- mean(temp1)
    
    temp10 <- (subset(preCal_10_21, day(preCal_10_21$date[]) <= i & day(preCal_10_21$date[]) >= i - 6))$new_deaths
    Cal_10_21$new_deaths[i] <- mean(temp10)
    
    temp12 <- (subset(preCal_12_21, day(preCal_12_21$date[]) <= i & day(preCal_12_21$date[]) >= i - 6))$new_deaths
    Cal_12_21$new_deaths[i] <- mean(temp12)
  }
  #New_Zealand
  if (i <= 6) {
    #new_cases
    temp1 <- (subset(preZea_1_21, day(preZea_1_21$date[]) <= i & day(preZea_1_21$date[]) >= 1))$new_cases
    Zea_1_21$new_cases[i] <- mean(temp1)
    
    temp1 <- (subset(preZea_1_22, day(preZea_1_22$date[]) <= i & day(preZea_1_22$date[]) >= 1))$new_cases
    Zea_1_22$new_cases[i] <- mean(temp1)
    
    temp3 <- (subset(preZea_3_21, day(preZea_3_21$date[]) <= i & day(preZea_3_21$date[]) >= 1))$new_cases
    Zea_3_21$new_cases[i] <- mean(temp3)
    
    temp5 <- (subset(preZea_5_20, day(preZea_5_20$date[]) <= i & day(preZea_5_20$date[]) >= 1))$new_cases
    Zea_5_20$new_cases[i] <- mean(temp5)
    
    temp5 <- (subset(preZea_5_21, day(preZea_5_21$date[]) <= i & day(preZea_5_21$date[]) >= 1))$new_cases
    Zea_5_21$new_cases[i] <- mean(temp5)
    
    temp7 <- (subset(preZea_7_20, day(preZea_7_20$date[]) <= i & day(preZea_7_20$date[]) >= 1))$new_cases
    Zea_7_20$new_cases[i] <- mean(temp7)
    
    temp7 <- (subset(preZea_7_21, day(preZea_7_21$date[]) <= i & day(preZea_7_21$date[]) >= 1))$new_cases
    Zea_7_21$new_cases[i] <- mean(temp7)
    
    temp8 <- (subset(preZea_8_20, day(preZea_8_20$date[]) <= i & day(preZea_8_20$date[]) >= 1))$new_cases
    Zea_8_20$new_cases[i] <- mean(temp8)
    
    temp8 <- (subset(preZea_8_21, day(preZea_8_21$date[]) <= i & day(preZea_8_21$date[]) >= 1))$new_cases
    Zea_8_21$new_cases[i] <- mean(temp8)
    
    temp10 <- (subset(preZea_10_20, day(preZea_10_20$date[]) <= i & day(preZea_10_20$date[]) >= 1))$new_cases
    Zea_10_20$new_cases[i] <- mean(temp10)
    
    temp10 <- (subset(preZea_10_21, day(preZea_10_21$date[]) <= i & day(preZea_10_21$date[]) >= 1))$new_cases
    Zea_10_21$new_cases[i] <- mean(temp10)
    
    temp12 <- (subset(preZea_12_20, day(preZea_12_20$date[]) <= i & day(preZea_12_20$date[]) >= 1))$new_cases
    Zea_12_20$new_cases[i] <- mean(temp12)
    
    temp12 <- (subset(preZea_12_21, day(preZea_12_21$date[]) <= i & day(preZea_12_21$date[]) >= 1))$new_cases
    Zea_12_21$new_cases[i] <- mean(temp12)
    #new_deaths
    temp1 <- (subset(preZea_1_21, day(preZea_1_21$date[]) <= i & day(preZea_1_21$date[]) >= 1))$new_deaths
    Zea_1_21$new_deaths[i] <- mean(temp1)
    
    temp1 <- (subset(preZea_1_22, day(preZea_1_22$date[]) <= i & day(preZea_1_22$date[]) >= 1))$new_deaths
    Zea_1_22$new_deaths[i] <- mean(temp1)
    
    temp3 <- (subset(preZea_3_21, day(preZea_3_21$date[]) <= i & day(preZea_3_21$date[]) >= 1))$new_deaths
    Zea_3_21$new_deaths[i] <- mean(temp3)
    
    temp5 <- (subset(preZea_5_20, day(preZea_5_20$date[]) <= i & day(preZea_5_20$date[]) >= 1))$new_deaths
    Zea_5_20$new_deaths[i] <- mean(temp5)
    
    temp5 <- (subset(preZea_5_21, day(preZea_5_21$date[]) <= i & day(preZea_5_21$date[]) >= 1))$new_deaths
    Zea_5_21$new_deaths[i] <- mean(temp5)
    
    temp7 <- (subset(preZea_7_20, day(preZea_7_20$date[]) <= i & day(preZea_7_20$date[]) >= 1))$new_deaths
    Zea_7_20$new_deaths[i] <- mean(temp7)
    
    temp7 <- (subset(preZea_7_21, day(preZea_7_21$date[]) <= i & day(preZea_7_21$date[]) >= 1))$new_deaths
    Zea_7_21$new_deaths[i] <- mean(temp7)
    
    temp8 <- (subset(preZea_8_20, day(preZea_8_20$date[]) <= i & day(preZea_8_20$date[]) >= 1))$new_deaths
    Zea_8_20$new_deaths[i] <- mean(temp8)
    
    temp8 <- (subset(preZea_8_21, day(preZea_8_21$date[]) <= i & day(preZea_8_21$date[]) >= 1))$new_deaths
    Zea_8_21$new_deaths[i] <- mean(temp8)
    
    temp10 <- (subset(preZea_10_20, day(preZea_10_20$date[]) <= i & day(preZea_10_20$date[]) >= 1))$new_deaths
    Zea_10_20$new_deaths[i] <- mean(temp10)
    
    temp10 <- (subset(preZea_10_21, day(preZea_10_21$date[]) <= i & day(preZea_10_21$date[]) >= 1))$new_deaths
    Zea_10_21$new_deaths[i] <- mean(temp10)
    
    temp12 <- (subset(preZea_12_20, day(preZea_12_20$date[]) <= i & day(preZea_12_20$date[]) >= 1))$new_deaths
    Zea_12_20$new_deaths[i] <- mean(temp12)
    
    temp12 <- (subset(preZea_12_21, day(preZea_12_21$date[]) <= i & day(preZea_12_21$date[]) >= 1))$new_deaths
    Zea_12_21$new_deaths[i] <- mean(temp12)
  }
  if (i >= 7){
    #new_cases
    temp1 <- (subset(preZea_1_21, day(preZea_1_21$date[]) <= i & day(preZea_1_21$date[]) >= i - 6))$new_cases
    Zea_1_21$new_cases[i] <- mean(temp1)
    
    temp1 <- (subset(preZea_1_22, day(preZea_1_22$date[]) <= i & day(preZea_1_22$date[]) >= i - 6))$new_cases
    Zea_1_22$new_cases[i] <- mean(temp1)
    
    temp3 <- (subset(preZea_3_21, day(preZea_3_21$date[]) <= i & day(preZea_3_21$date[]) >= i - 6))$new_cases
    Zea_3_21$new_cases[i] <- mean(temp3)
    
    temp5 <- (subset(preZea_5_20, day(preZea_5_20$date[]) <= i & day(preZea_5_20$date[]) >= i - 6))$new_cases
    Zea_5_20$new_cases[i] <- mean(temp5)
    
    temp5 <- (subset(preZea_5_21, day(preZea_5_21$date[]) <= i & day(preZea_5_21$date[]) >= i - 6))$new_cases
    Zea_5_21$new_cases[i] <- mean(temp5)
    
    temp7 <- (subset(preZea_7_20, day(preZea_7_20$date[]) <= i & day(preZea_7_20$date[]) >= i - 6))$new_cases
    Zea_7_20$new_cases[i] <- mean(temp7)
    
    temp7 <- (subset(preZea_7_21, day(preZea_7_21$date[]) <= i & day(preZea_7_21$date[]) >= i - 6))$new_cases
    Zea_7_21$new_cases[i] <- mean(temp7)
    
    temp8 <- (subset(preZea_8_20, day(preZea_8_20$date[]) <= i & day(preZea_8_20$date[]) >= i - 6))$new_cases
    Zea_8_20$new_cases[i] <- mean(temp8)
    
    temp8 <- (subset(preZea_8_21, day(preZea_8_21$date[]) <= i & day(preZea_8_21$date[]) >= i - 6))$new_cases
    Zea_8_21$new_cases[i] <- mean(temp8)
    
    temp10 <- (subset(preZea_10_20, day(preZea_10_20$date[]) <= i & day(preZea_10_20$date[]) >= i - 6))$new_cases
    Zea_10_20$new_cases[i] <- mean(temp10)
    
    temp10 <- (subset(preZea_10_21, day(preZea_10_21$date[]) <= i & day(preZea_10_21$date[]) >= i - 6))$new_cases
    Zea_10_21$new_cases[i] <- mean(temp10)
    
    temp12 <- (subset(preZea_12_20, day(preZea_12_20$date[]) <= i & day(preZea_12_20$date[]) >= i - 6))$new_cases
    Zea_12_20$new_cases[i] <- mean(temp12)
    
    temp12 <- (subset(preZea_12_21, day(preZea_12_21$date[]) <= i & day(preZea_12_21$date[]) >= i - 6))$new_cases
    Zea_12_21$new_cases[i] <- mean(temp12)
    #new_deaths
    temp1 <- (subset(preZea_1_21, day(preZea_1_21$date[]) <= i & day(preZea_1_21$date[]) >= i - 6))$new_deaths
    Zea_1_21$new_deaths[i] <- mean(temp1)
    
    temp1 <- (subset(preZea_1_22, day(preZea_1_22$date[]) <= i & day(preZea_1_22$date[]) >= i - 6))$new_deaths
    Zea_1_22$new_deaths[i] <- mean(temp1)
    
    temp3 <- (subset(preZea_3_21, day(preZea_3_21$date[]) <= i & day(preZea_3_21$date[]) >= i - 6))$new_deaths
    Zea_3_21$new_deaths[i] <- mean(temp3)
    
    temp5 <- (subset(preZea_5_20, day(preZea_5_20$date[]) <= i & day(preZea_5_20$date[]) >= i - 6))$new_deaths
    Zea_5_20$new_deaths[i] <- mean(temp5)
    
    temp5 <- (subset(preZea_5_21, day(preZea_5_21$date[]) <= i & day(preZea_5_21$date[]) >= i - 6))$new_deaths
    Zea_5_21$new_deaths[i] <- mean(temp5)
    
    temp7 <- (subset(preZea_7_20, day(preZea_7_20$date[]) <= i & day(preZea_7_20$date[]) >= i - 6))$new_deaths
    Zea_7_20$new_deaths[i] <- mean(temp7)
    
    temp7 <- (subset(preZea_7_21, day(preZea_7_21$date[]) <= i & day(preZea_7_21$date[]) >= i - 6))$new_deaths
    Zea_7_21$new_deaths[i] <- mean(temp7)
    
    temp8 <- (subset(preZea_8_20, day(preZea_8_20$date[]) <= i & day(preZea_8_20$date[]) >= i - 6))$new_deaths
    Zea_8_20$new_deaths[i] <- mean(temp8)
    
    temp8 <- (subset(preZea_8_21, day(preZea_8_21$date[]) <= i & day(preZea_8_21$date[]) >= i - 6))$new_deaths
    Zea_8_21$new_deaths[i] <- mean(temp8)
    
    temp10 <- (subset(preZea_10_20, day(preZea_10_20$date[]) <= i & day(preZea_10_20$date[]) >= i - 6))$new_deaths
    Zea_10_20$new_deaths[i] <- mean(temp10)
    
    temp10 <- (subset(preZea_10_21, day(preZea_10_21$date[]) <= i & day(preZea_10_21$date[]) >= i - 6))$new_deaths
    Zea_10_21$new_deaths[i] <- mean(temp10)
    
    temp12 <- (subset(preZea_12_20, day(preZea_12_20$date[]) <= i & day(preZea_12_20$date[]) >= i - 6))$new_deaths
    Zea_12_20$new_deaths[i] <- mean(temp12)
    
    temp12 <- (subset(preZea_12_21, day(preZea_12_21$date[]) <= i & day(preZea_12_21$date[]) >= i - 6))$new_deaths
    Zea_12_21$new_deaths[i] <- mean(temp12)
  }
}
for (i in 1:30){
  #Australia
  if (i <= 6) {
    #new_cases
    temp4 <- (subset(preAus_4_20, day(preAus_4_20$date[]) <= i & day(preAus_4_20$date[]) >= 1))$new_cases
    Aus_4_20$new_cases[i] <- mean(temp4)
    
    temp4 <- (subset(preAus_4_21, day(preAus_4_21$date[]) <= i & day(preAus_4_21$date[]) >= 1))$new_cases
    Aus_4_21$new_cases[i] <- mean(temp4)
    
    temp6 <- (subset(preAus_6_20, day(preAus_6_20$date[]) <= i & day(preAus_6_20$date[]) >= 1))$new_cases
    Aus_6_20$new_cases[i] <- mean(temp6)
    
    temp6 <- (subset(preAus_6_21, day(preAus_6_21$date[]) <= i & day(preAus_6_21$date[]) >= 1))$new_cases
    Aus_6_21$new_cases[i] <- mean(temp6)
    
    temp9 <- (subset(preAus_9_20, day(preAus_9_20$date[]) <= i & day(preAus_9_20$date[]) >= 1))$new_cases
    Aus_9_20$new_cases[i] <- mean(temp9)
    
    temp9 <- (subset(preAus_9_21, day(preAus_9_21$date[]) <= i & day(preAus_9_21$date[]) >= 1))$new_cases
    Aus_9_21$new_cases[i] <- mean(temp9)
    
    temp11 <- (subset(preAus_11_20, day(preAus_11_20$date[]) <= i & day(preAus_11_20$date[]) >= 1))$new_cases
    Aus_11_20$new_cases[i] <- mean(temp11)
    
    temp11 <- (subset(preAus_11_21, day(preAus_11_21$date[]) <= i & day(preAus_11_21$date[]) >= 1))$new_cases
    Aus_11_21$new_cases[i] <- mean(temp11)
    #new_deaths
    temp4 <- (subset(preAus_4_20, day(preAus_4_20$date[]) <= i & day(preAus_4_20$date[]) >= 1))$new_deaths
    Aus_4_20$new_deaths[i] <- mean(temp4)
    
    temp4 <- (subset(preAus_4_21, day(preAus_4_21$date[]) <= i & day(preAus_4_21$date[]) >= 1))$new_deaths
    Aus_4_21$new_deaths[i] <- mean(temp4)
    
    temp6 <- (subset(preAus_6_20, day(preAus_6_20$date[]) <= i & day(preAus_6_20$date[]) >= 1))$new_deaths
    Aus_6_20$new_deaths[i] <- mean(temp6)
    
    temp6 <- (subset(preAus_6_21, day(preAus_6_21$date[]) <= i & day(preAus_6_21$date[]) >= 1))$new_deaths
    Aus_6_21$new_deaths[i] <- mean(temp6)
    
    temp9 <- (subset(preAus_9_20, day(preAus_9_20$date[]) <= i & day(preAus_9_20$date[]) >= 1))$new_deaths
    Aus_9_20$new_deaths[i] <- mean(temp9)
    
    temp9 <- (subset(preAus_9_21, day(preAus_9_21$date[]) <= i & day(preAus_9_21$date[]) >= 1))$new_deaths
    Aus_9_21$new_deaths[i] <- mean(temp9)
    
    temp11 <- (subset(preAus_11_20, day(preAus_11_20$date[]) <= i & day(preAus_11_20$date[]) >= 1))$new_deaths
    Aus_11_20$new_deaths[i] <- mean(temp11)
    
    temp11 <- (subset(preAus_11_21, day(preAus_11_21$date[]) <= i & day(preAus_11_21$date[]) >= 1))$new_deaths
    Aus_11_21$new_deaths[i] <- mean(temp11)
  }
  if (i >= 7){
    #new_cases
    temp4 <- (subset(preAus_4_20, day(preAus_4_20$date[]) <= i & day(preAus_4_20$date[]) >= i - 6))$new_cases
    Aus_4_20$new_cases[i] <- mean(temp4)
    
    temp4 <- (subset(preAus_4_21, day(preAus_4_21$date[]) <= i & day(preAus_4_21$date[]) >= i - 6))$new_cases
    Aus_4_21$new_cases[i] <- mean(temp4)
    
    temp6 <- (subset(preAus_6_20, day(preAus_6_20$date[]) <= i & day(preAus_6_20$date[]) >= i - 6))$new_cases
    Aus_6_20$new_cases[i] <- mean(temp6)
    
    temp6 <- (subset(preAus_6_21, day(preAus_6_21$date[]) <= i & day(preAus_6_21$date[]) >= i - 6))$new_cases
    Aus_6_21$new_cases[i] <- mean(temp6)
    
    temp9 <- (subset(preAus_9_20, day(preAus_9_20$date[]) <= i & day(preAus_9_20$date[]) >= i - 6))$new_cases
    Aus_9_20$new_cases[i] <- mean(temp9)
    
    temp9 <- (subset(preAus_9_21, day(preAus_9_21$date[]) <= i & day(preAus_9_21$date[]) >= i - 6))$new_cases
    Aus_9_21$new_cases[i] <- mean(temp9)
    
    temp11 <- (subset(preAus_11_20, day(preAus_11_20$date[]) <= i & day(preAus_11_20$date[]) >= i - 6))$new_cases
    Aus_11_20$new_cases[i] <- mean(temp11)
    
    temp11 <- (subset(preAus_11_21, day(preAus_11_21$date[]) <= i & day(preAus_11_21$date[]) >= i - 6))$new_cases
    Aus_11_21$new_cases[i] <- mean(temp11)
    #new_deaths
    temp4 <- (subset(preAus_4_20, day(preAus_4_20$date[]) <= i & day(preAus_4_20$date[]) >= i - 6))$new_deaths
    Aus_4_20$new_deaths[i] <- mean(temp4)
    
    temp4 <- (subset(preAus_4_21, day(preAus_4_21$date[]) <= i & day(preAus_4_21$date[]) >= i - 6))$new_deaths
    Aus_4_21$new_deaths[i] <- mean(temp4)
    
    temp6 <- (subset(preAus_6_20, day(preAus_6_20$date[]) <= i & day(preAus_6_20$date[]) >= i - 6))$new_deaths
    Aus_6_20$new_deaths[i] <- mean(temp6)
    
    temp6 <- (subset(preAus_6_21, day(preAus_6_21$date[]) <= i & day(preAus_6_21$date[]) >= i - 6))$new_deaths
    Aus_6_21$new_deaths[i] <- mean(temp6)
    
    temp9 <- (subset(preAus_9_20, day(preAus_9_20$date[]) <= i & day(preAus_9_20$date[]) >= i - 6))$new_deaths
    Aus_9_20$new_deaths[i] <- mean(temp9)
    
    temp9 <- (subset(preAus_9_21, day(preAus_9_21$date[]) <= i & day(preAus_9_21$date[]) >= i - 6))$new_deaths
    Aus_9_21$new_deaths[i] <- mean(temp9)
    
    temp11 <- (subset(preAus_11_20, day(preAus_11_20$date[]) <= i & day(preAus_11_20$date[]) >= i - 6))$new_deaths
    Aus_11_20$new_deaths[i] <- mean(temp11)
    
    temp11 <- (subset(preAus_11_21, day(preAus_11_21$date[]) <= i & day(preAus_11_21$date[]) >= i - 6))$new_deaths
    Aus_11_21$new_deaths[i] <- mean(temp11)
  }
  #New Caledonia
  if (i <= 6){
    #new_cases
    temp11 <- (subset(preCal_11_21, day(preCal_11_21$date[]) <= i & day(preCal_11_21$date[]) >= 1))$new_cases
    Cal_11_21$new_cases[i] <- mean(temp11)
    #new_deaths
    temp11 <- (subset(preCal_11_21, day(preCal_11_21$date[]) <= i & day(preCal_11_21$date[]) >= 1))$new_deaths
    Cal_11_21$new_deaths[i] <- mean(temp11)
  }
  if (i >= 7){
    #new_cases
    temp11 <- (subset(preCal_11_21, day(preCal_11_21$date[]) <= i & day(preCal_11_21$date[]) >= i - 6))$new_cases
    Cal_11_21$new_cases[i] <- mean(temp11)
    #new_deaths
    temp11 <- (subset(preCal_11_21, day(preCal_11_21$date[]) <= i & day(preCal_11_21$date[]) >= i - 6))$new_deaths
    Cal_11_21$new_deaths[i] <- mean(temp11)
  }
  #New_Zealand
  if (i <= 6) {
    #new_cases
    temp4 <- (subset(preZea_4_20, day(preZea_4_20$date[]) <= i & day(preZea_4_20$date[]) >= 1))$new_cases
    Zea_4_20$new_cases[i] <- mean(temp4)
    
    temp4 <- (subset(preZea_4_21, day(preZea_4_21$date[]) <= i & day(preZea_4_21$date[]) >= 1))$new_cases
    Zea_4_21$new_cases[i] <- mean(temp4)
    
    temp6 <- (subset(preZea_6_20, day(preZea_6_20$date[]) <= i & day(preZea_6_20$date[]) >= 1))$new_cases
    Zea_6_20$new_cases[i] <- mean(temp6)
    
    temp6 <- (subset(preZea_6_21, day(preZea_6_21$date[]) <= i & day(preZea_6_21$date[]) >= 1))$new_cases
    Zea_6_21$new_cases[i] <- mean(temp6)
    
    temp9 <- (subset(preZea_9_20, day(preZea_9_20$date[]) <= i & day(preZea_9_20$date[]) >= 1))$new_cases
    Zea_9_20$new_cases[i] <- mean(temp9)
    
    temp9 <- (subset(preZea_9_21, day(preZea_9_21$date[]) <= i & day(preZea_9_21$date[]) >= 1))$new_cases
    Zea_9_21$new_cases[i] <- mean(temp9)
    
    temp11 <- (subset(preZea_11_20, day(preZea_11_20$date[]) <= i & day(preZea_11_20$date[]) >= 1))$new_cases
    Zea_11_20$new_cases[i] <- mean(temp11)
    
    temp11 <- (subset(preZea_11_21, day(preZea_11_21$date[]) <= i & day(preZea_11_21$date[]) >= 1))$new_cases
    Zea_11_21$new_cases[i] <- mean(temp11)
    #new_deaths
    temp4 <- (subset(preZea_4_20, day(preZea_4_20$date[]) <= i & day(preZea_4_20$date[]) >= 1))$new_deaths
    Zea_4_20$new_deaths[i] <- mean(temp4)
    
    temp4 <- (subset(preZea_4_21, day(preZea_4_21$date[]) <= i & day(preZea_4_21$date[]) >= 1))$new_deaths
    Zea_4_21$new_deaths[i] <- mean(temp4)
    
    temp6 <- (subset(preZea_6_20, day(preZea_6_20$date[]) <= i & day(preZea_6_20$date[]) >= 1))$new_deaths
    Zea_6_20$new_deaths[i] <- mean(temp6)
    
    temp6 <- (subset(preZea_6_21, day(preZea_6_21$date[]) <= i & day(preZea_6_21$date[]) >= 1))$new_deaths
    Zea_6_21$new_deaths[i] <- mean(temp6)
    
    temp9 <- (subset(preZea_9_20, day(preZea_9_20$date[]) <= i & day(preZea_9_20$date[]) >= 1))$new_deaths
    Zea_9_20$new_deaths[i] <- mean(temp9)
    
    temp9 <- (subset(preZea_9_21, day(preZea_9_21$date[]) <= i & day(preZea_9_21$date[]) >= 1))$new_deaths
    Zea_9_21$new_deaths[i] <- mean(temp9)
    
    temp11 <- (subset(preZea_11_20, day(preZea_11_20$date[]) <= i & day(preZea_11_20$date[]) >= 1))$new_deaths
    Zea_11_20$new_deaths[i] <- mean(temp11)
    
    temp11 <- (subset(preZea_10_21, day(preZea_11_21$date[]) <= i & day(preZea_11_21$date[]) >= 1))$new_deaths
    Zea_11_21$new_deaths[i] <- mean(temp11)
  }
  if (i >= 7){
    #new_cases
    temp4 <- (subset(preZea_4_20, day(preZea_4_20$date[]) <= i & day(preZea_4_20$date[]) >= i - 6))$new_cases
    Zea_4_20$new_cases[i] <- mean(temp5)
    
    temp4 <- (subset(preZea_4_21, day(preZea_4_21$date[]) <= i & day(preZea_4_21$date[]) >= i - 6))$new_cases
    Zea_4_21$new_cases[i] <- mean(temp4)
    
    temp6 <- (subset(preZea_6_20, day(preZea_6_20$date[]) <= i & day(preZea_6_20$date[]) >= i - 6))$new_cases
    Zea_6_20$new_cases[i] <- mean(temp6)
    
    temp6 <- (subset(preZea_6_21, day(preZea_6_21$date[]) <= i & day(preZea_6_21$date[]) >= i - 6))$new_cases
    Zea_6_21$new_cases[i] <- mean(temp6)
    
    temp9 <- (subset(preZea_9_20, day(preZea_9_20$date[]) <= i & day(preZea_9_20$date[]) >= i - 6))$new_cases
    Zea_9_20$new_cases[i] <- mean(temp9)
    
    temp9 <- (subset(preZea_9_21, day(preZea_9_21$date[]) <= i & day(preZea_9_21$date[]) >= i - 6))$new_cases
    Zea_9_21$new_cases[i] <- mean(temp9)
    
    temp11 <- (subset(preZea_11_20, day(preZea_11_20$date[]) <= i & day(preZea_11_20$date[]) >= i - 6))$new_cases
    Zea_11_20$new_cases[i] <- mean(temp11)
    
    temp11 <- (subset(preZea_11_21, day(preZea_11_21$date[]) <= i & day(preZea_11_21$date[]) >= i - 6))$new_cases
    Zea_11_21$new_cases[i] <- mean(temp11)
    #new_deaths
    temp4 <- (subset(preZea_4_20, day(preZea_4_20$date[]) <= i & day(preZea_4_20$date[]) >= i - 6))$new_deaths
    Zea_4_20$new_deaths[i] <- mean(temp4)
    
    temp4 <- (subset(preZea_4_21, day(preZea_4_21$date[]) <= i & day(preZea_4_21$date[]) >= i - 6))$new_deaths
    Zea_4_21$new_deaths[i] <- mean(temp4)
    
    temp6 <- (subset(preZea_6_20, day(preZea_6_20$date[]) <= i & day(preZea_6_20$date[]) >= i - 6))$new_deaths
    Zea_6_20$new_deaths[i] <- mean(temp6)
    
    temp6 <- (subset(preZea_6_21, day(preZea_6_21$date[]) <= i & day(preZea_6_21$date[]) >= i - 6))$new_deaths
    Zea_6_21$new_deaths[i] <- mean(temp6)
    
    temp9 <- (subset(preZea_9_20, day(preZea_9_20$date[]) <= i & day(preZea_9_20$date[]) >= i - 6))$new_deaths
    Zea_9_20$new_deaths[i] <- mean(temp9)
    
    temp9 <- (subset(preZea_9_21, day(preZea_9_21$date[]) <= i & day(preZea_9_21$date[]) >= i - 6))$new_deaths
    Zea_9_21$new_deaths[i] <- mean(temp9)
    
    temp11 <- (subset(preZea_11_20, day(preZea_11_20$date[]) <= i & day(preZea_11_20$date[]) >= i - 6))$new_deaths
    Zea_11_20$new_deaths[i] <- mean(temp11)
    
    temp11 <- (subset(preZea_10_21, day(preZea_11_21$date[]) <= i & day(preZea_11_21$date[]) >= i - 6))$new_deaths
    Zea_11_21$new_deaths[i] <- mean(temp11)
  }
}
for(i in 1:28){
  #Australia
  #new_cases
  if (i <= 6){
    temp2 <- (subset(preAus_2_21, day(preAus_2_21$date[]) <= i & day(preAus_2_21$date[]) >= 1))$new_cases
    Aus_2_21$new_cases[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preAus_2_21, day(preAus_2_21$date[]) <= i & day(preAus_2_21$date[]) >= i - 6))$new_cases
    Aus_2_21$new_cases[i] <- mean(temp2)
  }
  #new_deaths
  if (i <= 6){
    temp2 <- (subset(preAus_2_21, day(preAus_2_21$date[]) <= i & day(preAus_2_21$date[]) >= 1))$new_deaths
    Aus_2_21$new_deaths[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preAus_2_21, day(preAus_2_21$date[]) <= i & day(preAus_2_21$date[]) >= i - 6))$new_deaths
    Aus_2_21$new_deaths[i] <- mean(temp2)
  }
  #New Zealand
  if (i <= 6){
    temp2 <- (subset(preZea_2_21, day(preZea_2_21$date[]) <= i & day(preZea_2_21$date[]) >= 1))$new_cases
    Zea_2_21$new_cases[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preZea_2_21, day(preZea_2_21$date[]) <= i & day(preZea_2_21$date[]) >= i - 6))$new_cases
    Zea_2_21$new_cases[i] <- mean(temp2)
  }
  #new_deaths
  if (i <= 6){
    temp2 <- (subset(preZea_2_21, day(preZea_2_21$date[]) <= i & day(preZea_2_21$date[]) >= 1))$new_deaths
    Zea_2_21$new_deaths[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preZea_2_21, day(preZea_2_21$date[]) <= i & day(preZea_2_21$date[]) >= i - 6))$new_deaths
    Zea_2_21$new_deaths[i] <- mean(temp2)
  }
}
for(i in 1:19){
  #Australia
  #new_cases
  if (i <= 6){
    temp2 <- (subset(preAus_2_22, day(preAus_2_22$date[]) <= i & day(preAus_2_22$date[]) >= 1))$new_cases
    Aus_2_22$new_cases[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preAus_2_22, day(preAus_2_22$date[]) <= i & day(preAus_2_22$date[]) >= i - 6))$new_cases
    Aus_2_22$new_cases[i] <- mean(temp2)
  }
  #new_deaths
  if (i <= 6){
    temp2 <- (subset(preAus_2_22, day(preAus_2_22$date[]) <= i & day(preAus_2_22$date[]) >= 1))$new_deaths
    Aus_2_22$new_deaths[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preAus_2_22, day(preAus_2_22$date[]) <= i & day(preAus_2_22$date[]) >= i - 6))$new_deaths
    Aus_2_22$new_deaths[i] <- mean(temp2)
  }
  #New Zealand
  if (i <= 6){
    temp2 <- (subset(preZea_2_22, day(preZea_2_22$date[]) <= i & day(preZea_2_22$date[]) >= 1))$new_cases
    Zea_2_22$new_cases[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preZea_2_22, day(preZea_2_22$date[]) <= i & day(preZea_2_22$date[]) >= i - 6))$new_cases
    Zea_2_22$new_cases[i] <- mean(temp2)
  }
  #new_deaths
  if (i <= 6){
    temp2 <- (subset(preZea_2_22, day(preZea_2_22$date[]) <= i & day(preZea_2_22$date[]) >= 1))$new_deaths
    Zea_2_22$new_deaths[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preZea_2_22, day(preZea_2_22$date[]) <= i & day(preZea_2_22$date[]) >= i - 6))$new_deaths
    Zea_2_22$new_deaths[i] <- mean(temp2)
  }
}
for(i in 1:18){
  #New Caledonia
  #new_cases
  if (i <= 6){
    temp2 <- (subset(preCal_2_22, day(preCal_2_22$date[]) <= i & day(preCal_2_22$date[]) >= 1))$new_cases
    Cal_2_22$new_cases[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preCal_2_22, day(preCal_2_22$date[]) <= i & day(preCal_2_22$date[]) >= i - 6))$new_cases
    Cal_2_22$new_cases[i] <- mean(temp2)
  }
  #new_deaths
  if (i <= 6){
    temp2 <- (subset(preCal_2_22, day(preCal_2_22$date[]) <= i & day(preCal_2_22$date[]) >= 1))$new_deaths
    Cal_2_22$new_deaths[i] <- mean(temp2)
  }
  if (i >= 7){
    temp2 <- (subset(preCal_2_22, day(preCal_2_22$date[]) <= i & day(preCal_2_22$date[]) >= i - 6))$new_deaths
    Cal_2_22$new_deaths[i] <- mean(temp2)
  }
}
for (i in 1:21){
  #New Caledonia
  #new_cases
  if (i <= 6){
    temp9 <- (subset(preCal_9_21, day(preCal_9_21$date[]) <= i + 9 & day(preCal_9_21$date[]) >= 10))$new_cases
    Cal_9_21$new_cases[i] <- mean(temp9)
  }
  if (i >= 7){
    temp9 <- (subset(preCal_9_21, day(preCal_9_21$date[]) <= i + 9 & day(preCal_9_21$date[]) >= i + 3))$new_cases
    Cal_9_21$new_cases[i] <- mean(temp9)
  }
  #new_deaths
  if (i <= 6){
    temp9 <- (subset(preCal_9_21, day(preCal_9_21$date[]) <= i + 9 & day(preCal_9_21$date[]) >= 10))$new_deaths
    Cal_9_21$new_deaths[i] <- mean(temp9)
  }
  if (i >= 7){
    temp9 <- (subset(preCal_9_21, day(preCal_9_21$date[]) <= i + 9 & day(preCal_9_21$date[]) >= i + 3))$new_deaths
    Cal_9_21$new_deaths[i] <- mean(temp9)
  }
}
for (i in 1:3){
  #New Zealand
  #new_cases
  temp3 <- (subset(preZea_3_20, day(preZea_3_20$date[]) <= i + 28 & day(preZea_3_20$date[]) >= 29))$new_cases
  Zea_3_20$new_cases[i] <- mean(temp3)
  #new_deaths
  temp3 <- (subset(preZea_3_20, day(preZea_3_20$date[]) <= i + 28 & day(preZea_3_20$date[]) >= 29))$new_deaths
  Zea_3_20$new_deaths[i] <- mean(temp3)
}
library(ggplot2)
#th�ng 1 7 8 10
#B�i vi.1
#Australia

aus_ncases_1 <- Aus_10_20 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in October 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

aus_ncases_2 <- Aus_10_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

aus_ncases_3 <- Aus_8_20 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in August 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

aus_ncases_4 <- Aus_8_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in August 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

aus_ncases_5 <- Aus_7_20 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in July 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

aus_ncases_6 <- Aus_7_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in July 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

aus_ncases_7 <- Aus_1_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in January 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

aus_ncases_8 <- Aus_1_22 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in Australia in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

#Caledonia

cal_ncases_1 <- Cal_10_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Caledonia in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

cal_ncases_2 <- Cal_1_22 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Caledonia in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

#New Zealand

zea_ncases_1 <- Zea_10_20 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in October 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

zea_ncases_2 <- Zea_10_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

zea_ncases_3 <- Zea_8_20 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in August 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

zea_ncases_4 <- Zea_8_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in August 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

zea_ncases_5 <- Zea_7_20 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in July 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

zea_ncases_6 <- Zea_7_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in July 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

zea_ncases_7 <- Zea_1_21 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in January 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

zea_ncases_8 <- Zea_1_22 %>%
  ggplot(aes(date, new_cases)) +
  geom_line(color = "orange") + 
  theme(
    axis.title.y = element_text(color = "orange", size = 13)
  ) +
  labs(
    title = "New Cases in New Zealand in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New cases"
  )

#B�i vi.2

aus_ndeaths_1 <- Aus_10_20 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in October 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

aus_ndeaths_2 <- Aus_10_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

aus_ndeaths_3 <- Aus_8_20 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in August 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

aus_ndeaths_4 <- Aus_8_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in August 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

aus_ndeaths_5 <- Aus_7_20 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in July 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

aus_ndeaths_6 <- Aus_7_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in July 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

aus_ndeaths_7 <- Aus_1_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in January 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

aus_ndeaths_8 <- Aus_1_22 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in Australia in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

#Caledonia

cal_ndeaths_1 <- Cal_10_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Caledonia in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

cal_ndeaths_2 <- Cal_1_22 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Caledonia in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

#New Zealand

zea_ndeaths_1 <- Zea_10_20 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in October 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

zea_ndeaths_2 <- Zea_10_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

zea_ndeaths_3 <- Zea_8_20 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in August 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

zea_ndeaths_4 <- Zea_8_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in August 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

zea_ndeaths_5 <- Zea_7_20 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in July 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

zea_ndeaths_6 <- Zea_7_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in July 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

zea_ndeaths_7 <- Zea_1_21 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in January 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

zea_ndeaths_8 <- Zea_1_22 %>%
  ggplot(aes(date, new_deaths)) +
  geom_line(color = "red") + 
  theme(
    axis.title.y = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New Deaths in New Zealand in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date",
    y = "New Deaths"
  )

#B�i vi.3
#Australia

aus_cad_1 <- Aus_10_20 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in October 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

aus_cad_2 <- Aus_10_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

aus_cad_3 <- Aus_8_20 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in August 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

aus_cad_4 <- Aus_8_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in August 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

aus_cad_5 <- Aus_7_20 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in July 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

aus_cad_6 <- Aus_7_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in July 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

aus_cad_7 <- Aus_1_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in January 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

aus_cad_8 <- Aus_1_22 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in Australia in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

#New Caledonia

cal_cad_1 <- Cal_10_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Caledonia in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

cal_cad_2 <- Cal_1_22 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Caledonia in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

#New_Zealand

zea_cad_1 <- Zea_10_20 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in October 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

zea_cad_2 <- Zea_10_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in October 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

zea_cad_3 <- Zea_8_20 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in August 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

zea_cad_4 <- Zea_8_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in August 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

zea_cad_5 <- Zea_7_20 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in July 2020",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

zea_cad_6 <- Zea_7_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in July 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

zea_cad_7 <- Zea_1_21 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in January 2021",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

zea_cad_8 <- Zea_1_22 %>% 
  ggplot(aes(date, new_cases)) + 
  geom_line(color = "orange") +
  theme(legend.position = "none") +
  geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
  scale_y_continuous(
    name = "New Cases",
    sec.axis = sec_axis(new_deaths ~./60, 
                        name = "Deaths",
    )
  ) +
  theme(
    axis.title.y = element_text(color = "orange", size = 13),
    axis.title.y.right = element_text(color = "red", size = 13)
  ) +
  labs(
    title = "New cases and deaths in New Zealand in January 2022",
    subtitle = "7-DAY AVERAGE",
    x = "Date"
  )

#b�i vi.4
#Australia

  aus_ncases_9 <- Aus_11_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in Australia in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  aus_ncases_10 <- Aus_12_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in Australia in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )

  aus_ncases_11 <- Aus_11_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in Australia in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  aus_ncases_12 <- Aus_12_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in Australia in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
#New Caledonia
  
  cal_ncases_3 <- Cal_11_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in New Caledonia in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  cal_ncases_4 <- Cal_12_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in New Caledonia in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
#New Zealand
  
  zea_ncases_9 <- Zea_11_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in New Zealand in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  zea_ncases_10 <- Zea_12_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in New Zealand in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  zea_ncases_11 <- Zea_11_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in New Zealand in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  zea_ncases_12 <- Zea_12_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in New Zealand in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )

#B�i vi.5
  aus_ndeaths_9 <- Aus_11_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in Australia in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  aus_ndeaths_10 <- Aus_12_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in Australia in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  aus_ndeaths_11 <- Aus_11_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in Australia in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  aus_ndeaths_12 <- Aus_12_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in Australia in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  #New Caledonia
  
  cal_ndeaths_3 <- Cal_11_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in New Caledonia in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  cal_ndeaths_4 <- Cal_12_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in New Caledonia in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  #New Zealand
  
  zea_ndeaths_9 <- Zea_11_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in New Zealand in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  zea_ndeaths_10 <- Zea_12_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in New Zealand in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  zea_ndeaths_11 <- Zea_11_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in New Zealand in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  zea_ndeaths_12 <- Zea_12_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in New Zealand in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
#b�i vi.6
#Australia
  aus_cad_9 <- Aus_11_20 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in Australia in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
  aus_cad_10 <- Aus_12_20 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in Australia in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
  aus_cad_11 <- Aus_11_21 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in Australia in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
  aus_cad_12 <- Aus_12_21 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in Australia in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
#New Caledonia
  
  cal_cad_3 <- Cal_11_21 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in New Caledonia in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
  cal_cad_4 <- Cal_12_21 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in New Caledonia in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )

#New Zealand

  zea_cad_9 <- Zea_11_20 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in New Zealand in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
  zea_cad_10 <- Zea_12_20 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in New Zealand in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
  zea_cad_11 <- Zea_11_21 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in New Zealand in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )
  
  zea_cad_12 <- Zea_12_21 %>% 
    ggplot(aes(date, new_cases)) + 
    geom_line(color = "orange") +
    theme(legend.position = "none") +
    geom_line(aes(x = date, y = new_deaths * 60), color = "red") + 
    scale_y_continuous(
      name = "New Cases",
      sec.axis = sec_axis(new_deaths ~./60, 
                          name = "Deaths",
      )
    ) +
    theme(
      axis.title.y = element_text(color = "orange", size = 13),
      axis.title.y.right = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New cases and deaths in New Zealand in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date"
    )

  #B�i vi.7
  #Australia
  sumtmp <- Aus_1_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_1_21$date,
    stringsAsFactors = FALSE
  )
  aus_cases_1 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in January 2021",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Aus_1_22$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_1_22$date,
    stringsAsFactors = FALSE
  )
  aus_cases_2 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in January 2022",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Aus_7_20$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_7_20$date,
    stringsAsFactors = FALSE
  )
  aus_cases_3 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in July 2020",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Aus_7_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_7_21$date,
    stringsAsFactors = FALSE
  )
  aus_cases_4 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in July 2021",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Aus_8_20$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_8_20$date,
    stringsAsFactors = FALSE
  )
  aus_cases_5 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in August 2020",
      x = "Date",
      y = "Cases"
    )
  
  
  sumtmp <- Aus_8_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_8_21$date,
    stringsAsFactors = FALSE
  )
  aus_cases_6 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in August 2021",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Aus_10_20$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_10_20$date,
    stringsAsFactors = FALSE
  )
  aus_cases_7 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in October 2020",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Aus_10_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Aus_10_21$date,
    stringsAsFactors = FALSE
  )
  aus_cases_8 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in Australia in October 2021",
      x = "Date",
      y = "Cases"
    )
  #New Caledonia
  sumtmp <- Cal_1_22$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Cal_1_22$date,
    stringsAsFactors = FALSE
  )
  cal_cases_1 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Caledonia in January 2022",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Cal_10_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Cal_10_21$date,
    stringsAsFactors = FALSE
  )
  cal_cases_2 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Caledonia in October 2021",
      x = "Date",
      y = "Cases"
    )
  #New Zealand
  sumtmp <- Zea_1_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_1_21$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_1 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in January 2021",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Zea_1_22$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_1_22$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_2 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in January 2022",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Zea_7_20$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_7_20$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_3 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in July 2020",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Zea_7_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_7_21$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_4 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in July 2021",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Zea_8_20$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_8_20$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_5 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in August 2020",
      x = "Date",
      y = "Cases"
    )
  
  
  sumtmp <- Zea_8_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_8_21$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_6 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in August 2021",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Zea_10_20$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_10_20$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_7 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in October 2020",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- Zea_10_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- Zea_10_21$date,
    stringsAsFactors = FALSE
  )
  Zea_cases_8 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in New Zealand in October 2021",
      x = "Date",
      y = "Cases"
    )
  #B�i vi.8
  #Australia
  sumtmp <- Aus_1_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_1_21$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_1 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in January 2021",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Aus_1_22$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_1_22$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_2 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in January 2022",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Aus_7_20$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_7_20$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_3 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in July 2020",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Aus_7_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_7_21$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_4 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in July 2021",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Aus_8_20$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_8_20$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_5 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in August 2020",
      x = "Date",
      y = "Deaths"
    )
  
  
  sumtmp <- Aus_8_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_8_21$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_6 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in August 2021",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Aus_10_20$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_10_20$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_7 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in October 2020",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Aus_10_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Aus_10_21$date,
    stringsAsFactors = FALSE
  )
  aus_deaths_8 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in Australia in October 2021",
      x = "Date",
      y = "Deaths"
    )
  #New Caledonia
  sumtmp <- Cal_1_22$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Cal_1_22$date,
    stringsAsFactors = FALSE
  )
  cal_deaths_1 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Caledonia in January 2022",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Cal_10_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Cal_10_21$date,
    stringsAsFactors = FALSE
  )
  cal_deaths_2 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Caledonia in October 2021",
      x = "Date",
      y = "Deaths"
    )
  #New Zealand
  sumtmp <- Zea_1_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_1_21$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_1 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in January 2021",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Zea_1_22$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_1_22$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_2 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in January 2022",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Zea_7_20$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_7_20$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_3 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in July 2020",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Zea_7_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_7_21$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_4 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in July 2021",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Zea_8_20$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_8_20$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_5 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in August 2020",
      x = "Date",
      y = "Deaths"
    )
  
  
  sumtmp <- Zea_8_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_8_21$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_6 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in August 2021",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Zea_10_20$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_10_20$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_7 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in October 2020",
      x = "Date",
      y = "Deaths"
    )
  
  sumtmp <- Zea_10_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- Zea_10_21$date,
    stringsAsFactors = FALSE
  )
  Zea_deaths_8 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in New Zealand in October 2021",
      x = "Date",
      y = "Deaths"
    )
#B�i vii
#B�i vii.1
  wrl_ncases_1 <- wrl_10_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in October 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_2 <- wrl_10_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in October 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_3 <- wrl_8_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in August 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_4 <- wrl_8_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in August 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_5 <- wrl_7_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in July 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_6 <- wrl_7_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in July 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_7 <- wrl_1_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in January 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_8 <- wrl_1_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in January 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )
  
  wrl_ncases_9 <- wrl_1_22 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in January 2022",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New cases"
    )	
#B�i vii.2
  wrl_ndeaths_1 <- wrl_10_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in October 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_2 <- wrl_10_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in October 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_3 <- wrl_8_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in August 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_4 <- wrl_8_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in August 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_5 <- wrl_7_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in July 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_6 <- wrl_7_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in July 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_7 <- wrl_1_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in January 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_8 <- wrl_1_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in January 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_9 <- wrl_1_22 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in January 2022",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )	
#B�i vii.3
  wrl_ncases_10 <- wrl_11_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Cases"
    )
  
  wrl_ncases_11 <- wrl_12_20 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Cases"
    )
  
  wrl_ncases_12 <- wrl_11_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Cases"
    )
  
  wrl_ncases_13 <- wrl_12_21 %>%
    ggplot(aes(date, new_cases)) +
    geom_line(color = "orange") + 
    theme(
      axis.title.y = element_text(color = "orange", size = 13)
    ) +
    labs(
      title = "New Cases in World in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Cases"
    )
#B�i vii.4
  wrl_ndeaths_10 <- wrl_11_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in November 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_11 <- wrl_12_20 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in December 2020",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_12 <- wrl_11_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in November 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
  
  wrl_ndeaths_13 <- wrl_12_21 %>%
    ggplot(aes(date, new_deaths)) +
    geom_line(color = "red") + 
    theme(
      axis.title.y = element_text(color = "red", size = 13)
    ) +
    labs(
      title = "New Deaths in World in December 2021",
      subtitle = "7-DAY AVERAGE",
      x = "Date",
      y = "New Deaths"
    )
#B�i vii.5
  sumtmp <- wrl_11_20$new_cases
  for(i in 2:30){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- wrl_11_20$date,
    stringsAsFactors = FALSE
  )
  wrl_cases_1 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in World in November 2020",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- wrl_12_20$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- wrl_12_20$date,
    stringsAsFactors = FALSE
  )
  wrl_cases_2 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in World in December 2020",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- wrl_11_21$new_cases
  for(i in 2:30){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- wrl_11_21$date,
    stringsAsFactors = FALSE
  )
  wrl_cases_3 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in World in November 2021",
      x = "Date",
      y = "Cases"
    )
  
  sumtmp <- wrl_12_21$new_cases
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    cases <- sumtmp,
    t <- wrl_12_21$date,
    stringsAsFactors = FALSE
  )
  wrl_cases_4 <- tmp %>%
    ggplot(aes(x = t, y = cases)) +
    geom_col() + 
    labs(
      title = "Cumulative Cases in World in December 2021",
      x = "Date",
      y = "Cases"
    )
#B�i vii.6
  sumtmp <- wrl_11_20$new_deaths
  for(i in 2:30){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- wrl_11_20$date,
    stringsAsFactors = FALSE
  )
  wrl_deaths_1 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in World in November 2020",
      x = "Date",
      y = "deaths"
    )
  
  sumtmp <- wrl_12_20$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- wrl_12_20$date,
    stringsAsFactors = FALSE
  )
  wrl_deaths_2 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in World in December 2020",
      x = "Date",
      y = "deaths"
    )
  
  sumtmp <- wrl_11_21$new_deaths
  for(i in 2:30){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- wrl_11_21$date,
    stringsAsFactors = FALSE
  )
  wrl_deaths_3 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in World in November 2021",
      x = "Date",
      y = "deaths"
    )
  
  sumtmp <- wrl_12_21$new_deaths
  for(i in 2:31){
    sumtmp[i] = sumtmp[i - 1] + sumtmp[i]
  }
  tmp <- data.frame(
    deaths <- sumtmp,
    t <- wrl_12_21$date,
    stringsAsFactors = FALSE
  )
  wrl_deaths_4 <- tmp %>%
    ggplot(aes(x = t, y = deaths)) +
    geom_col() + 
    labs(
      title = "Cumulative Deaths in World in December 2021",
      x = "Date",
      y = "deaths"
    )