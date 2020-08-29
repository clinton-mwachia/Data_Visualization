x <- c(1,2,3)
y <- c(4,5,6)
mat1 <- matrix(data = cbind(x,y),nrow = 2)
mat1
# apply
apply(mat1, 1, sum)
apply(mat1, 2, sum)

data("iris")
attach(iris)
apply(iris[,1:4], 2, sum)

# lapply
myf <- function(x){
  return(x * 2)
}

lapply(x, myf)

name <- c('MOSHE','CLINTON')
lapply(name, tolower)

# sapply
sapply(list(x,y), mean)
sapply(list(x,y), myf)
sapply(Sepal.Length, myf)

# tapply
tapply(Petal.Length, Species, mean)
df <- data.frame(x,y,z=c('a','b','b'))
df
tapply(df$y, df$z, mean)

# mapply
# multivariate apply fn
mapply(rep, 1:2,4)
mapply(myf, 1:10)
# vapply
vapply(list(x,y), sum, numeric(1))
vapply(list('MOSHE','CLINTON'), tolower,FUN.VALUE=character(1))

# rapply
rapply(list(x,y), mean)
rapply(list(x,y), myf)

## bonus
# aggregate function
aggregate(Sepal.Length~Species, data = iris,FUN = mean)
