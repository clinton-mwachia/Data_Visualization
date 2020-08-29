library(ggplot2)
library(dplyr)
data("diamonds")
View(diamonds)

ggplot(data = diamonds, aes(x=depth)) +
  geom_histogram(binwidth = 1) +
  ggtitle(label = 'distribution of the diamonds depth') +
  coord_cartesian(xlim = c(55,70))

ggplot(data = diamonds, aes(x=table)) +
  geom_histogram(binwidth = 1, fill='blue') +
  ggtitle(label = 'distribution of the diamonds table') +
  coord_cartesian(xlim = c(50,70))

# mirror histograms
data <- diamonds[1:3000,]
ggplot(data = data, aes(x=x)) +
  geom_histogram(aes(x=depth,y=..density..), fill='blue',
                 binwidth = 0.3) +
  geom_label(aes(x=55,y=0.25,label='depth')) +
  geom_histogram(aes(x=table,y=-..density..), fill='red',
                 binwidth = 0.3) +
  geom_label(aes(x=65,y=-0.25,label='table')) +
  coord_cartesian(xlim = c(50,70))

diamonds %>%
  ggplot(aes(x=depth, fill=cut)) +
  geom_histogram(binwidth = 1) +
  coord_cartesian(xlim=c(55,70)) +
  facet_wrap(~cut)
``