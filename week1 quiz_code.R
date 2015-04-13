#Week 1 quiz for R Programming course on Coursera

#Read & print the dataset
data<-read.csv("hw1_data.csv")
data

#In the dataset provided for this Quiz, what are the column names of the dataset?
names(data)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
data[1:2,]

#How many observations (i.e. rows) are in this data frame?
nrow(data)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
tail(data,2)

#What is the value of Ozone in the 47th row?
data[47,]

#How many missing values are in the Ozone column of this data frame?
#define missing values in 1st column
miss<-is.na(data[,1])
sum(miss)
#or
sum(is.na(data[,1]))

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation
colMeans(data[!miss,])
#or
mean(data[!miss,][,1])

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
colMeans(data[data$Ozone>31 & data$Temp > 90 & !miss, ])
#or
mean(data[data$Ozone>31 & data$Temp > 90 & !miss,] [,2])
#or
filterq18<-data[data$Ozone>31 & data$Temp > 90 & !miss, ]
mean(filterq18 [,2])

#What is the mean of "Temp" when "Month" is equal to 6?
colMeans(data[data$Month==6,])

#What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(data[data$Month==5 & !miss,1])