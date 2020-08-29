# built in data sets
library(datasets)
data("USArrests")

str(USArrests)
summary(USArrests)
View(USArrests)

# mean of murder
mean(USArrests$Murder)
min(USArrests$Murder)

# csv files
# methods 1
wine <- readr::read_csv('winequality-red.csv')

# method 2

# xlsx and xls files
dataset <- readxl::read_xlsx('dataset.xlsx')
#readxl::read_xls()
#readxl::read_excel()

# text files
mydata <- read.table('mydata.txt', header = T, skip = 1)
mydata

mydata1 <- read.table('mydata1.txt', header = T, sep = ',')
mydata1

# tsv files
tsv_data <- readr::read_tsv('custdata2.tsv')
tsv_data

# .data files
iris <- read.table('iris.data',sep = ',') 
iris
