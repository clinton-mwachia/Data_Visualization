## USING THE c FUNCTION
# numeric DT
vec1 = c(1,2,3,4)
vec1

# logical DT
vec2 = c(TRUE, FALSE, TRUE, FALSE,FALSE)
vec2
length(vec2)

# character DT
vec3 = c('apple','bananas','oranges')
vec3

## SEQUENCE FUNCTION
vec1 <- seq(from=1, to=10, by=2)
vec1

# define the length of your vector
vec2 <- seq(from=1, to=10, length.out = 6)
vec2
length(vec2)

# vector coercion
vec1 <- c(10,20,'moshe',200)
vec1

## USING : OPERATOR
vec1 <- 1:9
vec1

## ACCESS DATA OF A VECTOR
# integer index
vec1
vec1[2]
# last element
vec1[length(vec1)]

# logical vector index
vec1[vec1 > 6]
logical_vector = vec1 > 6
logical_vector
vec1[logical_vector]

# character vector
# named vector
vec1 <- c('num1'=2,'num2'=30,'num3'=0)
vec1

vec1[1]
vec1['num3']

## UPDATE THE DATA IN A VECTOR
# combine vectors
vec_12 <- c(vec1, vec2)
vec_12

# change a value in a vector
vec2
vec2[2] = 10
vec2

# vector operations
x = c(1,2,3)
y = c(1,2,3)

# addition
vec_add_xy = x + y
vec_add_xy

# subtraction
vec_sub_xy = x - y
vec_sub_xy

# multiplication
vec_10x = 10 * x 
vec_10x

# exponetiate
vec_10x =  x ** 10 
vec_10x
