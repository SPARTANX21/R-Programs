print("Hello World!")
x = 2; X=3;Y=4;Z=5;X;Y;Z
print(x)
class(x)
X = 3;
print(X)
#### Second Section 0 Assignment ####

x <- 2
2 -> x

x = 2

z <- 4L
z 
class (z)


Z = "Hello"
Z
class(Z)

Z = "Hi"
Z
class(Z)


#### Vectors ####

v = 8:17
print(v)

#creating sequence from 5.5 to 17.5
v = 5.5:17.5
print(v)

#if the final element speciifed does not belong to the sequence 
# then it is discarded

v = 3.8:11.4
print(v)

#v = -12.3:2.4;z

# Create vector with elements from 5 to 9 incrementing by 0.5
v = seq(5,9, by=0.5);v
length(v)

# Create a vector with elements from 10 to 20 incrementing by 0.1
seq(10,20,by=0.1)

# print even Number between 10 and 20 
seq(10, 20, by = 2)

# print multiple of 7 from 7 to 100
seq(7,100, by = 7)


### Using c() function 
# numeric data 
v = c(10,15,66,478,99)
print(v)
class(v)
length(v)

# Character data

b = c("Pranay", "Hemant", "Pratik", "Bhupendra");b
class(b)

c = c("Pranay", "MD AND CEO", 1750000);c
class(c)
length(c)

# Subsetting
c[1]
c[5]
c[1:3]
c[0]

# updating elements 
c[2] = "Founder and Board Member"
c

c_2 = c('Pranay', 'Good Morning', 'Howdy Man', 'Im Good')
c_2
class(c_2)
c_2[c(2,3,7)]

c_2[1]

# How to get characters from prime positions in above c_2

v = c(1:15)

v[c(2,3,5,7,11,13)]


# Updating class of vector

 r= c('1','2','3','4');class(r)
 r = as.numeric(r);class(r)

is.numeric(r)

# Create a factor
grade = c('A','B','C','D','E');grade
class(grade)
grade = as.factor(grade);class(grade)

# The non-character values are coerced to character type if one of the elemnts
# is charcter

s = c('apple', 'red', 'green', TRUE , 'blue', 'magenta','brown', 'orange')

letters
LETTERS

# create a vector which stores first 5 multiple, 
# next 5 multiples of 7 and 5 multiples of 16

v = c(seq(5,25,5), seq(7,35,7), seq(16,80,16));v

# consider 3 vector and append or combine into one 

a = 1:10
b = c('A', 'B', 'C')
c = c(TRUE, FALSE)

d = c(a,b,c);d
?rep

rep(10,5)

a = c('Pranay', 'Founder')
rep(a,15)

?rev
rev(a)  # Prints reverse

b = b[-1];b# removes first element from the seq

v = -5:5
print(v)

v[v>0]  #Conditional TRUE elements are brought out 
v[v<0]
v[v==0]

v = c(1,2,3)
v[v>0]
v[v<0]
v[v==0]


# Finding index from name 
k = c(11,13,15,7,8,9)

which((k==1))
which((k==13))
which(k==13)


# creaet a vector "f" store any 50 elements in it and create another vector
# in "J" and store random 5 positions till 50 in it and then access the elements 
# from f wth specified position in "J"

F = c(20:50);F
J = c(22,30,40,42)

F[J]  # Brings matched elements of J from F
J[F]  
F[-J] # Brings out all the elemnts from F vector

min(J)
max(J)

d = c(3,3,4,4,5,6,2,4,8,5,1,2,5,6)
unique(d)

t = c(4,5," ",6,8)
length(t)
t = c(4,5,NA,6,8)
length(t)

# Numeric Data 
num1 = 10.23
class(num1)

# Integer data 
num2 = 63L
class(num2)

# Complex Data
num3 = 3+2i
class(num3)


#### Operators ####

#Arithmetic Operations 
x = 20
y = 3

x%/%y
x/y

# Modulus 
x%%y

#Exponent
x^y
x**y

# NonAtomic Vectors

x_1 = c(1,2,3,4,5)
y_1 = c(7,8,9,10,11)

x_1 + y_1
x_1 * y_1
x_1 - y_1
x_1 / y_1
x_1 %/% y_1

x_1 ** y_1
y_1 **x_1 

#
x_1 = c(1,2,3,4,5,6)
y_1 = c(5,6,7)

x_1 %/% y_1
x_1 / y_1

x_1 + y_1
x_1 - y_1

x_1 = c(1,2,3,4,5,6,7)
y_1 = c(5,6,7)
x_1 - y_1


## Relational Operator 
x =18
y = 17

x<y
x>y
x<=9
x>=9
y == 17


## Relational Operators Vectors

x_1 = c(17,18,19,20)
y_1 = c(16,15,14,20)

x_1 < y_1
x_1 > y_1

x_1>8


## LOgical Operators

x = c(TRUE, FALSE, 0, 8)
y = c(TRUE, FALSE, FALSE, TRUE)
x
y
!x

x&y
x|y

### Miscellaneous Operators 
## CTRL F (find something)
# This is used to identify if an element belongs to vector

v1 = 2
v2 = 12
t = 1:10
print(v1 %in% t)
print(v2 %in% t)

s = 'b'
vowel = c('a','e','i','o','u')
s %in% vowel

# create a vector and replace number lesser than 5 with 0 
v = c(6,2,9,1,8,7)
v[v<5]
v[v<5] = 0
v

# Sort the elements in vector in ascending and desc order
v= c(5,8,2,10,15,3,12)
sort(v)
?sort
sort(v, decreasing = TRUE)

#extract the elements that are in odd position 

b = v[c(1,3,5,7)]
b
# Sum the elements in vector
?sum
sum(v)

#### MATRICES ####
?matrix

m = matrix(nrow = 2, ncol = 2);m

v = c(10,20,30,40)
m = matrix(v)
dim(m)

# Create matrix with values from my_vector, 2rows, 2 cols

m = matrix(v, 2, 2);m
n = matrix(v, 2,2, byrow = T) ;n

m_2 = matrix(1:9, 3, 3, byrow = FALSE);m_2
m_2 = matrix(1:9, 3, 3, byrow = TRUE);m_2
m_2 = matrix(1:6, 3, 3, byrow = TRUE);m_2
m_2 = matrix(1:10, 3, 3, byrow = TRUE);m_2



## Accessing values (Slicing)

m_2[2,2]

m_2[1,2]

m_2[3,1]

m_2[2,]

m_2[1,]

# Accessing Sub-Matrix 

m_2[1:2, 2:3]

m_2[2:3,3:3]

m_2[-3:-3]

## Transpose Matrix

t(m_2)


# I don't know the number of row how to create the matrix?

m_2 = matrix(1:26, ncol=3);m_2

m_2 = matrix(1:26, 3);m_2

nrow(m_2)# to get number of rows in matrix
ncol(m_2)# to get number of cols in matrix

# Additions rowise
rowSums(m_2)

# Additions columnwise
colSums(m_2)

# Diagonal Matrix

d = diag(2,3,3);d
i = diag(5,8,8);i

?diag

# Experiment Below for 001, 010, 100
d = diag(1,2,2);d
d = diag(0,1,0);d
d = c(1,0,0);d; d = c(0,1,0);d; d = c(0,0,1);d
# Experiment above

# Matrix Multiplication 

m = matrix(c(2,6,5,1,10,4), nrow = 2, ncol = 3, byrow = TRUE);m

t(m)
t = m %*% t(m);t

t = t(m) %*% m;t

# Create a 2*3 matrix A with values from 1 to 6 and a 3*2 matrix B with 
# values from 6 to 1
# perform matrix mul of A and B
# verify if result is a square matrix


m = matrix(1:6, 2,3);m
n = matrix(1:6, 3,2);n

v = m %*% n ;v

# Verifying whether the output of matrix above is square matrix or not
nrow(v) == ncol(v)


# check if am is present in vector, also convert the same vector into matrix

v = c('hello','i','am',24,50,60,45,'rrr')
'am' %in% v
m = matrix(v, 2,4);m



# Create a 5*5 Matrix "u" with square of first 25 natural numbers 

u = matrix(1:25, 5,5);u
u = u ** 2;u

#extract the sub matrix from 2:3 row and 2:3 columns
u[2:3,2:3]

# Set diagonal elements t0 0 
diag(u) = 0;u


#### DataFrame ####

# ?data.frame

v= c(14,26,38,30)
v_2 = c("Hello", 'Good Morning', "Nice to Meet you", "Me too")
d_1 = data.frame(v,v_2);d_1

# Changing index names to user defined ones
D_1 = data.frame(v, v_2, row.names=c('A','B','C','D'));D_1

# resetting index names back to 1 to 4 
rownames(D_1) = 1:4

D_1; class(D_1)

row.names(D_1)[1] = 'ABC'; D_1

row.names(D_1)[1:2] = c('ABC', 'D');D_1

row.names(D_1)[1] = 'E'

row.names(D_1)[c(1,4)] = c('X', 'Y'); D_1

# ?head - To get top rows

head(D_1, 2)

head(D_1,-1)

# ?View
# To have a look to table in larger format in dedicated window
View(D_1)

# ?tail  - To get last rows
tail(D_1,2)


# Structure - ?str - to get details of dim and datatype of that var
str(D_1)
dim(D_1)

# Generating Random Numbers 
sample(1:6,2) # Replace = True
#     1st : end , numbers to be generated

sample(1:6,7 ,replace = TRUE)

set.seed(111)
sample(1:5,1, replace = TRUE)

# Generating Random Names
#   install.packages("randomNames")
#   library(randomNames)
#   randomNames(20)

## random selection from a vector 

stranger = c('Hemant', 'Onkar', 'Pratik', 'Bhupendra', 'Omkar', 
             'Bhupesh', 'Hitesh', 'Saurabh', 
             'Shubham', 'Narendra', 'Yash')
friend = sample(stranger, 2);friend

# Merging on the basis of ROWS

d = data.frame(XYZ = c(10,11,12,13,14), ABC = c('A', 'B', 'C', 'D', 'E'));d
e = data.frame(XYZ = c(15,16), ABC = c('F', 'G'));d

d
rbind(d,e)  # Binding on the basis of rows
str(d)

# to find Row names in dataframe
names(d)

# to find column names in dataframe
colnames(d)


# To change datatype of column 
d$ABC = as.factor(d$ABC)
str(d)

# To delete thw hole column
d$XYZ = NULL
d

# To change column name 
colnames(d_1) = c("PQR", 'XYZ'); d_1

# change name of one column 
colnames(d_1)[colnames(d_1) == 'PQR'] = 'XYZ'; d_1

colnames(d_1)[1] = 'UVW';d_1

# add ing new column to dataframe

d_1$newcolumn = c('s','t','u','v'); d_1

# ----------------------------------Ques1----------------------------------
# Create a DataFram "df" with columns "ID", "Name", "Age"
# Add 20 enteries
# Rename the "Name" to column to "FullName"
# Drop the ID Column from the DataFrame
# Display the names of the remaining column

library(randomNames)

df = data.frame(ID=c(1:5), Name =randomNames(20), Age=sample(21:30, 5));df
print("1")
colnames(df)[2] = 'FullName' ; df

print("2")
df$ID = NULL;df

print("3")
colnames(df)

# ----------------------------------Ques2----------------------------------
# Create a DataFrame "Sales" with column  "Product"(5 unique names) and "Price"
# (random values between 10 & 50)
# Add a new column "Discount" that is 10% of the price
# Create another column "FinalPrice" by sustracting
# "Discount" from "Price

Sales = data.frame(Product = c("BMW", 'Mercedes', 'Maserati', 
                               'Ferrari', 'Porsche'),
                   Price = sample(10:50, 5));

Sales$Discount = Sales$Price*0.10; 

Sales$FinalPrice = Sales$Price -  Sales$Discount ; Sales


# ----------------------------------Ques3----------------------------------
# Create a dataframe "EMployee" with "Name", "Age", & "Salary" 
# columns for 10 EMployees
# filter rows where age is above 30
# select only the name and salary columns
# Count the number of employees with salary greater than 50,000

Employee = data.frame(Name = randomNames(10), Age = sample(20:40,10), 
                      Salary = sample(10000:75000, 10)); Employee

which(Employee$Age > 30); Employee

ageabove = Employee[Employee$Age>30, ]; ageabove

name_salary = Employee[,c("Name", "Salary")]; name_salary

salary_more_50 = sum(Employee$Salary > 50000); salary_more_50
Employee[Employee$Salary>50000, ]
