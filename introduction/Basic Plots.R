library(datasets)
data("mtcars")
summary(mtcars)
View(mtcars)
attach(mtcars)

# histograms
hist(cyl, main = 'the number of cylinders', xlab = 'no. of cylinder',
     ylab = 'count')
table(cyl)

# export this plot
png(filename = 'plot.png')
hist(cyl, main = 'the number of cylinders', xlab = 'no. of cylinder',
     ylab = 'count')
dev.off()

# pie charts
x <- c(10,40,40)
labels <- c('D','C','C')
pie(x, labels = labels, radius = 1, main = 'percentage composition',
    col = c('grey','blue','white'))
legend('topleft', labels, fill = c('grey','blue','white'))

# BAR CHARTS
x <- c(1,1,1,3,4,4)
barplot(x, main = 'barplot 1', names.arg = c(rep('ones',3),'three',rep('four',2)),
        xlab = 'data',ylab = 'freq')

# box plot
boxplot(disp~cyl, data = mtcars)
boxplot(disp~gear, data = mtcars)

# scatter plots
plot(disp, hp, main = 'disp vs hp')


x <- c(1,2,3,4,5,6,7)
y <- c(10,27,30,45,50,60,70)
plot(x,y)
lines(x,y)
