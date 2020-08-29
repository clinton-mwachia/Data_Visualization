library(tidyverse)
data('iris', 'mtcars')
View(iris)
View(mtcars)

# box plots
iris %>%
  ggplot(aes(x=Species,y=Sepal.Length, fill=Species)) +
  geom_boxplot() +
  ggtitle('A basic boxplot')


iris %>%
  ggplot(aes(x=Species,y=Petal.Length, fill=Species)) +
  geom_boxplot() +
  ggtitle('A basic boxplot')

mtcars %>%
  ggplot(aes(x=as_factor(cyl),y=mpg, fill=as_factor(cyl))) +
  geom_boxplot() +
  xlab('the number of cylinders')

# violin plot
iris %>%
  ggplot(aes(x=Species,y=Petal.Length, fill=Species)) +
  geom_violin() +
  ggtitle('A basic violin plot')

mtcars %>%
  ggplot(aes(x=as_factor(cyl),y=mpg, fill=as_factor(cyl))) +
  geom_violin() +
  xlab('the number of cylinders')

# customize the basic plots
iris %>%
  ggplot(aes(x=Species,y=Petal.Length)) +
  geom_boxplot(
    color='blue',
    fill='blue',
    alpha=0.3,
    outlier.colour = 'red',
    outlier.fill = 'red',
    outlier.size = 3
  ) +
  ggtitle('A basic boxplot')

mtcars %>%
  ggplot(aes(x=as_factor(cyl),y=mpg)) +
  geom_boxplot(
    color='blue',
    fill='blue',
    alpha=0.3,
    outlier.colour = 'red',
    outlier.fill = 'red',
    outlier.size = 3
  ) +
  xlab('the number of cylinders')

# reorder your factors
# median
str(mtcars)
mtcars$cyl <- as_factor(mtcars$cyl)
mtcars %>%
  mutate(cyl = fct_reorder(cyl, mpg, .fun = 'median')) %>%
  ggplot(aes(x=reorder(cyl,mpg),y=mpg,fill=cyl)) +
  geom_boxplot() +
  xlab('number of cyliners')

# order according to the number f observations
mtcars %>%
  mutate(cyl = fct_reorder(cyl, mpg, .fun = 'length')) %>%
  ggplot(aes(x=reorder(cyl,mpg),y=mpg,fill=cyl)) +
  geom_boxplot() +
  xlab('number of cyliners')

# specific order
# forcats
mtcars %>%
  mutate(cyl = fct_relevel(cyl, '6','4','8')) %>%
  ggplot(aes(x=cyl,y=mpg)) +
  geom_bar(stat='identity')

# dplyr
mtcars %>%
  arrange(mpg) %>%
  mutate(cyl = factor(cyl, levels = c('8','6','4'))) %>%
  ggplot(aes(x=cyl,y=mpg)) +
  geom_segment(aes(xend=cyl,yend=0)) +
  geom_point(size=4, color='blue') +
  coord_flip()

mtcars %>%
  arrange(mpg) %>%
  mutate(cyl = factor(cyl, levels = c('4','6','8'))) %>%
  ggplot(aes(x=cyl,y=mpg)) +
  geom_segment(aes(xend=cyl,yend=0)) +
  geom_point(size=4, color='blue') 

# base r
mtcars$cyl <- with(mtcars, reorder(cyl, mpg, median))

mtcars %>%
  ggplot(aes(x=cyl,y=mpg,fill=cyl)) +
  geom_violin() +
  xlab('number of cylinders')

mtcars %>%
  mutate(type = ifelse(cyl == 6, 'main','not main')) %>%
  ggplot(aes(x=cyl,y=mpg,fill=type)) +
  geom_boxplot(alpha=0.4) +
  scale_fill_manual(values = c('blue','grey'))

# grouped box plot
str(mtcars)
mtcars$cyl <- as_factor(mtcars$cyl)         
mtcars$gear <- as_factor(mtcars$gear)         

ggplot(data = mtcars, aes(x=cyl,y=mpg,fill=gear)) +
  geom_boxplot()

# facet wrap
ggplot(data = mtcars, aes(x=cyl,y=mpg, fill=gear)) +
  geom_boxplot() +
  facet_wrap(~gear)

# add mean
ggplot(data = mtcars, aes(x=cyl,y=mpg,fill=cyl)) +
  geom_boxplot() +
  stat_summary(
    fun = mean,
    geom='point',
    color='red',
    size=3
  )

# jitters
ggplot(data = mtcars, aes(x=cyl,y=mpg, fill=gear)) +
  geom_boxplot() +
  geom_jitter(color='black')
