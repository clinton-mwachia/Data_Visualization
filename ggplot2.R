library(tidyverse)


# introduction
x = seq(1, 20, by = 2)
x
y = seq(1, 20, by = 2)
y
length(y)
# x vs y plot
# setting the number of graphs to be plotted
par(mfrow=c(2,2))
# plotting using both lines and points
plot(x, y, type = 'b', main = 'X vs Y plot', 
     xlab = 'x-axis', ylab = 'y-axis', sub = 'both lines and points')

# no plotting
plot(x, y, type = 'n', main = 'X vs Y plot', 
     xlab = 'x-axis', ylab = 'y-axis', sub = 'no plotting')

# plotting using both liness
plot(x, y, type = 'l', main = 'X vs Y plot', 
     xlab = 'x-axis', ylab = 'y-axis', sub = 'lines')

# plotting using both points
plot(x, y, type = 'p', main = 'X vs Y plot', 
     xlab = 'x-axis', ylab = 'y-axis', sub = 'points')

# Pie Chart
par(mfrow=c(1,1))
names(x) = paste0('name', 1:10)
pie(x, radius = 1, main = 'A simple Pie Chart')

# qplot
qplot(x, y, main = 'A simple Q plot')

# we now choose an inbuild data to do our visualizations
# for status we are going to use iris dataset
library(MASS)
data("iris")
View(iris)

# studying the iris dataset
str(iris)
summary(iris)
anyNA(iris)

# plotting iris data using ggplot2
# line plot
attach(iris)
ggplot(data = iris, aes(Sepal.Length, Sepal.Length)) + 
  geom_line(colour = 'blue', size = 2) + ggtitle('Line Plot of SepalLength vs SepalLength') +
  theme_grey()

# Scatter Plot
# sepalLength vs sepalLength
ggplot(data = iris, aes(Sepal.Length, Sepal.Length))+ 
  geom_point(size = 2, color = 'red') + ggtitle('Scatter Plot of SepalLength vs SepalLength') +
  theme_grey()

# sepalLength vs petalLength
ggplot(data = iris, aes(Sepal.Length, Petal.Length, fill = Species, color = Species))+ 
  geom_point(size = 2) + ggtitle('Scatter Plot of SepalLength vs PetalLength') +
  theme_grey() 

# box plot
ggplot(data = iris, aes(Sepal.Length, Petal.Length, fill = Species, color = Species))+ 
  geom_boxplot() + ggtitle('Boxplot of SepalLength vs PetalLength') 

# pie chart
ggplot(iris, aes(x = "", y = Sepal.Length, fill = Species)) + 
  geom_bar(width = 2, stat="identity") + 
  coord_polar("y", start = pi/3) + ggtitle("Pie Chart") 
