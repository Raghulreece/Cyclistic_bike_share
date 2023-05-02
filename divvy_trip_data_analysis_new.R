#loading nescessary packages
library(tidyverse)
library(janitor)
library(lubridate)
library(scales)
library(dplyr)
library(ggplot2)
#Exploratory Data Analysis 
#importing dataset of 12months cyclist data
rm(list=ls())
df1<-read.csv("t1.csv")
df2<-read.csv("t2.csv")
df3<-read.csv("t3.csv")
df4<-read.csv("t4.csv")
df5<-read.csv("t5.csv")
df6<-read.csv("t6.csv")
df7<-read.csv("t7.csv")
df8<-read.csv("t8.csv")
df9<-read.csv("t9.csv")
df10<-read.csv("t10.csv")
df11<-read.csv("t11.csv")
df12<-read.csv("t12.csv")

#comparing column specification and comparing which columns are perfectly match
colnames(df1)
colnames(df2)
colnames(df3)
colnames(df4)
colnames(df5)
colnames(df6)
colnames(df7)
colnames(df8)
colnames(df9)
colnames(df10)
colnames(df11)
colnames(df12)
## Renaming the column names into more readable form
df1%>% rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df2%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df3%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df4%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df5%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df6%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df7%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df12%>%rename( "trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df7%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df8%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df9%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df10%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
df11%>%rename("trip_id"="ride_id"
              ,"bike_id"="rideable_type"
              ,"start_time"="started_at"
              ,"end_time"="ended_at"
              ,"From_station_name"="start_station_name"
              ,"from_station_id"="start_station_id"
              ,"to_station_name"="end_station_name"
              ,"to_station_id"="end_station_id"
              ,"usertype"="member_casual")
## checking the dataframes and look for consistency
str(df1)
str(df2)
str(df3)
str(df4)
str(df5)
str(df6)
str(df7)
str(df8)
str(df9)
str(df10)
str(df11)
str(df12)

##converting start_station_id,end_station_id as integer so that they can join apparently 

df9<-dplyr::mutate(df9,start_station_id=as.integer(start_station_id),end_station_id=as.integer(end_station_id))
df10<-dplyr::mutate(df10,start_station_id=as.integer(start_station_id),end_station_id=as.integer(end_station_id))
df11<-dplyr::mutate(df11,start_station_id=as.integer(start_station_id),end_station_id=as.integer(end_station_id))
df12<-dplyr::mutate(df12,start_station_id=as.integer(start_station_id),end_station_id=as.integer(end_station_id))

#rechecking the selected column for crt dataframes
str(df9)
str(df10)
str(df11)
str(df12)

##in this step adding the entire 12months data csv into one single file

all_trips <-bind_rows(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11,df12)
View(all_trips)
## Dropping some of the columns not needed 
all_trips<-all_trips%>% select(-c(start_lat,start_lng,end_lat,end_lng))
 
##checking column of the bind data
colnames(all_trips)
##checking how many rows in it
nrow(all_trips)
## checking dimensions 
dim(all_trips)
## check for first 10 rows of data
head(all_trips)
##checking dataframe
str(all_trips)

##summary of the all data
summary(all_trips)

## renaming column data
all_trips<- all_trips%>%mutate(member_casual=recode(member_casual,"Subscriber"="member","customer"="casual"))
table(all_trips$member_casual)
##Creating separate column data for date,month,year,dayofweek
all_trips$date<-as.Date(all_trips$started_at)
all_trips$month<-format(as.Date(all_trips$date),"%m")
all_trips$day<-format(as.Date(all_trips$date),"%d")
all_trips$year<-format(as.Date(all_trips$date),"%y")
all_trips$day_of_week<-format(as.Date(all_trips$date),"%A")
## finding difference b/t started and ended and storing as ride_length
all_trips$ride_length<-difftime(all_trips$ended_at,all_trips$started_at)
str(all_trips)

is.factor(all_trips$ride_length)
all_trips$ride_length<-as.numeric(as.character(all_trips$ride_length))
is.numeric(all_trips$ride_length)
View(all_trips)
## Removing empty spaces and NA's using janitor and omit functions
all_trips<-janitor::remove_empty(all_trips,which=c("cols"))
all_trips<-janitor::remove_empty(all_trips,which = c("rows"))

new_trips<-na.omit(all_trips)

## to minimize the negative function 
new_trips_v2<-new_trips[!(new_trips$ride_length<0),]


#descriptive analysis on ride length

mean(new_trips_v2$ride_length)
median(new_trips_v2$ride_length)
max(new_trips_v2$ride_length)
min(new_trips_v2$ride_length)

summary(new_trips_v2$ride_length)

##descriptive analysis of ride_length and member_casual

aggregate(new_trips_v2$ride_length~new_trips_v2$member_casual,FUN = mean)
aggregate(new_trips_v2$ride_length~new_trips_v2$member_casual,FUN=median)
aggregate(new_trips_v2$ride_length~new_trips_v2$member_casual,FUN=max)
aggregate(new_trips_v2$ride_length~new_trips_v2$member_casual,FUN=min)

aggregate(new_trips_v2$ride_length~new_trips_v2$member_casual+new_trips_v2$day_of_week,FUN=mean)
##ordering the day of week 

new_trips_v2$day_of_week<-ordered(new_trips_v2$day_of_week,levels=c("Sunday","Monday","Tuesday","Wednessday","Thursday","Friday","Saturday"))

##finding mean for ride_lenth,member_causal +day of week
aggregate(new_trips_v2$ride_length~new_trips_v2$member_casual+new_trips_v2$day_of_week,FUN =mean)


##data visualization

new_trips_v2 %>%mutate(weekday=wday(started_at, label=TRUE))%>%
  group_by(member_casual,weekday)%>%
  summarise(number_of_rides=n(),average_duration=mean(ride_length))%>%arrange(member_casual,weekday)


new_trips_v2 %>%mutate(weekday=wday(started_at, label=TRUE))%>%
  group_by(member_casual,weekday)%>%
  summarise(number_of_rides=n(),average_duration=mean(ride_length))%>%arrange(member_casual,weekday)%>%ggplot(aes(x=weekday,y= number_of_rides,fill=member_casual))+geom_col(position="dodge")+labs(title = "Number of rides by rider type", subtitle = "Sorted by weekday")

new_trips_v2 %>%mutate(weekday=wday(started_at, label=TRUE))%>%
  group_by(member_casual,month)%>%
  summarise(number_of_rides=n(),average_duration=mean(ride_length))%>%arrange(member_casual,month)%>%ggplot(aes(x=month,y= average_duration,fill=member_casual))+geom_col(position="dodge")+labs(title = "Average duration by rider type", subtitle = "Sorted by month")