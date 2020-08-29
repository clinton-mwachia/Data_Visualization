# install packages
# method 1: CRAN
install.packages('ggplot2', dependencies = TRUE)

# method 2: GitHub
library(devtools)
#devtools::install_github()
install_github("tidyverse/ggplot2")

# method 3

# functions
# built in
#base::mean()
x <- c(1,2,3,4,5,NA)
mean(x, na.rm = T)
sd(x, na.rm = T)

# user defined
# fn_name <- function(arguments){}
# arguments
multiply <- function(x,y){
  result <- x * y
  return(result)
}
multiply(3,3)

for_fn <- function(n){
  for (i in 1:n) {
    print(i)
    
  }
}
for_fn(10)

# with no arguments
greet <- function(){
  name <- readline(prompt = 'Enter your name: ')
  print(paste('Hello,', name))
}
greet()

add <- function(x,y,z){
  result <- x + y + z
  return(result)
}
add(1,2,4)

# default arguments
add <- function(x,y,z=4){
  result <- x + y + z
  return(result)
}
add(x=1,y=3)
