# creating a data frame
df <- data.frame(x = 1:10, y = 20:29, z = 30:39)
df
class(df)
str(df)

# access data elements of a data frame
df$x
df$y

df[['x']]

head(df,5)

df[1:5,3,drop=F]

# add a row
rbind(df, c(2.5,3.5,40.9))

# add a new column
df
df$new <- 80:89
df

cbind(df, new1 = 90:99)

# deleting data elements
df <- df[-1,]
df

df$new <- NULL
df

## bonus
