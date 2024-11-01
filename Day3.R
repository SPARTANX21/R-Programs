#### USer Defined Functions ####

# First User Def Function
first_fn = function(){
  print("Print First Function")
}

first_fn()

# Adding Function 
add = function(x,y){
  print(x+y)
}

add(2,3)

# User input using function 
Add = function(){
  x = as.numeric(readline("Enter First NUmber ---> "))
  y = as.numeric(readline("Enter second NUmber ---> "))
  print(x+y)
}

Add()

#### Control Statements ####

# If condition 
x = 2
if (x>0) {
  print(paste(x, " is positive number"))
}

# If else condition 
x = 2
if (x<0) {
  print(paste(x, ' is negative number'))
} else{
  cat(x, ' is positive number') # Don't user cat with print
}

# if else if condition 

x = '+ab'
class(x)
if (x>0) {
  print(paste(x, 'is positive number'))
} else if(x<0){
  print(paste(x, 'is negative number'))
}else{
  print(paste(x, 'is neither positive nor negative'))
}

x = 21
if (x %% 2 == 0) {
  print("NUmber is even")
}else{
  print(paste(x, 'Number is Odd'))
}


### LOOPS ###

# For Loop

x = letters[4:10]
for (i in x) {
  print(i)
}

# print table for 7:22
x = c(1:22)
a = 0 
for (i in x) {
  print(i * 7)
}

# Print1, 1.5,2, 2.5

for (i in c(1:20)) {
  i = i / 2
  print(i+0.5)
}

# While Loop

x = 2
while (x<=5) {
  print(x)
  x = x+1
}

# Print multiplication table of 7 upto 7*22 using while loop 

num = 1 
while (num<= 22) {
  print(paste("7 x", num, "=", 7*num))
  num = num +1
}

# sum of first n natural numbers 
n = 20 
sum = 0 
x = 0
while(x<n){
  x = x+1
  sum = sum + x
  print(sum)
}

# Repeat Statement print 1:7

x = 1
repeat{
  print(x)
  x = x+1
  if (x>7){
    break
  }
}

# print mul of 7:22

x = 1
repeat{
  print((7*x))
  x = x + 1
  if(x>=22){
    break
  }
}
# NEXT LOOP

x = 1:17
for (i in x){
  if (i%%2 != 0){
    next
  }
  print(i)
}

#print odd numbers using next statement 

x = 1:20
for (i in x){
  if(i%%2 == 0){
    next
  }
  print(i)
}


# SWITCH CASE 

#?switch
#  case = action

operation = 'mul'
result = switch(operation , add = 5+3, sub=5-3, mul = 5*3); result


# Function calculator from users to create calulator

calculator = function(){
  operation = readline("What operation would you like to perform --> ")
  x = as.numeric(readline("Enter first numer --> "))
  y = as.numeric(readline("Enter second numbver ---> "))
  result = switch(operation, add=x+y, sub= x-y, mul = x*y, div = x%/%y )
  print(result)
}
calculator()

Factorial

factorial = function(){
  input = as.numeric(readline("Enter a Whole NUmber to find its Factorial-->"))
  if (input > 0) {
    input1 = c(1:input)
    n = 1
    for (i in input1) {
      n = n * i
    }
    print(n)
  }
  else if(input < 0 ){
    print("Input is Invalid, Enter Whole number")
    }else if (input == 0){
    print('1')
    }
}
factorial()


#write a user define function to calculate simple interest and compound interest

simpleinterest = function(){
  p = as.numeric(readline("Enter Initial Principal Balance --> "))
  r = as.double(readline("Enter Annual rate of interest --> "))
  t = as.numeric(readline("Enter Time period (in years) --> "))
  
  si = (p * ((r*t)))/ 100
  print(si)
}

simpleinterest()
# 
compoundinterest = function(){
  p = as.numeric(readline("Enter Initial Principal Balance --> "))
  r = as.double(readline("Enter Annual rate of interest --> "))
  t = as.numeric(readline("Enter Time period (in years) --> "))

  n = c(1:t)
  ci = 0
  for (i in n) {
    ci =  (p * ((1+(r/100)**(n*t)) - p ))
  }
     #(p * (1+(r/n))**(n*t)) / 100
  #}
  print(ci)
}

# Compounded Annually Formula	A = P (1 + r)t
# 
compoundinterest()

compoundinterest <- function() {
  # Getting user inputs
  p <- as.numeric(readline("Enter Initial Principal Balance --> "))
  r <- as.double(readline("Enter Annual Rate of Interest (%) --> "))
  t <- as.numeric(readline("Enter Time Period (in years) --> "))

  # Initializing compound interest variable
  ci <- p * ((1 + (r / 100))^t - 1)

  # Printing the compound interest
  print(paste("Compound Interest after", t, "years is:", ci))
}

# Run the function
compoundinterest()

#write a user define fn to calculate simple and compound interest
# 
interest=function(){
  p=as.numeric(readline("Enter Amount: "))
  rate=as.double(readline("Enter Rate of interest: "))
  t=as.numeric(readline("Enter number of years: "))

  simple=(p*rate*t)/100
  print(paste("Simple interest is ",simple))

  amt=(p*(1+(rate/100))**t)
  cmpd=amt-p
  print(paste("Compound interest is ",cmpd))
}

interest()

#Write user define function in R to take temperature from user in 
#degree Celsius and convert in kelvin and farenheit #Write a function 
# "count elements"that accept a numeric vector and counts the number of 
# positive, negative and zero elements

#test the function on vector

# define a function to take four numbers from user and print thenumber in ascending
# order without using sort

sorting = function(){
  print("Enter four numbers :: ")
  n = scan(nmax = 4)
  print(n)

}
n = scan(nmax = 4)
print(n)
print(class(n))

#### TIDYVERSE ####

library(tidyverse)
View(diamonds)

?diamonds

# PIPE OPERATOR
library(magrittr)
iris %>% head()

diamonds %>% head()

## BASIC DATA MANAGEMENT CHAPTER - pg 65 

# MUTATE()
# What it does: Adds new columns or modifies current variables in the dataset.

class(diamonds)  # [1] "tbl_df"     "tbl"        "data.frame"

# Added 3 new columns - until its assigned  it won't affect base data
diamonds %>% 
        mutate(Justone = 1, 
               Values = 'something',
               Simple= TRUE) %>% head()


# adding new calculative columns 
diamonds %>% 
  mutate(price200 = price - 200, 
        price20perc = price * 0.20, 
        price20percoff = price * 0.80, 
        pricepercarat = price / carat, 
        pizza = depth ^ 2) %>% head()

# SUMMARIZE - collapses all rows and returns a one-row summary. R will recognize both the British and
# American spelling (summarise/summarize).
# mean won't make sense to add it as column hence we 
# use summarize just as "describe()" in python

# getting mean
diamonds %>% summarize(avg.price = mean(price))

# getting stdev
diamonds %>% summarize(avg.price = sd(price))

# getting median
diamonds %>% summarize(avg.price = median(price))


# GROUP BY FUNCTION - group_by() : Takes existing data and groups specific 
# variables together for future operations. Many operations are performed
# on groups.

diamonds %>%
          group_by(cut) %>%
                        #Grouped by price on cut column
                        summarize(m = mean(price), n = n()) %>% ungroup()
                                                  # for safer side ungroup
### Creating table from page 73 from book 

## Creating identification number to represent 50 individual people
ID <- c(1:50)
## Creating sex variable (25 males/25 females)
Sex <- rep(c("male", "female"), 25) # rep stands for replicate
## Creating age variable (20-39 year olds)
Age <- c(26, 25, 39, 37, 31, 34, 34, 30, 26, 33,
         39, 28, 26, 29, 33, 22, 35, 23, 26, 36,
         21, 20, 31, 21, 35, 39, 36, 22, 22, 25,
         27, 30, 26, 34, 38, 39, 30, 29, 26, 25,
         26, 36, 23, 21, 21, 39, 26, 26, 27, 21)
## Creating a dependent variable called Score
Score <- c(0.010, 0.418, 0.014, 0.090, 0.061, 0.328, 0.656, 0.002, 0.639, 0.173,
           0.076, 0.152, 0.467, 0.186, 0.520, 0.493, 0.388, 0.501, 0.800, 0.482,
           0.384, 0.046, 0.920, 0.865, 0.625, 0.035, 0.501, 0.851, 0.285, 0.752,
           0.686, 0.339, 0.710, 0.665, 0.214, 0.560, 0.287, 0.665, 0.630, 0.567,
           0.812, 0.637, 0.772, 0.905, 0.405, 0.363, 0.773, 0.410, 0.535, 0.449)
## Creating a unified dataset that puts together all variables
data <- tibble(ID, Sex, Age, Score)
View(data)

# Grouping only by Sex
data %>%
  group_by(Sex) %>%
  summarize(m = mean(Score), # calculates the mean
            s = sd(Score), # calculates the standard deviation
            n = n()) %>% # calculates the total number of observations
  ungroup()

# Grouping by Sex and Age
data %>%
  group_by(Sex, Age) %>% # grouped by Sex and Age
  summarize(m = mean(Score),
            s = sd(Score),
            n = n()) %>%
  ungroup()

# FILTER() - Only retain specific rows of data that meet the specified requirement(s).

diamonds %>% filter(cut == 'Fair')

data %>% filter(Sex == 'female' )

diamonds %>% filter(cut == 'Fair' | cut == 'Good', price <= 600)

# Filtering 
diamonds %>% filter(cut %in% c('Fair', 'Good'), price <= 600)

# won't give any o/p as and (,) wont work 
diamonds %>% filter(cut == 'Fair', cut == 'Good', price <= 600)
diamonds %>% filter(cut == 'Fair' & cut == 'Good', price <= 600)


diamonds %>% filter(cut == 'Fair' , depth < 60,  price <= 600)


diamonds %>% filter(price %in% seq(c(300:650)))

View(diamonds)

# Incerase cut price by 200+ where cut == fair
diamonds %>% mutaten(price = price +200) %>% filter(cut == 'Fair') 

#Check below conditon 
# diamonds %>% filter(cut == 'Fair') %>%  mutate(price = price +200) 

### SELECT() FUNCTION just like SQL
# Select only the columns (variables) that you want to see. Gets rid of all other columns. You can
# to refer to the columns by the column position (first column) or by name. The order in which you list the
# column names/positions is the order that the columns will be displayed.

# column names / position is the order that the column 
diamonds %>% select(cut, color)

# filters column
diamonds %>% select(1:5)

# columns filters
diamonds %>% select(1,2,3)

# Displays all cols except 'cut'
diamonds %>% select(-cut)

# Displays all cols except 'cut' and 'color
diamonds %>% select(-cut, -color)
# OR
diamonds %>% select(-(1:5))


### ARRANGE FUNCTION 
# 
# Allows you arrange values within a variable in ascending or descending order 
# (if that is applicable to your values). This can apply to both numerical 
# and non-numerical values.

# Ascending order
diamonds %>% arrange(cut)

diamonds %>% arrange(price)

# Descending
diamonds %>% arrange(desc(cut))

diamonds %>% arrange(desc(price))


### count() function - Collapses the rows and counts the number of observations per group of values.

diamonds %>% count(cut)

diamonds %>% group_by(cut) %>% count()

### RENAME() Function 

# can rename column name 
diamonds %>% rename(PRICE = price)
diamonds %>% rename(length = x, width = y, depths = z)

### RECODE() function - pg 71

Sex = factor(c('male', 'm', 'M', 'Female', 'female', 'Female'))
TestScore = c(10,20,10,25,12,5)

dataset = tibble(Sex, TestScore)
str(dataset)


# Creating a new variable (Sex.new) with recoded values
# from the original variable (Sex)


dataset %>% 
        mutate(
          Sex.new = recode(Sex, "m" = "Male", "M"="Male", 'male' = 'Male')
        )
### ROW_NUMBER()

# Using row_number() with mutate() will create a column of consecutive numbers 
# the row_number() fucntion is useful for creating an identification number
# (an ID variable), it is also useful for labeling each 


# Load the inbuilt iris dataset and display  first 15 rows
df = iris
  # Whats is the structure of the dataset? 
  str(iris)

# Filter the dataset to show only the species "setosa"
  df %>% filter(Species == 'setosa')
  # Hw many rows aer there for species "setosa"
  df %>% filter(Species == 'setosa') %>% count()
  # Display the first 10 rows of the filtered dataset 
  df %>% filter(Species == 'setosa') %>% head(10)

# select Sepal.length and species column
  df[c(1,5)]
  #Create a new dataframe called setosa_sepal with these column   
  setosa_sepal = tibble(df[c(1,5)]); setosa_sepal

# Create a new column Sepal.Area in the Iris Dataset that calculates the area 
# of Sepal(Area = Width * length)
  df %>% mutate(
    Sepal.Area = (Sepal.Width * Sepal.Length)
  )

# Group the dataset by species and calculate the mean Sepal.length and Sepal.Wifth for each species 
  # df %>% group_by(Species) %>% 
  # Store the summarized data in new data frame called iris_summary
  iris_summary = df %>% group_by(Species) %>% summarise(Sepal.Length.Mean = mean(Sepal.Length),Sepal.Width.Mean = mean(Sepal.Width)) %>% ungroup(); iris_summary
  
  # Export iris_summary in .csv file
  getwd()
  setwd("A:/CDAC_SM_VITA/5_R_Programming/Day3")
  write.csv(iris_summary, file = 'Iris_summary.csv')

# Arrange the iris dataset by Sepal,length in desc
  df %>% arrange(desc(Sepal.Length))
# Find the unique species present in the dataset
unique(df[c('Species')])

### DATASET 2
# 1) Load the mtcars dataset and display first 7 rows
df = mtcars; head(df)
# 2) filter the dataset to show only cars with mpg greater than 20
df %>% filter(mpg >= 20)
# 3) create a new data frame called selected_cars by selecting mpg,hp & cyl columns
selected_cars = df[c('mpg', 'hp', 'cyl')]; selected_cars
# 4) create a new column hp_per_cyl that calculates horsepower per cylinder
df %>% mutate(
  hp_per_cyl = hp / cyl
)
# 5) group the dataset by cyl and calculate the average mpg & hp for each group
df %>% group_by(cyl) %>% mutate(AverageMPG = mean(mpg), AverageHP = mean(hp) ) %>% ungroup()

df %>% group_by(cyl) %>% summarise(AverageMPG = mean(mpg), AverageHP = mean(hp)) %>% ungroup()
# 6) count the number of cars for each number of cylinder
df %>% group_by(cyl, ) %>% count()
# 7) arrange the dataset by mpg in descending order and export this 
df1 = df %>% arrange(desc('mpg')); df1
  # dataframe in .txt file with separator as "$"
  write.table(df1,file = '7.txt', sep ='$' ); df1
# 8) group the dataset by gear and calculate the total number of cars and average mpg
  
# 9) create a new column "Performance" that categorise cars based on their mpg into low, medium and high(<20 = low, between 20 & 25 = medium, >25 = high)
?case_when

df %>% mutate(Performance = case_when(
  mpg < 20 ~ 'Low',
  mpg >= 20 & mpg < 25 ~ 'Medium', 
  mpg >= 25 ~ 'High'
))
# 10) introduce some NA values into the hp column of mtcars, calculate the total number 
# of missing values and then remove those missing values
# 11) filter the dataset to show cars with mpg greater than 20 and 
# hp less than 100
df



#### LINE PLOT ####

data()
?plot
# type
# what type of plot should be drawn. Possible types are
# 
# "p" for points,
# 
# "l" for lines,
# 
# "b" for both,
# 
# "c" for the lines part alone of "b",
# 
# "o" for both ‘overplotted’,
# 
# "h" for ‘histogram’ like (or ‘high-density’) vertical lines,
# 
# "s" for stair steps,
# 
# "S" for other steps, see ‘Details’ below,
# 
# "n" for no plotting.
?iris

v = c(8,14,65,22,35,97)
plot(v, type = 'p')
plot(v, type='l')

#plotting detailed chart
plot(v, type = 'o', col = 'red', xlab='X_Axis', ylab='Y_Axis' ,main = 'Line Chart')

### PAR - Partition for multiple partitions
par(mfrow = c(1,2))
plot(v, type = 'o')
plot(v, type = 'l')

# resetting the frame back to 1 image
par(mfrow = c(1, 1))

# to change the background color of the plots
par(bg = 'skyblue')
x = c(1:11)
y = c(12:22)

# plotting 2 lines in one single plot
plot(x, y)

data = iris
# names of column
names(data)
View(data)
#Structure of data
str(data)


### Bar Plot
?barplot
H = c(5,7,9,11)
M = c('A', 'B', 'C', 'D')
# barplot
barplot(H, names.arg= M, col = 'blue', border = 'green')

#mtcars data
counts = table(mtcars$gear);counts
barplot(mtcars$gear)

mtcars
mtcars$gear

barplot(counts, main="Car Distribution", xlab='NUmbers of cars', col='orange')

### Multiple barPlot

counts = table(mtcars$vs, mtcars$gear)
rownames(counts)
barplot(counts, main="Car Distribution by gears and VS(MUltiple Bar Plot)", xlab = 'Number of Cars', 
        col=c('darkblue', 'red'), beside=TRUE)
legend('topright', pch = 16, col=c('darkblue', 'red'), c('a', 'b'))

### Stacked barplot

counts = table(mtcars$vs, mtcars$gear)
rownames(counts)
barplot(counts, main="Car Distribution by gears and VS(Stacked bar Plot)", xlab = 'Number of Cars', 
        col=c('darkblue', 'red'), beside=FALSE)
legend('topright', pch = 16, col=c('darkblue', 'red'), c('a', 'b'))

### Pie Chart
?paste
?round
?pie
slices = c(10,12,4,16,8)
label = c('US', 'UK', 'AUSTRALIA', 'GERMANY', 'FRANCE')
pie(slices, labels = label, main = 'Pie Chrat of COuntries', col = rainbow(5))
pie(slices)


# pie chart with percentage written on it 
slices = c(10,124,16,8)
lable = c('US', 'UK', 'AUSTRALIA', 'GERMANY', 'FRANCE')
pct = round(slices / sum(slices) * 100)
lable = paste(lable, pct)
lable = paste(lable, '%', sep=' ')
pie(slices, labels = lable, col = rainbow(length(lable)), main = 'Pie chart of Countries with %')

