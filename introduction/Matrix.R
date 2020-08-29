## creating a matrix
# matrix function
# row wise
mat1 <- matrix(data = c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
mat1

# column wise
mat1 <- matrix(data = c(1,2,3,4), nrow = 2, ncol = 2, byrow = FALSE)
mat1
dim(mat1)

# binding vectors
x <- c(1,2,3)
y <- c(4,5,6)

# row wise
mat2 <- rbind(x, y)
mat2

# column wise
mat2 <- cbind(x, y)
mat2

# dimensional function
x <- c(1,2,3,4)
x
dim(x) <- c(2,2)
x

## naming a matrix
# matrix function
mat1 <- matrix(data = c(1,2,3,4), nrow = 2, ncol = 2, 
               byrow = FALSE, dimnames = list(c('row1','row2'), c('col1','col2')))
mat1

# colnames and rownames
colnames(mat1) <- c('col1','col2')
rownames(mat1) <- c('row1','row2')
mat1

## access and modify data elements in a matrix
# [i,j] == [row, col]
mat1[1,1,drop=F]

mat1 <- matrix(data = c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = FALSE)
mat1
# row 1 and 3, col2 and 3
mat1[c(1,3),2:3]
mat1[-1,]

# character
mat1
mat1[,'col1']
mat1['row1','col1', drop=F]

# modify matrix
mat1_t <- t(mat1)
mat1_t

# logical vector
mat1[mat1 > 0]
mat1

mat1 <- mat1[-1,]
mat1

# bonus
mat1 * 2
mat1 / 2
mat1 ** 3
mat1 - 10
