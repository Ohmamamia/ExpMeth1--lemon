#Exercise 2
#0 Vector
Studygroup <- c("Søren","Verus","Anne-Line","Esben","Lærke")
StudygroupSiblings <- c(3,3,2,1,2)
#1 Dataframe with studygroup names and siblings
Barry<-data.frame(names=Studygroup, number_of_siblings = StudygroupSiblings)
View(Barry)
#2 Add gender
gender <- c(1,2,2,1,2)
gender <- factor(gender,levels = c(1:2),labels = c("Male","Female"))
Barry <- data.frame(Barry,gender)
View(Barry)
#3 Add a new person
Barry$names <- as.character(Barry$names)
rbind(Barry,c(names="Jacob",number_of_siblings = 3, gender = "Male"))
Barry <- rbind(Barry,c(names="Jacob",number_of_siblings = 3, gender = "Male"))
#4 The mean number of siblings
mean(StudygroupSiblings)
#___it is 2.2
#5 Estimate how many siblings the names have in a new column
estimate.siblings <- c(2,4,5,3,2,3)
Barry <- data.frame(Barry,estimate.siblings)
#6 Make a column with numbers showing how much your estimate were off
off.siblings <- c(1,1,3,2,0,0)
Barry <- data.frame(Barry,off.siblings)
#7 Comment your code



#Generate random binary reaearch (here heads and tails)
flips <- sample(options,size = N, prob = c(probability, 1-probability),replace = TRUE)
options <- c(0,1)
probability <- 0.5
N <- 100
hist(flips)
#Replicate the research (Chapter 1 lecture)
hist(replicate(1000, sum(runif(N,0,1))), breaks = 100)


## NOW LET'S DEMONSTRATE THE LAW OF LARGE NUMBERS
## First, let's simulate flipping a coin 10,000 times
## (with replacement)
x <- sample(0:1, 10000, repl=T)
x
## Then let's take the CUMULATIVE sum of probabilities:
## for each incremental step (each individual flip), how does
## the probability of getting, e.g., head changes?
s <- cumsum(x)
r <- s/(1:length(s))
r
## Let's plot this to see how the observed probability
## approaches the theoretical probability over time!
plot(r, ylim=c(0,1), type="l",
     xlab = "Flips", ylab = "Cumulative probability")
lines(c(0,length(s)), c(.50,.50),col="red")
#________ didn't work