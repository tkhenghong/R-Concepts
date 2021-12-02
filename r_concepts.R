# If you execute the readline line and for loop lines, the program will scream ERROR.
v1 = as.integer(readline("Enter a value: "))
for (i in 1:v1) {
  print("Hello")
}

# Defining the function
greeting = function() {
  print('Good day')
}

# Calling the function
greeting()

greetPerson = function(name) {
  print(paste('Good day', name))
}

greetPerson('Paymond') # call the function
greetPerson('Ang') # call the function

# Interestingly, you have to place the readline and loop inside the function in order to make it work, as below:
sayHello = function(name) {
  v1 = as.integer(readline("Enter a value: "))
  for (i in 1:v1) {
    print("Hello")
  }
}

sayHello()

v2 = 1:10
sum(v2)

total = function(x) { # Define your own function
  res = 0
  for (i in x) { # i is the element of the x
    res = res + 1 # Add i into the res variable.
  }
  return(res) # Return the result back to the caller.
}

# Calling the functions
total(v2)
total(c(1,2,3))
total(-123)
print(total(2:5))


v1 = 1:10
findSum = function(x) { #function will received 1 param (sequence of values)
  total = 0 #starting value with zero
  for (i in x) { #loop through every elements of the array/vector
    total = total + i #i is the individual element, add the value of i into the total
  }
  return (total) #parenthesis must be there for return values
}



findSum(v1)
findSum(matrix(1:6,2,3))



findTotal = function(x,y) {
  return(findSum(x) + findSum(y)) #nested
}
#function call (user defined function)
findTotal(1:5,v1) #v1 = 55, param =15



#built-in
max(v1)
sum(v1)

# Function with Named Parameter(s)
CalculateMargin = function(x,margin=1) { #function will received 1 param (sequence of values)
  return (x*margin) #parenthesis must be there for return values
}



CalculateMargin(v1) #using the default value for margin
CalculateMargin(v1,10) #set the margin value

# Read files()
getwd()
setwd("~/Desktop/RProjects/RConcepts") #set the working directory
read.csv("empsal.csv") #fullpath
emp = read.csv("empsal.csv") #based on the current working directory

data1 = scan("abc.txt", what = character()); data1 #space is the end of each input

data2 = readLines("abc.txt");data2 # full sentence

# Check object variable type
class(emp)
class(data2)


# Check object structure
str(emp)
summary(emp)

# Random data
data3 = sample(1:20,50,T)

# View data as a Table
table(data3)

# View data as a Histogram
hist(data3)


# Plot 
plot(data3,type = 'h')
plot(table(data3),type = 'h')
pie(table(data3))
barplot(data3,col = rainbow(length(data3)),main = "testing")
barplot(emp$salary, xlab = "name", ylab = 'test', )


# Getting sample data from ggplot package.
data()
data(Titanic)
View(Titanic) #to view the dataset
class(Titanic)
df1 = as.data.frame(Titanic)
class(df1)
str(df1)


# Visualziing the data with ggplot
ggplot(df1, aes(df1$Freq)) + geom_histogram()
ggplot(df1, aes(df1$Class , df1$Freq)) + geom_point()
ggplot(df1, aes(df1$Class , df1$Freq)) + geom_line()
ggplot(df1, aes(df1$Class , df1$Freq)) + geom_line() + geom_point()
ggplot(df1, aes(df1$Class , df1$Freq)) + geom_col()

# Self testing
ggplot(df1, aes(df1$Class , df1$Freq)) + geom_point() + geom_line() # Nothing good comes out

ggplot(df1, aes(df1$Freq, col='magenta4')) + geom_histogram(binwidth = 20)

# In Mac, some colors may not able to be displayed. You need to execute the following to see which color you can write in your virtualization.
colors()

# When used the supported color
ggplot(df1, aes(df1$Freq, col='green')) + geom_histogram(binwidth = 20)


barplot(emp$salary, xlab = "name", col = "blue", main="Salary distribution", ylab = "Salary amount", names.arg = emp$name)
boxplot(emp$salary)
summary(emp$salary)


# Quick Review Questions
# 3
# i.
days = sample(1:7);days
revenue = sample(5000:7000,7,T);revenue
sales = data.frame(days , revenue);sales

# ii.
ggplot(sales, aes(sales$days , sales$revenue)) + geom_col()


