## EXPERIMENTAL METHODS 1, LECTURE 2
## BSC IN COGNITIVE SCIENCE, AU 2019

## LET'S SIMULATE A NORMAL DISTRIBUTION!
## For instance, let's simulate collecting data about height
## from 10 people. These people come from a population whose mean
## height is 170 cm, with a standard deviation of 3
hist(rnorm(n = 10, m = 170, sd = 3), breaks = 100)
## As you can see, the distribution doesn't look very normal, but
## is rather quite randomly distributed. Let's try again, this time
## simulating 50 participants:
hist(rnorm(n = 50, m = 170, sd = 3), breaks = 100)
## Still not much going on. But as we increas the N of participants we start
## seeing something that approaches normality
hist(rnorm(n = 100, m = 170, sd = 3), breaks = 100)
hist(rnorm(n = 1000, m = 170, sd = 3), breaks = 100)
## With 10,000 participants, the distribution is now almost
## perfectly normal!
hist(rnorm(n = 10000, m = 170, sd = 3), breaks = 100)


## NOW LET'S LOOK AT HOW A NORMAL PROBABILITY DISTRIBUTION CAN EMERGE
## FROM EVENTS WHOSE UNDERLYING DISTRIBUTION IS NOT NORMAL, E.G. COIN FLIPS
## (WHICH FOLLOW A BERNOULLI DISTRIBUTION)
## First we define which outcomes are possible (1 = heads, 0 = tails)
sample.space <- c(0,1)
## Theta is the probability of each value (since this is a fair coin,
## the probability is 50/50, that is, 0.5)
theta <- 0.5
## This is the N of times we flip the coin
N <- 100
## Here we simulate the flipping by randomly extracting N values
## from our sample space
flips <- sample(sample.space, 
                size = N, 
                replace = TRUE, 
                prob = c(theta, 1 - theta))
flips
## Let's plot the results
hist(flips, breaks = 100)
## Turn everything into a proportion
sum(flips)/length(flips)
## Let's quickly replicate this experiment many times
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
