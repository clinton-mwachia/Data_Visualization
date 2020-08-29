library(ggplot2)
library(ggExtra)
View(iris)
attach(iris)
# scatter plots
# show relationship of two numeric 

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length))+
  geom_point()

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length))+
  geom_point(
    color='blue',
    size=3,
    shape=5
  )

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length,color=Species))+
  geom_point()

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length,shape=Species))+
  geom_point()

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length,alpha=Species))+
  geom_point()

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length,
                      color=Species,alpha=Species,shape=Species))+
  geom_point()

# annotate texts
ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length,color=Species))+
  geom_point() +
  geom_text(
    label=Species,
    check_overlap = T
  )

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length,color=Species))+
  geom_point() +
  geom_label(
    label=Species
  )

ggplot(data=iris, aes(x=Sepal.Length,y=Petal.Length,color=Species))+
  geom_point() +
  geom_text(
    label="the means",
    x = mean(Sepal.Length),
    y = mean(Petal.Length),
    color='red'
  )

# marginal distributions
p <- ggplot(data = iris, aes(x=Sepal.Length,y=Sepal.Width, color=Species)) +
  geom_point()
p
ggMarginal(p, type = 'histogram', size = 5, fill='blue')

ggMarginal(p, type = 'density')

ggMarginal(p, type = 'boxplot')

ggMarginal(p, type = 'violin')

# linear trend
ggplot(data = iris, aes(x=Sepal.Length,y=Sepal.Width)) +
  geom_point() +
  geom_smooth(method = lm, color='red', se=F)

ggplot(data = iris, aes(x=Sepal.Length,y=Sepal.Width)) +
  geom_point() +
  geom_smooth(method = lm, color='red', se=T)
