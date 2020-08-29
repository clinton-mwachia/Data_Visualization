# normalization
data("iris")
summary(iris)
View(iris)

# min max normalization
min_max <- function(x){
  res <- (x - min(x))/(max(x) - min(x))
  return(res)
}
newd <- as.data.frame(sapply(iris[,1:4], min_max))
summary(newd)

# z score standardization
z_score <- function(x){
  res <- (x - mean(x))/sd(x)
  return(res)
}
newd1 <- as.data.frame(sapply(iris[,1:4], z_score))
summary(newd1)
sapply(newd1,sd)
