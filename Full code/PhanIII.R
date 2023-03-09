#Read data
re_data <-read.csv("owid-covid-data.csv")
#Take data
Iso_code <-re_data$iso_code
Continent <- re_data$continent
Location <- re_data$location
Date_infor <- re_data$date
New_cases <- re_data$new_cases
New_deaths <- re_data$new_deaths

#combine data
ex3 <- data.frame(Iso_code, Continent, Location, Date_infor, New_cases, New_deaths)

#Dataframe of Australia, New Caledonia and New Zealand
Aus <- subset(ex3, ex3$Location=="Australia")
Donia <- subset(ex3, ex3$Location=="New Caledonia")
Zealand <- subset(ex3, ex3$Location=="New Zealand")
#####################################################
#Description of not report data
Countries <- c("Australia","New Caledonia","New Zealand")
Infections <- c(
                sum(is.na(Aus$New_cases))+length(Aus$New_cases[Aus$New_cases==0]),
                sum(is.na(Donia$New_cases))+length(Donia$New_cases[Donia$New_cases==0]),
                sum(is.na(Zealand$New_cases))+length(Zealand$New_cases[Zealand$New_cases==0])
                )
Deaths     <- c(
                sum(is.na(Aus$New_deaths))+length(Aus$New_deaths[Aus$New_deaths==0]),
                sum(is.na(Donia$New_deaths))+length(Donia$New_deaths[Donia$New_deaths==0]),
                sum(is.na(Zealand$New_deaths))+length(Zealand$New_deaths[Zealand$New_deaths==0])
                )
non_report <- data.frame(Countries,Infections,Deaths)
print(non_report)
######################################################
#Description of min new cases and new deaths

#filter reported data
ex_3 <- na.omit(ex3)
aus <- subset(ex_3, ex_3$Location=="Australia")
donia <- subset(ex_3, ex_3$Location=="New Caledonia")
zealand <- subset(ex_3, ex_3$Location=="New Zealand")

aus_cases <-aus$New_cases[aus$New_cases>0]
donia_cases <-donia$New_cases[donia$New_cases>0]
zealand_cases <-zealand$New_cases[zealand$New_cases>0]

aus_deaths <-aus$New_deaths[aus$New_deaths>0]
donia_deaths <-donia$New_deaths[donia$New_deaths>0]
zealand_deaths <-zealand$New_deaths[zealand$New_deaths>0]

Infections <- c(
                 length(aus_cases[aus_cases==min(aus_cases)]),
                 length(donia_cases[donia_cases==min(donia_cases)]),
                 length(zealand_cases[zealand_cases==min(zealand_cases)])
               )
Deaths <- c(
             length(aus_deaths[aus_deaths==min(aus_deaths)]),
             length(donia_deaths[donia_deaths==min(donia_deaths)]),
             length(zealand_deaths[zealand_deaths==min(zealand_deaths)])
            )
report_min <- data.frame(Countries,Infections,Deaths)
print(report_min)

#Description of max new cases and new deaths
Infections <- c(
             length(aus_cases[aus_cases==max(aus_cases)]),
             length(donia_cases[donia_cases==max(donia_cases)]),
             length(zealand_cases[zealand_cases==max(zealand_cases)])
)
Deaths <- c(
             length(aus_deaths[aus_deaths==max(aus_deaths)]),
             length(donia_deaths[donia_deaths==max(donia_deaths)]),
             length(zealand_deaths[zealand_deaths==max(zealand_deaths)])
           )
report_max <- data.frame(Countries,Infections,Deaths)
print(report_max)
######################################################
#Find Min, Max day with no report
##########################
#Australia-no-New cases
aus_min_no_cases=length(Aus$New_cases)
aus_max_no_cases=0
for(i in 1:length(Aus$New_cases)){
  if(is.na(Aus$New_cases[i]) || Aus$New_cases[i]==0)
    {
        count=0
       while(is.na(Aus$New_cases[i]) || Aus$New_cases[i]==0)
       {
         count= count+1
         i=i+1
         if(i>length(Aus$New_cases)){break}
       }
        if(count<aus_min_no_cases && count>=1){aus_min_no_cases=count}
        if(count>aus_max_no_cases && count>=1){aus_max_no_cases=count}
    } 
  i=i-1
}
if(aus_min_no_cases>aus_max_no_cases){aus_min_no_cases=0}
#Australia-no-New deaths
aus_min_no_deaths=length(Aus$New_deaths)
aus_max_no_deaths=0
for(j in 1:length(Aus$New_deaths)){
  if(is.na(Aus$New_deaths[j]) || Aus$New_deaths[j]==0)
  {
    count=0
    while(is.na(Aus$New_deaths[j])|| Aus$New_deaths[j]==0)
    {
      count= count+1
      j=j+1
      if(j>length(Aus$New_deaths)){break}
    }
    if(count<aus_min_no_deaths && count>=1){aus_min_no_deaths=count}
    if(count>aus_max_no_deaths && count>=1){aus_max_no_deaths=count}
  } 
  j=j-1
}
if(aus_min_no_deaths>aus_max_no_deaths){aus_min_no_deaths=0}
##########################
#New Caledonia-no-New cases
donia_min_no_cases=length(Donia$New_cases)
donia_max_no_cases=0
for(k in 1:length(Donia$New_cases)){
  if(is.na(Donia$New_cases[k]) || Donia$New_cases[k]==0)
  {
    count=0
    while(is.na(Donia$New_cases[k]) || Donia$New_cases[k]==0)
    {
      count= count+1
      k=k+1
      if(k>length(Donia$New_cases)){break}
    }
    if(count<donia_min_no_cases && count>=1){donia_min_no_cases=count}
    if(count>donia_max_no_cases && count>=1){donia_max_no_cases=count}
  } 
  k=k-1
}
if(donia_min_no_cases>aus_max_no_cases){donia_min_no_cases=0}
#New Caledonia-no-New deaths
donia_min_no_deaths=length(Donia$New_deaths)
donia_max_no_deaths=0
for(l in 1:length(Donia$New_deaths)){
  if(is.na(Donia$New_deaths[l]) || Donia$New_deaths[l]==0)
  {
    count=0
    while(is.na(Donia$New_deaths[l]) || Donia$New_deaths[l]==0)
    {
      count= count+1
      l=l+1
      if(l>length(Donia$New_deaths)){break}
    }
    if(count<donia_min_no_deaths && count>=1){donia_min_no_deaths=count}
    if(count>donia_max_no_deaths && count>=1){donia_max_no_deaths=count}
  } 
  l=l-1
}
if(donia_min_no_deaths>donia_max_no_deaths){donia_min_no_deaths=0}
##########################                                        
#New Zealand-no-New cases
zealand_min_no_cases=length(Zealand$New_cases)
zealand_max_no_cases=0
for(m in 1:length(Zealand$New_cases)){
  if(is.na(Zealand$New_cases[m]) || Zealand$New_cases[m]==0)
  {
    count=0
    while(is.na(Zealand$New_cases[m]) || Zealand$New_cases[m]==0)
    {
      count= count+1
      m=m+1
      if(m>length(Zealand$New_cases)){break}
    }
    if(count<zealand_min_no_cases && count>=1){zealand_min_no_cases=count}
    if(count>zealand_max_no_cases && count>=1){zealand_max_no_cases=count}
  } 
  m=m-1
}
if(zealand_min_no_cases>zealand_max_no_cases){zealand_min_no_cases=0}
#New Zealand-no-New deaths
zealand_min_no_deaths=length(Zealand$New_deaths)
zealand_max_no_deaths=0
for(n in 1:length(Zealand$New_deaths)){
  if(is.na(Zealand$New_deaths[n]) || Zealand$New_deaths[n]==0)
  {
    count=0
    while(is.na(Zealand$New_deaths[n]) || Zealand$New_deaths[n]==0)
    {
      count= count+1
      n=n+1
      if(n>length(Zealand$New_deaths)){break}
    }
    if(count<zealand_min_no_deaths && count>=1){zealand_min_no_deaths=count}
    if(count>zealand_max_no_deaths && count>=1){zealand_max_no_deaths=count}
  } 
  n=n-1
}
if(zealand_min_no_deaths>zealand_max_no_deaths){zealand_min_no_deaths=0}
##########################                                       
#Dataframe Min, Max day with no report
min_no_cases <- c(aus_min_no_cases, donia_min_no_cases, zealand_min_no_cases)
max_no_cases <- c(aus_max_no_cases, donia_max_no_cases, zealand_max_no_cases)
min_no_deaths <-c(aus_min_no_deaths, donia_min_no_deaths, zealand_min_no_deaths)
max_no_deaths <- c(aus_max_no_deaths, donia_max_no_deaths, zealand_max_no_deaths)
ex_5_6 <-data.frame(Countries, min_no_cases, max_no_cases, min_no_deaths, max_no_deaths)
print(ex_5_6)
######################################################
#Find Min, Max with no new cases
#Australia 
aus_min_no_new=length(aus$New_cases)
aus_max_no_new=0
for(i in 1:length(aus$New_cases)){
   count=0
   while(aus$New_cases[i]==0){
    count=count+1
    i=i+1
    if(i>length(aus$New_cases)){break}
   }
  if(count<aus_min_no_new && count>=1){aus_min_no_new=count}
  if(count>aus_max_no_new && count>=1){aus_max_no_new=count}
  i=i-1
}
if(aus_min_no_new>aus_max_no_new){aus_min_no_new=0}
#New Caledonia
donia_min_no_new=length(donia$New_cases)
donia_max_no_new=0
for(i in 1:length(donia$New_cases)){
    count=0
    while(donia$New_cases[i]==0){
      count=count+1
      i=i+1
      if(i>length(donia$New_cases)){break}
    }
  
  if(count<donia_min_no_new && count>=1){donia_min_no_new=count}
  if(count>donia_max_no_new && count>=1){donia_max_no_new=count}
  i=i-1
}
if(donia_min_no_new>donia_max_no_new){donia_min_no_new=0}
#New Zealand
zealand_min_no_new=length(zealand$New_cases)
zealand_max_no_new=0
for(i in 1:length(zealand$New_cases)){
  count=0
    while(zealand$New_cases[i]==0){
      count=count+1
      i=i+1
      if(i>length(zealand$New_cases)){break}
    }
  if(count<zealand_min_no_new && count>=1){zealand_min_no_new=count}
  if(count>zealand_max_no_new && count>=1){zealand_max_no_new=count}
  i=i-1
}
if(zealand_min_no_new>zealand_max_no_new){zealand_min_no_new=0}
 
min_no_new <- c(aus_min_no_new, donia_min_no_new, zealand_min_no_new)
max_no_new <- c(aus_max_no_new, donia_max_no_new, zealand_max_no_new)
ex_7_8 <- data.frame(Countries, min_no_new, max_no_new)
print(ex_7_8)
                                          
                                          
                                          
                                          
                                          
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       