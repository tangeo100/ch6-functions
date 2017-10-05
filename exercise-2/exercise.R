# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2){
  difference <- 0
  if(length(vector1) > length(vector2)){
    difference <- length(vector1) - length(vector2)
  } else {
    difference <- length(vector2) - length(vector1)
  }
  paste('The difference in lengths is', difference)
}

# Pass two vectors of different length to your `CompareLength` function
vector1 <- c(1, 2, 3)
vector2 <- c(1, 2)
CompareLength(vector1, vector2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2){
  if(length(vector1) >= length(vector2)){
    difference <- length(vector1) - length(vector2)
    paste("Your first vector is longer by ", difference, " elements")
  } else {
    difference <- length(vector2) - length(vector1)
    paste("Your second vector is longer by ", difference, " elements")
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vector1, vector2)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference <- function(vector1, vector2){
  if(length(vector1) >= length(vector2)){
    difference <- length(vector1) - length(vector2)
    paste("vector1", " is longer by ", difference, " elements")
  } else {
    difference <- length(vector2) - length(vector1)
    paste("vector2", " is longer by ", difference, " elements")
  }
}
