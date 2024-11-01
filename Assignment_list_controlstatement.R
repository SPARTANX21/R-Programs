# 1. Write a R program to take input from the user (name and age) 
# and display the values.

name = readline("Enter Your name --> ");name; age = readline("Enter your age --> ");age

# 2. Write a R program to print the numbers from 1 to 100 and print "Fizz" 
# for multiples of 3, print "Buzz" for multiples of 5, 
# and print "FizzBuzz" for multiples of both.

for (i in 1:100) {
  if ((i %% 3 == 0) && (i %% 5 == 0)) {
    seq(1:100); print('FizzBuzz')
  }else if (i %%3 ==0) {
    print("Buzz")
  }else if (i %% 5 == 0) {
    print('Fizz')
  }
}

# 3. Write a R program to create an array with three columns, three rows, 
# and two "tables", taking two vectors as input to the array. Print the array.
v1 = c(1:9)
v2 = c(10:18)
a = array(c(v1, v2), dim=c(3,3, 2));a

# Write a function that takes 3 numbers a, b, and c as inputs 
# and returns the smallest number of the three

smallestnumber = function(){
  a = as.numeric(readline("Enter a = "))
  b = as.numeric(readline("Enter b = "))
  c = as.numeric(readline("Enter c = "))
  
  if (a<b & a<c) {
    print("A is Smallest number")
  }else if (b<c) {
    print("B is the Smallest number")
  }else{
    print("C is the Smallest number")
  }
}

smallestnumber()


# 5. Write a function which recursively computes the n’th Fibonacci number

fibonacci = function(n) {
  if (n <= 1) {
    return(n)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

fibonacci(10)

# 6.Find all primes smaller than 1000.
is_prime = function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  for (i in 2:num**0.5) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

primes_under_1000 = c()
for (n in 2:999) {
  if (is_prime(n)) {
    primes_under_1000 = c(primes_under_1000, n)
  }
}

cat("Primes smaller than 1000 are:\n", primes_under_1000, "\n")


#7.Print the square root of the numbers from 1 to 1000.

for (i in c(1:1000)) {
  cat(i, '=', i**0.5, '\n')
}

# 8.Give the R code required to produce this list:

a = c(1:5); a
b = c('a', 'b');b
c = matrix(1:6, 2,3);c

# 
# 9.
# Using the built-in dataset, midwest (make sure tidyverse is loaded!)
library(tidyverse)
midwest %>% head()

# a.
# Create a column named avg.pop.den which 
# calculates average population density for the entire dataset

View( midwest %>% mutate(avg.pop.den = mean(popdensity)))

# b.
# Create a column named avg.area which calculates the average area for the 
# entire dataset

View(midwest %>% mutate(avg.area = mean(area)) %>% group_by(area) )
# c.
# Create a column called totadult which calculates the total number of 
# adults in this dataset

View(midwest %>% mutate(totaladult = sum(popadults)) %>% group_by(county))

# d.
# Create a new column called tot.minus.white calculating the difference 
# between poptotal and popwhite.

View(midwest %>% mutate(tot.minus.white = poptotal - popwhite)) 

# e.
# Create a new column called child.to.adult that calculates the 
# ratio of percchildbelowpovert to percadultpovert
View(midwest %>%
        mutate(child.to.adult = percchildbelowpovert / percadultpoverty))
# f.
# Create a new column named ratio.adult which calculates the ratio of adults 
# in this dataset

View(
  midwest %>% mutate(ratio.adult = )
)


# g.
# Create a new column named perc.adult that calculates the percentage of 
# the total population that are adults per county

midwest %>% mutate


# 10. Create a user defined function from the user which will take vector 
# from the user and print its mean

meanfunction = function(vector){
  print(mean(vector))
}

v1 =c(1,2,3,4,5)
meanfunction(v1)

# 11.Create a user define function which will take Principal, Rate of interest, 
# Duration from the user and calculate Simple Interest and Compound Interest

simpleinterest = function(){
  p = as.numeric(readline("Enter Principal Amount = "))
  r = as.numeric(readline("Enter Rate of Interest = "))
  t = as.numeric(readline("Enter Number of Years = "))
  
  si = (p * r * t)/100
  print(si)
}

simpleinterest()

compoundinterest = function(){
  p = as.numeric(readline("Enter Principal Amount = "))
  r = as.numeric(readline("Enter Rate of Interest = "))
  t = as.numeric(readline("Enter Number of Years = "))
  
  ci = p * (1 + r / 100)**t - p
  print(ci)
}

compoundinterest()

# 12 Create a list which has dataframe, matrix & vector and access 
# every element from that list.


name = c('Pranay', 'Hemant', 'Pratik', 'Bhupendra', 'Yash', 'Omkar')
age = c(23,24,29,27,23, 24)

data = data.frame(name, age); data

m = matrix(c(1:12), 6,2, byrow = TRUE);m

v = c(5:10)

mylist = list(data,m, v ); mylist


# Accessing each element
mylist[[1]][1, ]
mylist[[1]][6, ]
mylist[[1]][2:4,]

mylist[[2]][1,]
mylist[[2]][6,]

mylist[[3]][2]
mylist[[3]][6]
