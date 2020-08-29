# loops/ control structures
# if statement
x <- 15

# check for even numbers in vec1
if(x %% 2 == 0){
  paste(x,'Is an even number')
}

# if else
if(x %% 2 == 0){
  paste(x,'Is an even number')
} else{
  paste(x, 'is an odd number')
}

# ifelse
ifelse(x %% 2 == 0,yes = paste(x,'Is an even number'), 
       no = paste(x,'Is an odd number'))

# nested ifelse
# 1 - 2, a
# 3 - 4, b
# 5 - 6, c
# 7 - 8, d
# 9 - 10, e

vec1 <- 1:10
vec1 <- 11

ifelse(vec1 >= 1 & vec1 <= 2, yes = paste(vec1,'belongs to grade a'),
       ifelse(vec1 >= 3 & vec1 <= 4, yes = paste(vec1,'belongs to grade b'),
              ifelse(vec1 >= 5 & vec1 <= 6, yes = paste(vec1,'belongs to grade c'),
                     ifelse(vec1 >= 7 & vec1 <= 8, yes = paste(vec1,'belongs to grade d'),
                            ifelse(vec1 >= 9 & vec1 <= 10, yes = paste(vec1,'belongs to grade e'),
                                   no = paste(vec1,'Has no grade assigned'))))))

# for loop
vec2 <- 1:10
vec2

for (i in vec2) {
  if(i %% 2 == 0){
    print(paste(i, 'is an even number'))
  } else {
    print(paste(i, 'is an odd number'))
  }  
}

# nested for loops
for(i in 1:5){
  for(j in 1:5){
    print(paste(i,'*',j,'=',i*j))
  }
}

# while loop
x <- 0
while(x < 10){
  x <- x + 2
  print(x)
}

# repeat and break
x <- 3
repeat{
  print(x)
  x <- x + 1
  if(x == 6){
    break
  }
}

# repeat and next
x <- 3:10
repeat {
  for (i in x) {
    if(i == 5){
      next
    }
    print(i)
  }
  break
}

# matrix 
#  1 2 3 4 5 6 7 8 9
#1
#2
#3
#4
#5
#6
#7
#8
#9

mat1 = matrix(data = rep(0,81), nrow = 9,ncol = 9)
mat1

for (i in 1:9) {
  for (j in 1:9) {
    mat1[i,j] <- i *j
  }
  
}
mat1
