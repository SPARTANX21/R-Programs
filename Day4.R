#### Data analytics Life Cycle ####

# The data analytics lifecycle is a
# structured approach to extracting insights and value from data.
# It typically consists of several interconnected stages that guide the process
# from defining the problem to implementing solutions.:- 
      # Problem Definition:
      # Data Collection:
      # Data Preparation:
      # Exploratory Data Analysis (EDA):
      # Feature Engineering:
      # Modeling:
      # Interpretation and Evaluation:
      # Deployment:
      # Iterative Improvement:


# -ve Corelation
demand = c(12,20,18,22,25,30)
price = c(32,19,25,15,12,10)

plot(demand, price, type = 'l')

cor(demand, price)

stats = c(53, 59, 72, 43, 93, 35, 55, 70)
economics = c(35, 49, 63, 36, 75, 28, 38, 76)

correlation = function(x,y){
  stats = c(x)#scan(nmax = 8)
  eco = c(y) #scan(nmax = 8)
  xy = stats * eco; xy
  x2 = stats**2
  y2 = eco**2

  df = data.frame(stats, eco, xy, x2, y2);df

  n = length(stats); n
  rn = n * (sum(xy)); rn
  rn1 = sum(stats) * sum(eco); rn1

  de1 = sqrt((n*sum(x2)) - (sum(stats)**2)); de1
  de2 = sqrt((n*sum(y2)) - (sum(eco)**2)); de2

  r = (rn - rn1) / (de1 * de2)
  cat(r, "is the corelation coeff \n")
  plot(stats, eco, type = 'l')
  print(df)
}
# Ex - Pg 20
correlation(c(53, 59, 72, 43, 93, 35, 55, 70), c(35, 49, 63, 36, 75, 28, 38, 76))
?cor
# method = c("pearson", "kendall", "spearman")
x = c(10
      ,14
      ,12
      ,18
      ,20
      ,16)
y = c(
      20
      ,30
      ,20
      ,35
      ,25
      ,20)
cor(x, y, method = 'spearman')


spearmancorr = function(x1, y1){
  r1 = c(x1)
  r2 = c(y1)

  d = r1 - r2

  d2 = d**2

  n = length(r1)

  df = data.frame(r1, r2, d, d2)

  r = 1 - ((6*sum(d2)) / (n*((n**2)-1)))

  cat("Spearman coffe = ", r, '\n')

  plot(r1, r2, type='p')
  print(df)
}

x = c(15 ,12 ,16 ,13 ,17 ,14 ,18 ,11)
y = c(17 ,14 ,20 ,25 ,23 ,24 ,22 ,21)
spearmancorr(x, y)

# Average calc pg52
inc = c(16,20,30,35,45,50)
x = c(2,5,4,6,2,1)# no of families
fx = inc * x; fx

df = data.frame(inc, x, fx)
xbar = (sum(fx) / sum(x)) * 100 ; xbar; df


# Ex: Use the following frequency distribution of heights to find the arithmetic mean of height
# of 100 students at XYZ university.


height = c(c('60-62'), c('63-65'), c('66-68'), c('69-71'), c('72-74'))
students = c(5,18,42,27,8)

midpoint =

df = data.frame(height, students); df

v = c(35,49,225,)


# Day 5


x=c(11,12,17,15,25)
var(x)
var(x)*4/5

air = airquality
?boxplot
View(air)

boxplot(air$Ozone, main = 'air$Ozone', col = 'green', border = 'red')
boxplot(air$Ozone, main = 'air$Ozone', col = 'green', border = 'red', 
        horizontal = T)
boxplot(air$Ozone, main = 'air$Ozone', col = 'green', border = 'red',
        horizontal = T, notch = T)

boxplot(air, main ='air', col = 'green', border = 'red', notch = T, horizontal = F)
boxplot(Temp~Month, data = air, main= 'Temp~Month', col = 'green', border = 'red')

boxplot(Solar.R~Temp,data = air,  main = 'Temp vs SolarRad', col = 'green', border = 'red')

a = boxplot(air$Ozone, main = 'Air$Ozone', col = 'green', border = 'red',
            horizontal = T, notch = T)
a
names(air)



b = scan(nmax = 1)
a - scan(nmax=1 )
c = scan(nmax=1)
x = scan()

# x = (-b) +

?dbinom
?pbinom


# Ex-3: In the following table, X is a discrete random variable and p(x) 
# is the probability mass function of X. - pg 32
x = c(1,2,3)
px = c(0.3,0.6,0.1)

df = data.frame(x,px)

df$x_px = x * px
df$xsq_px = x*x*px
df$cd = cumsum(df$px)
df

mean = sum(df$x_px); mean
var = sum(df$xsq_px) - (mean)^2; var
sd = sqrt(var) ; sd



# pg 33 - Discrete uniform Distribution 


# table(sample(1:6, 100, replace = T))
# 
# table(sample)
library(dplyr)

table(sample(0:1, 100, replace  = T)) / 100

table(sample(0:1, 10000, replace  = T)) / 10000


table(sample(0:1, 100000, replace  = T)) / 100000


Assignments 

e = exp(1);e
lambda = scan(nmax=1)
x = scan(nmax=1)
# X = the value which could be the maximum expected or probability value ie. max
# 5 accidents on a road is possible, lambda is how much on avg is possible 

poission = function(){
  e = exp(1);e
  lambda = as.numeric(readline("Enter lambda value (on an average) = "))
  x = as.numeric(readline("Enter maximum value of the probability = "))
  poission = (e**(-lambda) * lambda ** x) / factorial(x)
  print(poission)
}

poission()





