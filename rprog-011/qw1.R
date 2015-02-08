
## Read the dataset.
data <- read.csv('./hw1_data.csv')

## Column Names
names(data)

## First two rows
data[1:2,]

## Number of rows in the data set.
nrow(data)

## Last two rows of the data set.
data[(nrow(data) - 1):nrow(data),]

## Ozone value row 47
data[47,'Ozone']

## Missing values for ozone in this data set.
length(data[,'Ozone'][is.na(data[,'Ozone'])])

## Mean of ozone for this data set excluding NA
mean(data[,'Ozone'][!is.na(data[,'Ozone'])])

## Extract the subset of rows of the data frame where Ozone values are 
## above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

tpart <- data[,'Temp'] > 90
opart <- data[,'Ozone'] > 31

mix <- tpart & opart & complete.cases(tpart,opart)

mean(data[mix,'Solar.R'])


## Mean of temp when month equal 6

mpart <- data[,'Month'] == 6
mpart <- !is.na(mpart) & mpart

mean(data[mpart,'Temp'])

## Max ozone on may
mpart <- data[,'Month'] == 5
mpart <- !is.na(mpart) & mpart

opart <- data[mpart, 'Ozone']
opart <- opart[!is.na(opart)]

max(opart)