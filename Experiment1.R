# ques 1
c<-c(5,10,15,20,25,30)
max_val<-max(c)
min_val<-min(c)
print(paste("Maximum value is ",max_val))
print(paste("Minimum value is ",min_val))

# ques 2
factorial<-function(n) {
  if(n==0){
    return(1)
  }else{
    return(n * factorial(n-1))
  }
}

num<-as.integer(readline(prompt="Enter a number: "))
if (num < 0) {
  print("Not Possible")
} else {
  result<-factorial(num)
  print(paste("The factorial of", num, "is", result))
}

# ques 3
print_fibonacci <- function(n) {
  a <- 0
  b <- 1
  
  cat("Fibonacci Sequence:")
  for (i in 1:n) {
    cat(a, " ")
    next_num <- a + b
    a <- b
    b <- next_num
  }
}

num<-as.integer(readline(prompt="Enter a number:"))

if(num<0){
  print("Not possible")
}else{
  print_fibonacci(num)
}

# ques 4
calculator<-function(num1,num2,operation){
  result<-switch(operation,
                 "1"=num1+num2,
                 "2"=num1-num2,
                 "3"=num1*num2,
                 "4"=if(num2!=0)num1/num2 else "Division by zero error",
                 "Invalid operation")
  return(result)
}

num1<-as.numeric(readline(prompt="Enter first number: "))
num2<-as.numeric(readline(prompt="Enter second number: "))
cat("Select operation:\n1. Add\n2. Subtract\n3. Multiply\n4. Divide\n")
operation<-readline(prompt="Enter operation number: ")

result<-calculator(num1,num2,operation)
print(paste("Result:",result))

# ques 4

# plot
x<-1:10
y<-x^2
plot(x,y,main="Scatter Plot",xlab="X-Axis",ylab="Y-Axis")

# pie chart 
slices<-c(10,20,30,40)
labels<-c("A","B","C","D")
pie(slices,labels,main="Pie Chart",col=rainbow(length(slices)))

# bar plot
counts<-c(5,10,15,20)
barplot(counts,main="Bar Chart",xlab="Categories",ylab="Frequency",names.arg=c("A","B","C","D"),col="blue")

# box plot
data<-list(A=rnorm(10),B=rnorm(10,mean=2))
boxplot(data,main="Boxplot",names=c("Group A","Group B"),col=c("orange","green"))

# histogram
data<-rnorm(100)
hist(data,main="Histogram",xlab="Values",col="lightblue",border="black")



