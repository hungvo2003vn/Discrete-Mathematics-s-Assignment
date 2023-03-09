
install.packages("ggplot2")
install.packages("dplyr")
library("dplyr")
library("ggplot2")

{
mydata<-owid_covid_data
mydata$date <- as.Date(mydata$date,"%m/%d/%Y")

australia<-subset(mydata,mydata$location=="Australia")
new_caledonia<-subset(mydata,mydata$location=="New Caledonia")
new_zealand<-subset(mydata,mydata$location=="New Zealand")

australia_1_2020<-australia[australia$date>="2020-01-01"& australia$date<="2020-01-31",]
australia_7_2020<-australia[australia$date>="2020-07-01"& australia$date<="2020-07-31",]
australia_8_2020<-australia[australia$date>="2020-08-01"& australia$date<="2020-08-31",]
australia_10_2020<-australia[australia$date>="2020-10-01"& australia$date<="2020-10-31",]

australia_1_2021<-australia[australia$date>="2021-01-01"& australia$date<="2021-01-31",]
australia_7_2021<-australia[australia$date>="2021-07-01"& australia$date<="2021-07-31",]
australia_8_2021<-australia[australia$date>="2021-08-01"& australia$date<="2021-08-31",]
australia_10_2021<-australia[australia$date>="2021-10-01"& australia$date<="2021-10-31",]

australia_1_2022<-australia[australia$date>="2022-01-01"& australia$date<="2022-01-31",]


new_caledonia_1_2020<-new_caledonia[new_caledonia$date>="2020-01-01"& new_caledonia$date<="2020-01-31",]
new_caledonia_7_2020<-new_caledonia[new_caledonia$date>="2020-07-01"& new_caledonia$date<="2020-07-31",]
new_caledonia_8_2020<-new_caledonia[new_caledonia$date>="2020-08-01"& new_caledonia$date<="2020-08-31",]
new_caledonia_10_2020<-new_caledonia[new_caledonia$date>="2020-10-01"& new_caledonia$date<="2020-10-31",]

new_caledonia_1_2021<-new_caledonia[new_caledonia$date>="2021-01-01"& new_caledonia$date<="2021-01-31",]
new_caledonia_7_2021<-new_caledonia[new_caledonia$date>="2021-07-01"& new_caledonia$date<="2021-07-31",]
new_caledonia_8_2021<-new_caledonia[new_caledonia$date>="2021-08-01"& new_caledonia$date<="2021-08-31",]
new_caledonia_10_2021<-new_caledonia[new_caledonia$date>="2021-10-01"& new_caledonia$date<="2021-10-31",]

new_caledonia_1_2022<-new_caledonia[new_caledonia$date>="2022-01-01"& new_caledonia$date<="2022-01-31",]

new_zealand_1_2020<-new_zealand[new_zealand$date>="2020-01-01"& new_zealand$date<="2020-01-31",]
new_zealand_7_2020<-new_zealand[new_zealand$date>="2020-07-01"& new_zealand$date<="2020-07-31",]
new_zealand_8_2020<-new_zealand[new_zealand$date>="2020-08-01"& new_zealand$date<="2020-08-31",]
new_zealand_10_2020<-new_zealand[new_zealand$date>="2020-10-01"& new_zealand$date<="2020-10-31",]

new_zealand_1_2021<-new_zealand[new_zealand$date>="2021-01-01"& new_zealand$date<="2021-01-31",]
new_zealand_7_2021<-new_zealand[new_zealand$date>="2021-07-01"& new_zealand$date<="2021-07-31",]
new_zealand_8_2021<-new_zealand[new_zealand$date>="2021-08-01"& new_zealand$date<="2021-08-31",]
new_zealand_10_2021<-new_zealand[new_zealand$date>="2021-10-01"& new_zealand$date<="2021-10-31",]

new_zealand_1_2022<-new_zealand[new_zealand$date>="2022-01-01"& new_zealand$date<="2022-01-31",]
}#chia thanh du lieu nho

{
  { day<-c(1:31)
  ef<-data.frame(day,australia_7_2020$new_cases,australia_8_2020$new_cases,australia_10_2020$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_7_2020$new_cases,color="red"))+
      geom_line(aes(y=australia_8_2020$new_cases,color="green"))+
      geom_line(aes(y=australia_10_2020$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases in Australia in 2020 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    
    ef<-data.frame(day,australia_1_2021$new_cases,australia_7_2021$new_cases,australia_8_2021$new_cases,australia_10_2021$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2021$new_cases,color="red"))+
      geom_line(aes(y=australia_7_2021$new_cases,color="yellow"))+
      geom_line(aes(y=australia_8_2021$new_cases,color="green"))+
      geom_line(aes(y=australia_10_2021$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases in Australia in 2021 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,australia_1_2022$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2022$new_cases,color="red"))+
      theme_bw()+labs(title="New Cases in Australia in 2022 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
 }#Australia
  
  {ef<-data.frame(day,new_caledonia_7_2020$new_cases,new_caledonia_8_2020$new_cases,new_caledonia_10_2020$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_7_2020$new_cases,color="yellow"))+
      geom_line(aes(y=new_caledonia_8_2020$new_cases,color="green"))+
      geom_line(aes(y=new_caledonia_10_2020$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases in New Caledonia in 2020",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_caledonia_1_2021$new_cases,new_caledonia_7_2021$new_cases,new_caledonia_8_2021$new_cases,new_caledonia_10_2021$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_1_2021$new_cases,color="red"))+
      geom_line(aes(y=new_caledonia_7_2021$new_cases,color="yellow"))+
      geom_line(aes(y=new_caledonia_8_2021$new_cases,color="green"))+
      geom_line(aes(y=new_caledonia_10_2021$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases in New Caledonia in 2021 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_caledonia_1_2022$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_1_2022$new_cases,color="red"))+
      theme_bw()+labs(title="New Cases in New Caledonia in 2022 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Caledonia
  
  {ef<-data.frame(day,new_zealand_7_2020$new_cases,new_zealand_8_2020$new_cases,new_zealand_10_2020$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_7_2020$new_cases,color="red"))+
      geom_line(aes(y=new_zealand_8_2020$new_cases,color="green"))+
      geom_line(aes(y=new_zealand_10_2020$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases in New Zealand in 2020 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2021$new_cases,new_zealand_7_2021$new_cases,new_zealand_8_2021$new_cases,new_zealand_10_2021$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2021$new_cases,color="red"))+
      geom_line(aes(y=new_zealand_7_2021$new_cases,color="yellow"))+
      geom_line(aes(y=new_zealand_8_2021$new_cases,color="green"))+
      geom_line(aes(y=new_zealand_10_2021$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases in New Zealand in 2021 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2022$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2022$new_cases,color="red"))+
      theme_bw()+labs(title="New Cases in New Zealand in 2022 ",x="Day",y="New Cases")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Zealand
}#cau 1 trong V 
{
  
  day<-c(1:31)
  {   ef<-data.frame(day,australia_7_2020$new_deaths,australia_8_2020$new_deaths,australia_10_2020$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_7_2020$new_deaths,color="red"))+
      geom_line(aes(y=australia_8_2020$new_deaths,color="green"))+
      geom_line(aes(y=australia_10_2020$new_deaths,color="blue"))+
      theme_bw()+labs(title="New Deaths in Australia in 2020 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    
    ef<-data.frame(day,australia_1_2021$new_deaths,australia_7_2021$new_deaths,australia_8_2021$new_deaths,australia_10_2021$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2021$new_deaths,color="red"))+
      geom_line(aes(y=australia_7_2021$new_deaths,color="yellow"))+
      geom_line(aes(y=australia_8_2021$new_deaths,color="green"))+
      geom_line(aes(y=australia_10_2021$new_deaths,color="blue"))+
      theme_bw()+labs(title="New Deaths in Australia in 2021 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,australia_1_2022$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2022$new_deaths,color="red"))+
      theme_bw()+labs(title="New Deaths in Australia in 2022 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#Australia
  
  {ef<-data.frame(day,new_caledonia_7_2020$new_deaths,new_caledonia_8_2020$new_deaths,new_caledonia_10_2020$new_deaths)
    print(ef)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_7_2020$new_deaths))+
      geom_line(aes(y=new_caledonia_8_2020$new_deaths))+
      geom_line(aes(y=new_caledonia_10_2020$new_deaths))+
      theme_bw()+labs(subtitle="[NO DATA WAS GIVEN]",title="New Deaths in New Caledonia in 2020 ",x="Day",y="New Deaths")+theme_grey(base_size = 18)+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))
    
    ef<-data.frame(day,new_caledonia_1_2021$new_deaths,new_caledonia_7_2021$new_deaths,new_caledonia_8_2021$new_deaths,new_caledonia_10_2021$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_10_2021$new_deaths,color="blue"))+
      theme_bw()+labs(title="New Deaths in New Caledonia in 2021 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("October"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_caledonia_1_2022$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_1_2022$new_deaths,color="red"))+
      theme_bw()+labs(title="New Deaths in New Caledonia in 2022 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Caledonia
  
  {ef<-data.frame(day,new_zealand_7_2020$new_deaths,new_zealand_8_2020$new_deaths,new_zealand_10_2020$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_7_2020$new_deaths,color="red"))+
      geom_line(aes(y=new_zealand_8_2020$new_deaths,color="green"))+
      geom_line(aes(y=new_zealand_10_2020$new_deaths,color="blue"))+
      theme_bw()+labs(title="New Deaths in New Zealand in 2020 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2021$new_deaths,new_zealand_7_2021$new_deaths,new_zealand_8_2021$new_deaths,new_zealand_10_2021$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2021$new_deaths,color="red"))+
      geom_line(aes(y=new_zealand_7_2021$new_deaths,color="yellow"))+
      geom_line(aes(y=new_zealand_8_2021$new_deaths,color="green"))+
      geom_line(aes(y=new_zealand_10_2021$new_deaths,color="blue"))+
      theme_bw()+labs(title="New Deaths in New Zealand in 2021 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2022$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2022$new_deaths,color="red"))+
      theme_bw()+labs(title="New Deaths in New Zealand in 2022 ",x="Day",y="New Deaths")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Zealand
}#cau 2 trong V
{
  {
  a1<-australia_1_2020$new_cases+australia_1_2020$new_deaths
  a2<-australia_7_2020$new_cases+australia_7_2020$new_deaths
  a3<-australia_8_2020$new_cases+australia_8_2020$new_deaths
  a4<-australia_10_2020$new_cases+australia_10_2020$new_deaths
  
  a5<-australia_1_2021$new_cases+australia_1_2021$new_deaths
  a6<-australia_7_2021$new_cases+australia_7_2021$new_deaths
  a7<-australia_8_2021$new_cases+australia_8_2021$new_deaths
  a8<-australia_10_2021$new_cases+australia_10_2021$new_deaths
  a9<-australia_1_2022$new_cases+australia_1_2022$new_deaths
  aus_1_2020<-c(rep(c(0),times=25),australia_1_2020$new_cases)
 
  b2<-new_caledonia_7_2020$new_cases+new_caledonia_7_2020$new_deaths
  b3<-new_caledonia_8_2020$new_cases+new_caledonia_8_2020$new_deaths
  b4<-new_caledonia_10_2020$new_cases+new_caledonia_10_2020$new_deaths
  
  b5<-new_caledonia_1_2021$new_cases+new_caledonia_1_2021$new_deaths
  b6<-new_caledonia_7_2021$new_cases+new_caledonia_7_2021$new_deaths
  b7<-new_caledonia_8_2021$new_cases+new_caledonia_8_2021$new_deaths
  b8<-new_caledonia_10_2021$new_cases+new_caledonia_10_2021$new_deaths
  b9<-new_caledonia_1_2022$new_cases+new_caledonia_1_2022$new_deaths
  
  
  c2<-new_zealand_7_2020$new_cases+new_zealand_7_2020$new_deaths
  c3<-new_zealand_8_2020$new_cases+new_zealand_8_2020$new_deaths
  c4<-new_zealand_10_2020$new_cases+new_zealand_10_2020$new_deaths
  
  c5<-new_zealand_1_2021$new_cases+new_zealand_1_2021$new_deaths
  c6<-new_zealand_7_2021$new_cases+new_zealand_7_2021$new_deaths
  c7<-new_zealand_8_2021$new_cases+new_zealand_8_2021$new_deaths
  c8<-new_zealand_10_2021$new_cases+new_zealand_10_2021$new_deaths
  c9<-new_zealand_1_2022$new_cases+new_zealand_1_2022$new_deaths
  } #a,b,c
  
  {
  australia_1_2020 <- mutate(australia_1_2020,NC_ND=australia_1_2020$new_cases)
  australia_7_2020 <- mutate(australia_7_2020,NC_ND=a2)
  australia_8_2020 <- mutate(australia_8_2020,NC_ND=a3)
  australia_10_2020 <- mutate(australia_10_2020,NC_ND=a4)
  
  australia_1_2021 <- mutate(australia_1_2021,NC_ND=a5)
  australia_7_2021 <- mutate(australia_7_2021,NC_ND=a6)
  australia_8_2021 <- mutate(australia_8_2021,NC_ND=a7)
  australia_10_2021 <- mutate(australia_10_2021,NC_ND=a8)
  australia_1_2022 <- mutate(australia_1_2022,NC_ND=a9)
  
  new_caledonia_7_2020<-mutate(new_caledonia_7_2020,NC_ND=b2)
  new_caledonia_8_2020<-mutate(new_caledonia_7_2020,NC_ND=b3)
  new_caledonia_10_2020<-mutate(new_caledonia_7_2020,NC_ND=b4)
  
  new_caledonia_1_2021<-mutate(new_caledonia_1_2021,NC_ND=b5)
  new_caledonia_7_2021<-mutate(new_caledonia_7_2021,NC_ND=b6)
  new_caledonia_8_2021<-mutate(new_caledonia_8_2021,NC_ND=b7)
  new_caledonia_10_2021<-mutate(new_caledonia_10_2021,NC_ND=b8)
  new_caledonia_1_2022<-mutate(new_caledonia_1_2022,NC_ND=b9)
  
  new_zealand_7_2020<-mutate(new_zealand_7_2020,NC_ND=c2)
  new_zealand_8_2020<-mutate(new_zealand_7_2020,NC_ND=c3)
  new_zealand_10_2020<-mutate(new_zealand_7_2020,NC_ND=c4)
  
  new_zealand_1_2021<-mutate(new_zealand_1_2021,NC_ND=c5)
  new_zealand_7_2021<-mutate(new_zealand_7_2021,NC_ND=c6)
  new_zealand_8_2021<-mutate(new_zealand_8_2021,NC_ND=c7)
  new_zealand_10_2021<-mutate(new_zealand_10_2021,NC_ND=c8)
  new_zealand_1_2022<-mutate(new_zealand_1_2022,NC_ND=c9)
  
  } #mutate NC_ND
  
  {
  day<-c(1:31)
  ef<-data.frame(day, aus_1_2020,australia_7_2020$NC_ND,australia_8_2020$NC_ND,australia_10_2020$NC_ND)
  print(ef)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=aus_1_2020,color="blue"))+
    geom_line(aes(y=australia_7_2020$NC_ND,color="green"))+
    geom_line(aes(y=australia_8_2020$NC_ND,color="purple"))+
    geom_line(aes(y=australia_10_2020$NC_ND,color="red"))+
    theme_bw()+labs(title="New Deaths and New Cases in Australia in 2020 ",x="Day",y="New Deaths and New Cases")+
    scale_color_discrete(name="Month",label=c("January","July","August","October"))+theme_grey(base_size = 18)
  
  ef<-data.frame(day,australia_1_2021$NC_ND,australia_7_2021$NC_ND,australia_8_2021$NC_ND,australia_10_2021$NC_ND)
  print(ef)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=australia_1_2021$NC_ND,color="blue"))+
    geom_line(aes(y=australia_7_2021$NC_ND,color="green"))+
    geom_line(aes(y=australia_8_2021$NC_ND,color="purple"))+
    geom_line(aes(y=australia_10_2021$NC_ND,color="red"))+
    theme_bw()+labs(title="New Deaths and New Cases in Australia in 2021 ",x="Day",y="New Deaths and New Cases")+
    scale_color_discrete(name="Month",label=c("January","July","August","October"))+theme_grey(base_size = 18)
  
  ef<-data.frame(day,australia_1_2022$NC_ND)
  print(ef)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=australia_1_2022$NC_ND,color="blue"))+
    theme_bw()+labs(title="New Deaths and New Cases in Australia in 2022 ",x="Day",y="New Deaths and New Cases")+
    scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  } #Australia
  
  {
  day<-c(1:31)
  ef<-data.frame(day,new_caledonia_7_2020$NC_ND,new_caledonia_8_2020$NC_ND,new_caledonia_10_2020$NC_ND)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=new_caledonia_7_2020$NC_ND))+
    geom_line(aes(y=new_caledonia_8_2020$NC_ND))+
    geom_line(aes(y=new_caledonia_10_2020$NC_ND))+
    theme_bw()+labs(subtitle="[NO DATA WAS GIVEN]",title="New Deaths and New Cases in New Caledonia in 2020",x="Day",y="New Deaths and New Cases")+
    theme_grey(base_size = 18)
   
  
  ef<-data.frame(day,new_caledonia_10_2021$NC_ND)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=new_caledonia_10_2021$NC_ND,color="red"))+
    theme_bw()+labs(title="New Deaths and New Cases in New Caledonia in 2021 ",x="Day",y="New Deaths and New Cases")+
    scale_color_discrete(name="Month",label=c("October"))+theme_grey(base_size = 18)
  
  ef<-data.frame(day,new_caledonia_1_2022$NC_ND)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=new_caledonia_1_2022$NC_ND,color="blue"))+
    theme_bw()+labs(title="New Deaths and New Cases in New Caledonia in 2022 ",x="Day",y="New Deaths and New Cases")+
    scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  } #New Caledonia
  
  {
    day<-c(1:31)
    ef<-data.frame(day,new_zealand_7_2020$NC_ND,new_zealand_8_2020$NC_ND,new_zealand_10_2020$NC_ND)
    print(ef)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_7_2020$NC_ND,color="green"))+
      geom_line(aes(y=new_zealand_8_2020$NC_ND,color="purple"))+
      geom_line(aes(y=new_zealand_10_2020$NC_ND,color="red"))+
      theme_bw()+labs(title="New Deaths and New Cases in New Zealand in 2020 (NO DATA WAS GIVEN) ",x="Day",y="New Deaths and New Cases")+
      scale_color_discrete(name="Month",label=c("July","August","October"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2021$NC_ND,new_zealand_7_2021$NC_ND,new_zealand_8_2021$NC_ND,new_zealand_10_2021$NC_ND)
    print(ef)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2021$NC_ND,color="blue"))+
      geom_line(aes(y=new_zealand_7_2021$NC_ND,color="green"))+
      geom_line(aes(y=new_zealand_8_2021$NC_ND,color="purple"))+
      geom_line(aes(y=new_zealand_10_2021$NC_ND,color="red"))+
      theme_bw()+labs(title="New Deaths and New Cases in New Zealand in 2021 ",x="Day",y="New Deaths and New Cases")+
      scale_color_discrete(name="Month",label=c("January","July","August","October"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2022$NC_ND)
    print(ef)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_1_2022$NC_ND,color="blue"))+
      theme_bw()+labs(title="New Deaths and New Cases in New Zealand in 2022 ",x="Day",y="New Deaths and New Cases")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  } #New Zealand
}#cau 3 trong V
{
  australia_11_2020<-australia[australia$date>="2020-11-01"& australia$date<="2020-11-30",]
  australia_12_2020<-australia[australia$date>="2020-12-01"& australia$date<="2020-12-31",]
  
  australia_11_2021<-australia[australia$date>="2021-11-01"& australia$date<="2021-11-30",]
  australia_12_2021<-australia[australia$date>="2021-12-01"& australia$date<="2021-12-31",]
  
  new_caledonia_11_2020<-new_caledonia[new_caledonia$date>="2020-11-01"& new_caledonia$date<="2020-11-30",]
  new_caledonia_12_2020<-new_caledonia[new_caledonia$date>="2020-12-01"& new_caledonia$date<="2020-12-31",]
  
  new_caledonia_11_2021<-new_caledonia[new_caledonia$date>="2021-11-01"& new_caledonia$date<="2021-11-30",]
  new_caledonia_12_2021<-new_caledonia[new_caledonia$date>="2021-12-01"& new_caledonia$date<="2021-12-31",]
  
  new_zealand_11_2020<-new_zealand[new_zealand$date>="2020-11-01"& new_zealand$date<="2020-11-30",]
  new_zealand_12_2020<-new_zealand[new_zealand$date>="2020-12-01"& new_zealand$date<="2020-12-31",]
  
  new_zealand_11_2021<-new_zealand[new_zealand$date>="2021-11-01"& new_zealand$date<="2021-11-30",]
  new_zealand_12_2021<-new_zealand[new_zealand$date>="2021-12-01"& new_zealand$date<="2021-12-31",]
  
  {day<-c(1:30)
  ef<-data.frame(day,australia_11_2020$new_cases,new_caledonia_11_2020$new_cases,new_zealand_11_2020$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_11_2020$new_cases,color="red"))+
      geom_line(aes(y=new_caledonia_11_2020$new_cases,color="green"))+
      geom_line(aes(y=new_zealand_11_2020$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases on November 2020 in the three countries",x="Day",y="New Cases")+
      scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
  
  day<-c(1:31)
    ef<-data.frame(day,australia_12_2020$new_cases,new_caledonia_12_2020$new_cases,new_zealand_12_2020$new_cases)
      ggplot(ef,aes(x=day))+
        geom_line(aes(y=australia_12_2020$new_cases,color="red"))+
        geom_line(aes(y=new_caledonia_12_2020$new_cases,color="green"))+
        geom_line(aes(y=new_zealand_12_2020$new_cases,color="blue"))+
        theme_bw()+labs(title="New Cases on December 2020 in the three countries",x="Day",y="New Cases")+
        scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
  
} #2020
  { day<-c(1:30)
  ef<-data.frame(day,australia_11_2021$new_cases,new_caledonia_11_2021$new_cases,new_zealand_11_2021$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_11_2021$new_cases,color="red"))+
      geom_line(aes(y=new_caledonia_11_2021$new_cases,color="green"))+
      geom_line(aes(y=new_zealand_11_2021$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases on November 2021 in the three countries",x="Day",y="New Cases")+
      scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
    
    day<-c(1:31)
    ef<-data.frame(day,australia_12_2021$new_cases,new_caledonia_12_2021$new_cases,new_zealand_12_2021$new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_12_2021$new_cases,color="red"))+
      geom_line(aes(y=new_caledonia_12_2021$new_cases,color="green"))+
      geom_line(aes(y=new_zealand_12_2021$new_cases,color="blue"))+
      theme_bw()+labs(title="New Cases on December 2021 in the three countries",x="Day",y="New Cases")+
      scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
 } #2021
   
  
}#cau 4 trong V
{
  {day<-c(1:30)
  ef<-data.frame(day,australia_11_2020$new_deaths,new_caledonia_11_2020$new_deaths,new_zealand_11_2020$new_deaths)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=australia_11_2020$new_deaths,color="red"))+
    geom_line(aes(y=new_zealand_11_2020$new_deaths,color="blue"))+
    theme_bw()+labs(title="New Deaths on November 2020 in the three countries",x="Day",y="New Deaths")+
    scale_color_discrete(name="Country",label=c("New Zealand","Australia"))+theme_grey(base_size = 18)
  
  day<-c(1:31)
  ef<-data.frame(day,australia_12_2020$new_deaths,new_caledonia_12_2020$new_deaths,new_zealand_12_2020$new_deaths)
  ggplot(ef,aes(x=day))+
    geom_line(aes(y=australia_12_2020$new_deaths,color="red"))+
    geom_line(aes(y=new_zealand_12_2020$new_deaths,color="blue"))+
    theme_bw()+labs(title="New Deaths on December 2020 in the three countries",x="Day",y="New Deaths")+
    scale_color_discrete(name="Country",label=c("New Zealand","Australia"))+theme_grey(base_size = 18)
  
  } #2020
  { day<-c(1:30)
    ef<-data.frame(day,australia_11_2021$new_deaths,new_caledonia_11_2021$new_deaths,new_zealand_11_2021$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_11_2021$new_deaths,color="red"))+
      geom_line(aes(y=new_caledonia_11_2021$new_deaths,color="green"))+
      geom_line(aes(y=new_zealand_11_2021$new_deaths,color="blue"))+
      theme_bw()+labs(title="New Deaths on November 2021 in the three countries",x="Day",y="New Deaths")+
      scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
    
    day<-c(1:31)
    ef<-data.frame(day,australia_12_2021$new_deaths,new_caledonia_12_2021$new_deaths,new_zealand_12_2021$new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_12_2021$new_deaths,color="red"))+
      geom_line(aes(y=new_caledonia_12_2021$new_deaths,color="green"))+
      geom_line(aes(y=new_zealand_12_2021$new_deaths,color="blue"))+
      theme_bw()+labs(title="New Deaths on December 2021 in the three countries",x="Day",y="New Deaths")+
      scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
  } #2021
}#cau 5 trong V
{ 
 { a1<-australia_11_2020$new_cases+australia_11_2020$new_deaths
  a2<-australia_12_2020$new_cases+australia_12_2020$new_deaths
  a3<-australia_11_2021$new_cases+australia_11_2021$new_deaths
  a4<-australia_12_2021$new_cases+australia_12_2021$new_deaths
  
  b1<-new_caledonia_11_2020$new_cases
  b2<-new_caledonia_12_2020$new_cases
  b3<-new_caledonia_11_2021$new_cases+new_caledonia_11_2021$new_deaths
  b4<-new_caledonia_12_2021$new_cases+new_caledonia_12_2021$new_deaths
  
  c1<-new_zealand_11_2020$new_cases+new_zealand_11_2020$new_deaths
  c2<-new_zealand_12_2020$new_cases+new_zealand_12_2020$new_deaths
  c3<-new_zealand_11_2021$new_cases+new_zealand_11_2021$new_deaths
  c4<-new_zealand_12_2021$new_cases+new_zealand_12_2021$new_deaths
 }#abc
 {
    australia_11_2020 <- mutate(australia_11_2020,NC_ND=a1)
    australia_12_2020 <- mutate(australia_12_2020,NC_ND=a2)
    australia_11_2021 <- mutate(australia_11_2021,NC_ND=a3)
    australia_12_2021 <- mutate(australia_12_2021,NC_ND=a4)
    
    new_caledonia_11_2020 <- mutate(new_caledonia_11_2020,NC_ND=b1)
    new_caledonia_12_2020 <- mutate(new_caledonia_12_2020,NC_ND=b2)
    new_caledonia_11_2021 <- mutate(new_caledonia_11_2021,NC_ND=b3)
    new_caledonia_12_2021 <- mutate(new_caledonia_12_2021,NC_ND=b4)
    
    new_zealand_11_2020 <- mutate(new_zealand_11_2020,NC_ND=c1)
    new_zealand_12_2020 <- mutate(new_zealand_12_2020,NC_ND=c2)
    new_zealand_11_2021 <- mutate(new_zealand_11_2021,NC_ND=c3)
    new_zealand_12_2021 <- mutate(new_zealand_12_2021,NC_ND=c4)
  }#mutate
 {day<-c(1:30)
    ef<-data.frame(day,australia_11_2020$NC_ND,new_caledonia_11_2020$NC_ND,new_zealand_11_2020$NC_ND)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_11_2020$NC_ND,color="red"))+
      geom_line(aes(y=new_zealand_11_2020$NC_ND,color="blue"))+
      theme_bw()+labs(title="New Cases and New Deaths on November 2020 ",x="Day",y="New Cases and New Deaths")+
      scale_color_discrete(name="Country",label=c("New Zealand","Australia"))+theme_grey(base_size = 18)
    
    day<-c(1:31)
    ef<-data.frame(day,australia_12_2020$NC_ND,new_caledonia_12_2020$NC_ND,new_zealand_12_2020$NC_ND)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_12_2020$NC_ND,color="red"))+
      geom_line(aes(y=new_zealand_12_2020$NC_ND,color="blue"))+
      theme_bw()+labs(title="New Cases and New Deaths on December 2020 ",x="Day",y="New Cases and New Deaths")+
      scale_color_discrete(name="Country",label=c("New Zealand","Australia"))+theme_grey(base_size = 18)
    
    } #2020
 { day<-c(1:30)
      ef<-data.frame(day,australia_11_2021$NC_ND,new_caledonia_11_2021$NC_ND,new_zealand_11_2021$NC_ND)
      ggplot(ef,aes(x=day))+
        geom_line(aes(y=australia_11_2021$NC_ND,color="red"))+
        geom_line(aes(y=new_caledonia_11_2021$NC_ND,color="green"))+
        geom_line(aes(y=new_zealand_11_2021$NC_ND,color="blue"))+
        theme_bw()+labs(title="New Cases and New Deaths on November 2021",x="Day",y="New Cases and New Deaths")+
        scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
      
      day<-c(1:31)
      ef<-data.frame(day,australia_12_2021$NC_ND,new_caledonia_12_2021$NC_ND,new_zealand_12_2021$NC_ND)
      ggplot(ef,aes(x=day))+
        geom_line(aes(y=australia_12_2021$NC_ND,color="red"))+
        geom_line(aes(y=new_caledonia_12_2021$NC_ND,color="green"))+
        geom_line(aes(y=new_zealand_12_2021$NC_ND,color="blue"))+
        theme_bw()+labs(title="New Cases and New Deaths on December 2021",x="Day",y="New Cases and New Deaths")+
        scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+theme_grey(base_size = 18)
    } #2021
  
}#cau 6 trong V
{ 
  
  { australia_7_2020<-mutate(australia_7_2020,tl_new_cases=australia_7_2020$new_cases)
  australia_8_2020<-mutate(australia_8_2020,tl_new_cases=australia_8_2020$new_cases)
  australia_10_2020<-mutate(australia_10_2020,tl_new_cases=australia_10_2020$new_cases)
  
  australia_1_2021<-mutate(australia_1_2021,tl_new_cases=australia_1_2021$new_cases)
  australia_7_2021<-mutate(australia_7_2021,tl_new_cases=australia_7_2021$new_cases)
  australia_8_2021<-mutate(australia_8_2021,tl_new_cases=australia_8_2021$new_cases)
  australia_10_2021<-mutate(australia_10_2021,tl_new_cases=australia_10_2021$new_cases)
  
  australia_1_2022<-mutate(australia_1_2022,tl_new_cases=australia_1_2022$new_cases)
  
  new_caledonia_7_2020<-mutate(new_caledonia_7_2020,tl_new_cases=new_caledonia_7_2020$new_cases)
  new_caledonia_8_2020<-mutate(new_caledonia_8_2020,tl_new_cases=new_caledonia_8_2020$new_cases)
  new_caledonia_10_2020<-mutate(new_caledonia_10_2020,tl_new_cases=new_caledonia_10_2020$new_cases)
  
  new_caledonia_1_2021<-mutate(new_caledonia_1_2021,tl_new_cases=new_caledonia_1_2021$new_cases)
  new_caledonia_7_2021<-mutate(new_caledonia_7_2021,tl_new_cases=new_caledonia_7_2021$new_cases)
  new_caledonia_8_2021<-mutate(new_caledonia_8_2021,tl_new_cases=new_caledonia_8_2021$new_cases)
  new_caledonia_10_2021<-mutate(new_caledonia_10_2021,tl_new_cases=new_caledonia_10_2021$new_cases)
  
  new_caledonia_1_2022<-mutate(new_caledonia_1_2022,tl_new_cases=new_caledonia_1_2022$new_cases)
  
  new_zealand_7_2020<-mutate(new_zealand_7_2020,tl_new_cases=new_zealand_7_2020$new_cases)
  new_zealand_8_2020<-mutate(new_zealand_8_2020,tl_new_cases=new_zealand_8_2020$new_cases)
  new_zealand_10_2020<-mutate(new_zealand_10_2020,tl_new_cases=new_zealand_10_2020$new_cases)
  
  new_zealand_1_2021<-mutate(new_zealand_1_2021,tl_new_cases=new_zealand_1_2021$new_cases)
  new_zealand_7_2021<-mutate(new_zealand_7_2021,tl_new_cases=new_zealand_7_2021$new_cases)
  new_zealand_8_2021<-mutate(new_zealand_8_2021,tl_new_cases=new_zealand_8_2021$new_cases)
  new_zealand_10_2021<-mutate(new_zealand_10_2021,tl_new_cases=new_zealand_10_2021$new_cases)
  
  new_zealand_1_2022<-mutate(new_zealand_1_2022,tl_new_cases=new_zealand_1_2022$new_cases)
  
  
  for(i in 2:31)
  {
    australia_7_2020$tl_new_cases[i]=australia_7_2020$tl_new_cases[i-1]+australia_7_2020$new_cases[i]
    australia_8_2020$tl_new_cases[i]=australia_8_2020$tl_new_cases[i-1]+australia_8_2020$new_cases[i]
    australia_10_2020$tl_new_cases[i]=australia_10_2020$tl_new_cases[i-1]+australia_10_2020$new_cases[i]
    
    australia_1_2021$tl_new_cases[i]=australia_1_2021$tl_new_cases[i-1]+australia_1_2021$new_cases[i]
    australia_7_2021$tl_new_cases[i]=australia_7_2021$tl_new_cases[i-1]+australia_7_2021$new_cases[i]
    australia_8_2021$tl_new_cases[i]=australia_8_2021$tl_new_cases[i-1]+australia_8_2021$new_cases[i]
    australia_10_2021$tl_new_cases[i]=australia_10_2021$tl_new_cases[i-1]+australia_10_2021$new_cases[i]
    
    australia_1_2022$tl_new_cases[i]=australia_1_2022$tl_new_cases[i-1]+australia_1_2022$new_cases[i]
    
    new_caledonia_7_2020$tl_new_cases[i]=new_caledonia_7_2020$tl_new_cases[i-1]+new_caledonia_7_2020$new_cases[i]
    new_caledonia_8_2020$tl_new_cases[i]=new_caledonia_8_2020$tl_new_cases[i-1]+new_caledonia_8_2020$new_cases[i]
    new_caledonia_10_2020$tl_new_cases[i]=new_caledonia_10_2020$tl_new_cases[i-1]+new_caledonia_10_2020$new_cases[i]
    
    new_caledonia_1_2021$tl_new_cases[i]=new_caledonia_1_2021$tl_new_cases[i-1]+new_caledonia_1_2021$new_cases[i]
    new_caledonia_7_2021$tl_new_cases[i]=new_caledonia_7_2021$tl_new_cases[i-1]+new_caledonia_7_2021$new_cases[i]
    new_caledonia_8_2021$tl_new_cases[i]=new_caledonia_8_2021$tl_new_cases[i-1]+new_caledonia_8_2021$new_cases[i]
    new_caledonia_10_2021$tl_new_cases[i]=new_caledonia_10_2021$tl_new_cases[i-1]+new_caledonia_10_2021$new_cases[i]
    
    new_caledonia_1_2022$tl_new_cases[i]=new_caledonia_1_2022$tl_new_cases[i-1]+new_caledonia_1_2022$new_cases[i]
    
    new_zealand_7_2020$tl_new_cases[i]=new_zealand_7_2020$tl_new_cases[i-1]+new_zealand_7_2020$new_cases[i]
    new_zealand_8_2020$tl_new_cases[i]=new_zealand_8_2020$tl_new_cases[i-1]+new_zealand_8_2020$new_cases[i]
    new_zealand_10_2020$tl_new_cases[i]=new_zealand_10_2020$tl_new_cases[i-1]+new_zealand_10_2020$new_cases[i]
    
    new_zealand_1_2021$tl_new_cases[i]=new_zealand_1_2021$tl_new_cases[i-1]+new_zealand_1_2021$new_cases[i]
    new_zealand_7_2021$tl_new_cases[i]=new_zealand_7_2021$tl_new_cases[i-1]+new_zealand_7_2021$new_cases[i]
    new_zealand_8_2021$tl_new_cases[i]=new_zealand_8_2021$tl_new_cases[i-1]+new_zealand_8_2021$new_cases[i]
    new_zealand_10_2021$tl_new_cases[i]=new_zealand_10_2021$tl_new_cases[i-1]+new_zealand_10_2021$new_cases[i]
    
    new_zealand_1_2022$tl_new_cases[i]=new_zealand_1_2022$tl_new_cases[i-1]+new_zealand_1_2022$new_cases[i]
    
  }
 }# mutate
  
  { day<-c(1:31)
    ef<-data.frame(day,australia_7_2020$tl_new_cases,australia_8_2020$tl_new_cases,australia_10_2020$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_7_2020$tl_new_cases,color="red"))+
      geom_line(aes(y=australia_8_2020$tl_new_cases,color="green"))+
      geom_line(aes(y=australia_10_2020$tl_new_cases,color="blue"))+
      theme_bw()+labs(title="Cumulative New Cases in Australia in 2020 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    
    ef<-data.frame(day,australia_1_2021$tl_new_cases,australia_7_2021$tl_new_cases,australia_8_2021$tl_new_cases,australia_10_2021$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2021$tl_new_cases,color="red"))+
      geom_line(aes(y=australia_7_2021$tl_new_cases,color="yellow"))+
      geom_line(aes(y=australia_8_2021$tl_new_cases,color="green"))+
      geom_line(aes(y=australia_10_2021$tl_new_cases,color="blue"))+
      theme_bw()+labs(title="Cumulative New Cases in Australia in 2021 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,australia_1_2022$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2022$tl_new_cases,color="red"))+
      theme_bw()+labs(title="Cumulative New Cases in Australia in 2021 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#Australia
  
  {ef<-data.frame(day,new_caledonia_7_2020$tl_new_cases,new_caledonia_8_2020$tl_new_cases,new_caledonia_10_2020$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_7_2020$tl_new_cases,color="yellow"))+
      geom_line(aes(y=new_caledonia_8_2020$tl_new_cases,color="green"))+
      geom_line(aes(y=new_caledonia_10_2020$tl_new_cases,color="blue"))+
      theme_bw()+labs(title="Cumulative New Cases in New Caledonia in 2020",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_caledonia_1_2021$tl_new_cases,new_caledonia_7_2021$tl_new_cases,new_caledonia_8_2021$tl_new_cases,new_caledonia_10_2021$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_1_2021$tl_new_cases,color="red"))+
      geom_line(aes(y=new_caledonia_7_2021$tl_new_cases,color="yellow"))+
      geom_line(aes(y=new_caledonia_8_2021$tl_new_cases,color="green"))+
      geom_line(aes(y=new_caledonia_10_2021$tl_new_cases,color="blue"))+
      theme_bw()+labs(title="Cumulative New Cases in New Caledonia in 2021 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_caledonia_1_2022$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_1_2022$tl_new_cases,color="red"))+
      theme_bw()+labs(title="Cumulative New Cases in New Caledonia in 2022 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Caledonia
  
  {ef<-data.frame(day,new_zealand_7_2020$tl_new_cases,new_zealand_8_2020$tl_new_cases,new_zealand_10_2020$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_7_2020$tl_new_cases,color="red"))+
      geom_line(aes(y=new_zealand_8_2020$tl_new_cases,color="green"))+
      geom_line(aes(y=new_zealand_10_2020$tl_new_cases,color="blue"))+
      theme_bw()+labs(title="Cumulative New Cases in New Zealand in 2020 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2021$tl_new_cases,new_zealand_7_2021$tl_new_cases,new_zealand_8_2021$tl_new_cases,new_zealand_10_2021$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2021$tl_new_cases,color="red"))+
      geom_line(aes(y=new_zealand_7_2021$tl_new_cases,color="yellow"))+
      geom_line(aes(y=new_zealand_8_2021$tl_new_cases,color="green"))+
      geom_line(aes(y=new_zealand_10_2021$tl_new_cases,color="blue"))+
      theme_bw()+labs(title="Cumulative New Cases in New Zealand in 2021 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2022$tl_new_cases)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2022$tl_new_cases,color="red"))+
      theme_bw()+labs(title="Cumulative New Cases in New Zealand in 2022 ",x="Day",y="Cumulative New Cases")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Zealand
  
  
}#cau 7 trong V
{ 
  
{ australia_7_2020<-mutate(australia_7_2020,tl_new_deaths=australia_7_2020$new_deaths)
  australia_8_2020<-mutate(australia_8_2020,tl_new_deaths=australia_8_2020$new_deaths)
  australia_10_2020<-mutate(australia_10_2020,tl_new_deaths=australia_10_2020$new_deaths)
  
  australia_1_2021<-mutate(australia_1_2021,tl_new_deaths=australia_1_2021$new_deaths)
  australia_7_2021<-mutate(australia_7_2021,tl_new_deaths=australia_7_2021$new_deaths)
  australia_8_2021<-mutate(australia_8_2021,tl_new_deaths=australia_8_2021$new_deaths)
  australia_10_2021<-mutate(australia_10_2021,tl_new_deaths=australia_10_2021$new_deaths)
  
  australia_1_2022<-mutate(australia_1_2022,tl_new_deaths=australia_1_2022$new_deaths)
  
  new_caledonia_7_2020<-mutate(new_caledonia_7_2020,tl_new_deaths=new_caledonia_7_2020$new_deaths)
  new_caledonia_8_2020<-mutate(new_caledonia_8_2020,tl_new_deaths=new_caledonia_8_2020$new_deaths)
  new_caledonia_10_2020<-mutate(new_caledonia_10_2020,tl_new_deaths=new_caledonia_10_2020$new_deaths)
  
  new_caledonia_1_2021<-mutate(new_caledonia_1_2021,tl_new_deaths=new_caledonia_1_2021$new_deaths)
  new_caledonia_7_2021<-mutate(new_caledonia_7_2021,tl_new_deaths=new_caledonia_7_2021$new_deaths)
  new_caledonia_8_2021<-mutate(new_caledonia_8_2021,tl_new_deaths=new_caledonia_8_2021$new_deaths)
  new_caledonia_10_2021<-mutate(new_caledonia_10_2021,tl_new_deaths=new_caledonia_10_2021$new_deaths)
  
  new_caledonia_1_2022<-mutate(new_caledonia_1_2022,tl_new_deaths=new_caledonia_1_2022$new_deaths)
  
  new_zealand_7_2020<-mutate(new_zealand_7_2020,tl_new_deaths=new_zealand_7_2020$new_deaths)
  new_zealand_8_2020<-mutate(new_zealand_8_2020,tl_new_deaths=new_zealand_8_2020$new_deaths)
  new_zealand_10_2020<-mutate(new_zealand_10_2020,tl_new_deaths=new_zealand_10_2020$new_deaths)
  
  new_zealand_1_2021<-mutate(new_zealand_1_2021,tl_new_deaths=new_zealand_1_2021$new_deaths)
  new_zealand_7_2021<-mutate(new_zealand_7_2021,tl_new_deaths=new_zealand_7_2021$new_deaths)
  new_zealand_8_2021<-mutate(new_zealand_8_2021,tl_new_deaths=new_zealand_8_2021$new_deaths)
  new_zealand_10_2021<-mutate(new_zealand_10_2021,tl_new_deaths=new_zealand_10_2021$new_deaths)
  
  new_zealand_1_2022<-mutate(new_zealand_1_2022,tl_new_deaths=new_zealand_1_2022$new_deaths)
  
  
  for(i in 2:31)
  {
    australia_7_2020$tl_new_deaths[i]=australia_7_2020$tl_new_deaths[i-1]+australia_7_2020$new_deaths[i]
    australia_8_2020$tl_new_deaths[i]=australia_8_2020$tl_new_deaths[i-1]+australia_8_2020$new_deaths[i]
    australia_10_2020$tl_new_deaths[i]=australia_10_2020$tl_new_deaths[i-1]+australia_10_2020$new_deaths[i]
    
    australia_1_2021$tl_new_deaths[i]=australia_1_2021$tl_new_deaths[i-1]+australia_1_2021$new_deaths[i]
    australia_7_2021$tl_new_deaths[i]=australia_7_2021$tl_new_deaths[i-1]+australia_7_2021$new_deaths[i]
    australia_8_2021$tl_new_deaths[i]=australia_8_2021$tl_new_deaths[i-1]+australia_8_2021$new_deaths[i]
    australia_10_2021$tl_new_deaths[i]=australia_10_2021$tl_new_deaths[i-1]+australia_10_2021$new_deaths[i]
    
    australia_1_2022$tl_new_deaths[i]=australia_1_2022$tl_new_deaths[i-1]+australia_1_2022$new_deaths[i]
    
    new_caledonia_7_2020$tl_new_deaths[i]=new_caledonia_7_2020$tl_new_deaths[i-1]+new_caledonia_7_2020$new_deaths[i]
    new_caledonia_8_2020$tl_new_deaths[i]=new_caledonia_8_2020$tl_new_deaths[i-1]+new_caledonia_8_2020$new_deaths[i]
    new_caledonia_10_2020$tl_new_deaths[i]=new_caledonia_10_2020$tl_new_deaths[i-1]+new_caledonia_10_2020$new_deaths[i]
    
    new_caledonia_1_2021$tl_new_deaths[i]=new_caledonia_1_2021$tl_new_deaths[i-1]+new_caledonia_1_2021$new_deaths[i]
    new_caledonia_7_2021$tl_new_deaths[i]=new_caledonia_7_2021$tl_new_deaths[i-1]+new_caledonia_7_2021$new_deaths[i]
    new_caledonia_8_2021$tl_new_deaths[i]=new_caledonia_8_2021$tl_new_deaths[i-1]+new_caledonia_8_2021$new_deaths[i]
    new_caledonia_10_2021$tl_new_deaths[i]=new_caledonia_10_2021$tl_new_deaths[i-1]+new_caledonia_10_2021$new_deaths[i]
    
    new_caledonia_1_2022$tl_new_deaths[i]=new_caledonia_1_2022$tl_new_deaths[i-1]+new_caledonia_1_2022$new_deaths[i]
    
    new_zealand_7_2020$tl_new_deaths[i]=new_zealand_7_2020$tl_new_deaths[i-1]+new_zealand_7_2020$new_deaths[i]
    new_zealand_8_2020$tl_new_deaths[i]=new_zealand_8_2020$tl_new_deaths[i-1]+new_zealand_8_2020$new_deaths[i]
    new_zealand_10_2020$tl_new_deaths[i]=new_zealand_10_2020$tl_new_deaths[i-1]+new_zealand_10_2020$new_deaths[i]
    
    new_zealand_1_2021$tl_new_deaths[i]=new_zealand_1_2021$tl_new_deaths[i-1]+new_zealand_1_2021$new_deaths[i]
    new_zealand_7_2021$tl_new_deaths[i]=new_zealand_7_2021$tl_new_deaths[i-1]+new_zealand_7_2021$new_deaths[i]
    new_zealand_8_2021$tl_new_deaths[i]=new_zealand_8_2021$tl_new_deaths[i-1]+new_zealand_8_2021$new_deaths[i]
    new_zealand_10_2021$tl_new_deaths[i]=new_zealand_10_2021$tl_new_deaths[i-1]+new_zealand_10_2021$new_deaths[i]
    
    new_zealand_1_2022$tl_new_deaths[i]=new_zealand_1_2022$tl_new_deaths[i-1]+new_zealand_1_2022$new_deaths[i]
    
  }
  
  }# mutate
  
  { day<-c(1:31)
    ef<-data.frame(day,australia_7_2020$tl_new_deaths,australia_8_2020$tl_new_deaths,australia_10_2020$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_7_2020$tl_new_deaths,color="red"))+
      geom_line(aes(y=australia_8_2020$tl_new_deaths,color="green"))+
      geom_line(aes(y=australia_10_2020$tl_new_deaths,color="blue"))+
      theme_bw()+labs(title="Cumulative New Deaths in Australia in 2020 ",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    
    ef<-data.frame(day,australia_1_2021$tl_new_deaths,australia_7_2021$tl_new_deaths,australia_8_2021$tl_new_deaths,australia_10_2021$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2021$tl_new_deaths,color="red"))+
      geom_line(aes(y=australia_7_2021$tl_new_deaths,color="yellow"))+
      geom_line(aes(y=australia_8_2021$tl_new_deaths,color="green"))+
      geom_line(aes(y=australia_10_2021$tl_new_deaths,color="blue"))+
      theme_bw()+labs(title="Cumulative New Deaths in Australia in 2021",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,australia_1_2022$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=australia_1_2022$tl_new_deaths,color="red"))+
      theme_bw()+labs(title="Cumulative New Deaths in Australia in 2022 ",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#Australia
  
  {
    ef<-data.frame(day,new_caledonia_7_2020$tl_new_deaths,new_caledonia_8_2020$tl_new_deaths,new_caledonia_10_2020$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_7_2020$tl_new_deaths))+
      geom_line(aes(y=new_caledonia_8_2020$tl_new_deaths))+
      geom_line(aes(y=new_caledonia_10_2020$tl_new_deaths))+
      theme_bw()+labs(subtitle="[NO DATA GIVEN]",title="Cumulative New Deaths in New Caledonia in 2020",x="Day",y="Cumulative New Deaths")+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_caledonia_1_2021$tl_new_deaths,new_caledonia_7_2021$tl_new_deaths,new_caledonia_8_2021$tl_new_deaths,new_caledonia_10_2021$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_10_2021$tl_new_deaths,color="blue"))+
      theme_bw()+labs(title="Cumulative New Deaths in New Caledonia in 2021 ",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("October"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_caledonia_1_2022$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_caledonia_1_2022$tl_new_deaths,color="red"))+
      theme_bw()+labs(title="Cumulative New Deaths in New Caledonia in 2022 ",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Caledonia
  
  {
    ef<-data.frame(day,new_zealand_7_2020$tl_new_deaths,new_zealand_8_2020$tl_new_deaths,new_zealand_10_2020$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_7_2020$tl_new_deaths,color="red"))+
      geom_line(aes(y=new_zealand_8_2020$tl_new_deaths,color="green"))+
      geom_line(aes(y=new_zealand_10_2020$tl_new_deaths,color="blue"))+
      theme_bw()+labs(title="Cumulative New Deaths in New Zealand in 2020 ",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2021$tl_new_deaths,new_zealand_7_2021$tl_new_deaths,new_zealand_8_2021$tl_new_deaths,new_zealand_10_2021$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2021$tl_new_deaths,color="red"))+
      geom_line(aes(y=new_zealand_7_2021$tl_new_deaths,color="yellow"))+
      geom_line(aes(y=new_zealand_8_2021$tl_new_deaths,color="green"))+
      geom_line(aes(y=new_zealand_10_2021$tl_new_deaths,color="blue"))+
      theme_bw()+labs(title="Cumulative New Deaths in New Zealand in 2021 ",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("October","August","January","July"))+theme_grey(base_size = 18)
    
    ef<-data.frame(day,new_zealand_1_2022$tl_new_deaths)
    ggplot(ef,aes(x=day))+
      geom_line(aes(y=new_zealand_1_2022$tl_new_deaths,color="red"))+
      theme_bw()+labs(title="Cumulative New Deaths in New Zealand in 2022 ",x="Day",y="Cumulative New Deaths")+
      scale_color_discrete(name="Month",label=c("January"))+theme_grey(base_size = 18)
  }#New Zealand
  
  
}#cau 8 trong V



{
  {asia_country<-1
  africa_country<-1
  europe_country<-1
  north_america_country<-1
  south_america_country<-1
  oceania_country<-1
  asia<-subset(mydata,mydata$continent=="Asia")
  africa<-subset(mydata,mydata$continent=="Africa")
  europe<-subset(mydata,mydata$continent=="Europe")
  north_america<-subset(mydata,mydata$continent=="North America")
  south_america<-subset(mydata,mydata$continent=="South America")
  oceania<-subset(mydata,mydata$continent=="Oceania")
  for (i in 2:35527)
  {
    if (asia$location[i]!=asia$location[i+1])
    {
      asia_country<-asia_country+1
    }
  }
  for (i in 2:38646)
  {
    if (africa$location[i]!=africa$location[i+1])
    {
      africa_country<-africa_country+1
    }
  }
  for (i in 2:36374)
  {
    if (europe$location[i]!=europe$location[i+1])
    {
      europe_country<-europe_country+1
    }
  }
  for (i in 2:24437)
  {
    if (north_america$location[i]!=north_america$location[i+1])
    {
      north_america_country<-north_america_country+1
    }
  }
  for (i in 2:9334)
  {
    if (south_america$location[i]!=south_america$location[i+1])
    {
      south_america_country<-south_america_country+1
    }
  }
  for (i in 2:8992)
  {
    if (oceania$location[i]!=oceania$location[i+1])
    {
      oceania_country<-oceania_country+1
    }
  }
  }#so lieu
  {
    europe_country_tl<-europe_country+asia_country
    africa_country_tl<- africa_country + europe_country_tl
    north_america_country_tl<-north_america_country+africa_country_tl
    south_america_country_tl<-south_america_country+north_america_country_tl
    oceania_country_tl<-oceania_country+south_america_country_tl
    name<-c("Asia","Europe","Africa","N.America","S.America","Oceania")
    number<-c(asia_country,europe_country_tl,africa_country_tl,north_america_country_tl,south_america_country_tl,oceania_country_tl)
    ef<-data.frame(name,number)
    ef$name<-factor(ef$name,levels=ef$name[order(ef$number)])
    ggplot(ef,aes(x=name,y=number,fill=number))+
      geom_bar(stat="identity")+
      theme_bw()+labs(fill="Number",title="Cumulative number of countries in continents",x="Continent",y="Number of countries")+
     theme_grey(base_size = 18)
  }#cau 1
  { 
    total<-asia_country+africa_country+europe_country+north_america_country+oceania_country+south_america_country
    europe_country_ts<-europe_country/total
    africa_country_ts<-africa_country/total
    north_america_country_ts<-north_america_country/total
    south_america_country_ts<-south_america_country/total
    oceania_country_ts<-oceania_country/total
    asia_country_ts<-asia_country/total
    
    name<-c("Asia","Europe","Africa","N.America","S.America","Oceania")
    number<-c(asia_country_ts,europe_country_ts,africa_country_ts,north_america_country_ts,south_america_country_ts,oceania_country_ts)
    ef<-data.frame(name,number)
    
    ggplot(ef,aes(x=name,y=number,fill=number))+
      geom_bar(stat="identity")+
      theme_bw()+labs(fill="Relative frequency",title="Relative frequency of countries in continents",x="Continent",y="Relative frequency")+
      theme_grey(base_size = 18)
    
  }#cau 2 
  

}#cau 1 + 2 trong IV
{ 
  australia_1_2022_last<-australia[australia$date>="2022-01-13"& australia$date<="2022-01-19",]
  new_caledonia_1_2022_last<-new_caledonia[new_caledonia$date>="2022-01-13"& new_caledonia$date<="2022-01-19",]
  new_zealand_1_2022_last<-new_zealand[new_zealand$date>="2022-01-13"& new_zealand$date<="2022-01-19",]
  options(scipen = 999)
  days<-13:19
  ef<-data.frame(days,australia_1_2022_last$new_cases,new_caledonia_1_2022_last$new_cases,new_zealand_1_2022_last$new_cases)
   ggplot(ef,aes(x=days))+
    geom_line(aes(y=australia_1_2022_last$new_cases,color="red"))+
    geom_line(aes(y=new_caledonia_1_2022_last$new_cases,color="green"))+
    geom_line(aes(y=new_zealand_1_2022_last$new_cases,color="blue"))+
    theme_bw()+labs(title="New Cases of three countries in the last 7 days ",x="Day",y="New Cases")+
    scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+
     theme_grey(base_size = 18)
   
   ef<-data.frame(days,australia_1_2022_last$new_deaths)
   ggplot(ef,aes(x=days))+
     geom_line(aes(y=australia_1_2022_last$new_deaths,color="red"))+
     geom_line(aes(y=new_caledonia_1_2022_last$new_deaths,color="green"))+
     geom_line(aes(y=new_zealand_1_2022_last$new_deaths,color="blue"))+
     theme_bw()+labs(title="New Deaths of three countries in the last 7 days  ",x="Day",y="New Deaths")+
     scale_color_discrete(name="Country",label=c("New Zealand","New Caledonia","Australia"))+
     theme_grey(base_size = 18)
}#cau 3 + 4 trong IV 
{
  australia_oulier_NC=106 
  new_caledonia_outlier_NC=25
  new_zealand_outlier_NC=139
  number<-c(australia_oulier_NC, 
             new_caledonia_outlier_NC,
             new_zealand_outlier_NC)
  name<-c("Australia","New Caledonia","New Zealand")
  ef<-data.frame(name,number)
  ggplot(ef,aes(x=name,y=number,fill=number,group=1))+
    theme_grey(base_size = 18)+
    geom_bar(stat="identity")+
    theme_bw()+labs(fill="Number",title="Outliers for new cases in the three countries",x="Country",y="Outliers for new cases")+
  scale_color_discrete(name="Outliers")+
    theme_grey(base_size = 18)
    
    
  
  number<-c(australia_oulier_D=81, 
            new_caledonia_outlier_D=33,
            new_zealand_outlier_D=41)
  ef<-data.frame(name,number)
  ggplot(ef,aes(x=name,y=number,fill=number,group=1))+
    geom_bar(stat="identity")+
    theme_bw()+labs(fill="Number",title="Outliers for new deaths in the three countries",x="Country",y="Outliers for new deaths")+
  scale_color_discrete(name="Outliers")+
    theme_grey(base_size = 18)
  
   
}#Cau 5 + 6 trong IV





