## creating a list
list1 <- list(x = 10, y = FALSE, z = 'List')
list1
# structure
str(list1)
typeof(list1)

list2 <- list(a = 1:5, b = c('apple','banana'), c = c(TRUE, FALSE))
list2
str(list2)

## accessing data elements from a list
### integer
list2
list2[3]
list2[[3]]
list2$c

## character
list2['c']
list2[['c']][1]

## modify data elements
list2
list2[['b']][1:2] <- c('APPLE','BANANA')
list2

list2[['a']][1:5] <- c(10,20,30,40,50)
list2

## add a data element
list2
list2[['d']] <- 400
list2

list2[['d']][2] <- 100
list2

# delete a data element
list2[[3]] <- NULL
list2

searchpaths()
attach(list1)

d[1]

detach(list2)
