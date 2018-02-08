# Data manipulation using data frames
#part of Base R
#creating data frames
idf<-data.frame(gender=c("M","F"),ht=c(10,20), wt=c(30,40))
idf
names(idf)
colnames(idf)<-c("C1","C2","C3")
idf$C1
names(idf)
names<- rownames(idf)
names
idf

#from external data
myfile<-read.csv("D:\\niit\\datascience and R\\new content slides\\day5\\titanic.csv")
myfile 
names(myfile)
colnames(myfile)[7]<-"Siblingcount"
names(myfile)
#total value of the ages of all passengers
totalage<-sum(myfile$Age,na.rm = TRUE)
totalage
#new column/variable
myfile$diff<-totalage-myfile$Age
head(myfile)  
  
#for our class we will use hflights data
library(hflights)
#data(hflights)
mydata<-hflights
summary(mydata)
head(mydata)
#check the structure
str(mydata)
#get the column names
names(mydata)
#extract column names into a vector
mycolumns<-names(mydata)
mycolumns
#selected rows and columns
mydata[1:10,c("Year","Month","ArrTime","AirTime")]
mycols<-c("Year","Month","ArrTime","AirTime")
#using a column vector
mydata[1:10,mycols]
#by row numbers       
mydata[1:100,]
#row and column numbers
mydata[1:10,1:3]
mydata[500:600,5:8]
#filter on Flight number

myfilter<-subset(mydata,FlightNum==428)
nrow(myfilter)
print(myfilter)
#multiple filters
myfilter<-subset(mydata,FlightNum==428 & ArrDelay==0)
nrow(myfilter)
myfilter


#show select columns 
myfilter<-subset(mydata,FlightNum==428 & ArrDelay==0,
                 select=c("FlightNum","Origin","Dest",
                       "UniqueCarrier")) 
print(myfilter)
#if you want exclude just one or two columns
subset(myfilter ,select=-Dest)

#adding rows and columns
#columns first
#create a vector for the column with the required values
myfilter
Dest1<-"India"
Dest1
cbind(myfilter,Dest1)
#now rows
myrow<-c(428,"ABC","WN","USA","India")
rbind(myfilter,myrow)
#one more example of filter
myfilter1<-subset(mydata,AirTime<25)
myfilter1
#How to delete a column 
myfilter1$AirTime
myfilter1$AirTime<-NULL
myfilter1$AirTime
names(myfilter1)
#how to update 
myfilter2<-cbind(myfilter,Dest1)
myfilter2<-rbind(myfilter,myrow)
myfilter2
myfilter2$Dest<-"India"
myfilter2
#specific cell
myfilter2[1,3]="AUS"
myfilter2
#create a new column  
myfilter2$neworigin <- myfilter2$Origin 
myfilter2  
names(myfilter2)
mydata$totaltime<-mydata$AirTime+mydata$DepDelay
head(mydata)
#ordering the results
#sorted by ascending order by default
mydata[order(mydata$UniqueCarrier),c("UniqueCarrier","DepDelay")]
#this is for descending order
mydata[order(mydata$UniqueCarrier,decreasing = TRUE),c("UniqueCarrier","DepDelay")]

#DF class Exercise
#load the titanic data from your local drive
#display only the following columns
#passengerId, survived, Name, age , Sex
#Rename the column Sex to Gender

 
#save this data a new csv file on the local storage
#with the name titanic_yourname