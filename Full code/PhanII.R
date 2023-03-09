#Read data
re_data <-read.csv("owid-covid-data.csv")
re_data <- na.omit(re_data)
#Take data
Iso_code <-re_data$iso_code
Continent <- re_data$continent
Location <- re_data$location
Date_infor <- re_data$date
New_cases <- re_data$new_cases
New_deaths <- re_data$new_deaths
#Filter Data
New_cases <- abs(New_cases)
New_deaths <- abs(New_deaths)

#combine data
ex2 <- data.frame(Iso_code, Continent, Location, Date_infor, New_cases, New_deaths)

#Dataframe of AUS, New Caledonia and Zealand
aus <- subset(ex2, ex2$Location=="Australia")
donia <- subset(ex2, ex2$Location=="New Caledonia")
zealand <- subset(ex2, ex2$Location=="New Zealand")

#filter reported data
aus_cases <-aus$New_cases[aus$New_cases>0]
donia_cases <-donia$New_cases[donia$New_cases>0]
zealand_cases <-zealand$New_cases[zealand$New_cases>0]

aus_deaths <-aus$New_deaths[aus$New_deaths>0]
donia_deaths <-donia$New_deaths[donia$New_deaths>0]
zealand_deaths <-zealand$New_deaths[zealand$New_deaths>0]

#Create descriptive statistic of new cases
Countries <- c("Australia","New Caledonia","New Zealand")
Min <-c(min(aus_cases),min(donia_cases),min(zealand_cases))
Q1 <- c(quantile(aus_cases)[2],quantile(donia_cases)[2],quantile(zealand_cases)[2])
Q2 <- c(quantile(aus_cases)[3],quantile(donia_cases)[3],quantile(zealand_cases)[3])
Q3 <- c(quantile(aus_cases)[4],quantile(donia_cases)[4],quantile(zealand_cases)[4])
Max <-c(max(aus_cases),max(donia_cases),max(zealand_cases))
Avg <-c(mean(aus_cases),mean(donia_cases),mean(zealand_cases))
Std <-c(sd(aus_cases),sd(donia_cases),sd(zealand_cases))
q1 <- Q1
q2 <- Q2
q3 <- Q3
Tcmin <-c(q1[1]-IQR(aus_cases),q1[2]-IQR(donia_cases),q1[3]-IQR(zealand_cases))
Tcmax <-c(q3[1]+IQR(aus_cases),q3[2]+IQR(donia_cases),q3[3]+IQR(zealand_cases))
outlier <- c(
                length(aus_cases[which(aus_cases<Tcmin[1] | aus_cases>Tcmax[1])]),
                length(donia_cases[which(donia_cases<Tcmin[2] | donia_cases>Tcmax[2])]),
                length(zealand_cases[which(zealand_cases<Tcmin[3] | zealand_cases>Tcmax[3])])
            )


ctotal <- data.frame(Countries,Min,Q1,Q2,Q3,Max,Avg,Std,outlier)
print("Description of new_cases of every countries")
print(ctotal)
#####################################################################################################
#Create descriptive statistic of new deaths
Countries <- c("Australia","New Caledonia","New Zealand")
Min <-c(min(aus_deaths), min(donia_deaths), min(zealand_deaths))
Q1 <- c(quantile(aus_deaths)[2],quantile(donia_deaths)[2],quantile(zealand_deaths)[2])
Q2 <- c(quantile(aus_deaths)[3],quantile(donia_deaths)[3],quantile(zealand_deaths)[3])
Q3 <- c(quantile(aus_deaths)[4],quantile(donia_deaths)[4],quantile(zealand_deaths)[4])
Max <-c(max(aus_deaths),max(donia_deaths),max(donia_deaths))
Avg <-c(mean(aus_deaths),mean(donia_deaths),mean(donia_deaths))
Std <-c(sd(aus$New_deaths),sd(donia_deaths),sd(zealand_deaths))

Tdmin <-c(Q1[1]-IQR(aus_deaths),Q1[2]-IQR(donia_deaths),Q1[3]-IQR(zealand_deaths))
Tdmax <-c(Q3[1]+IQR(aus_deaths),Q3[2]+IQR(donia_deaths),Q3[3]+IQR(zealand_deaths))
outlier <- c(
  length(aus_deaths[which(aus_deaths<Tdmin[1] | aus_deaths>Tdmax[1])]),
  length(donia_deaths[which(donia_deaths<Tdmin[2] | donia_deaths>Tdmax[2])]),
  length(zealand_deaths[which(zealand_deaths<Tdmin[3] | zealand_deaths>Tdmax[3])])
)

dtotal <- data.frame(Countries,Min,Q1,Q2,Q3,Max,Avg,Std,outlier)
print("Description of new_deaths of every countries")
print(dtotal)
# Draw boxplot of New cases
boxplot(aus_cases, main="Box plot of total new_cases", ylab="New cases range",xlab="Australia") 
boxplot(donia_cases, main="Box plot of total new_cases", ylab="New cases range",xlab="New Caledonia")
boxplot(zealand_cases, main="Box plot of total new_cases", ylab="New cases range",xlab="New Zealand")


