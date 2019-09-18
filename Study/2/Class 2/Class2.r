?read.table()

PTD <- read.table("PTD.txt", header = TRUE, sep = ",")

library(pacman)

pacman::p_load(tidyverse, data.table, lme4)

#shoesize - don't have to use data.frame
SS40 <- data.frame(filter(PTD, shoesize==40))

#touch hands
TH <- filter(PTD, touch_hands=="Yes, of course!!")

THy <- filter(PTD, touch_hands=="Yes, of course!!"&"Yes")

#Exercise 1

SS_B39 <- filter(PTD, shoesize>=39)

levels(PTD$touch_floor)

TF <- filter(PTD, touch_floor =="Yes, of course!!" | touch_floor =="Yes")

HB<- filter(PTD, breath_hold>mean(breath_hold))

mean(PTD$breath_hold)

BB<- filter(PTD, balloon_balance > 13 & balloon_balance < 60)

#all of the above!

AOA <- filter(PTD, shoesize>=39 & (touch_floor =="Yes, of course!!" | touch_floor =="Yes") & breath_hold>mean(breath_hold) & (balloon_balance > 13 & balloon_balance < 60))

#Exercise 2

#Sort data so it starts with the student who was the slowest at tongue twister

SlowToung <- arrange(PTD, tongue_twist)

#Sort data by one argument to find the student who performed best in the Romberg task. You define ”best”.

Romberg <- arrange(PTD, desc(romberg_closed))

#better Romberg arrangement

RombergBetter <- arrange(PTD,desc(romberg_open), desc(romberg_closed))

#Exercise 3

#What happens if you select the same column name multiple times?

NN<- select(PTD, name, name)
#it just picks the category twice... so nothing really

#Make the following vector:

vars = c(“name”, “shoesize”,“touch_floor”)

vars <- c("name", "shoesize","touch_floor")

VSec<- select(PTD, vars)

#Rearrange your dataframe with gender and shoesize first. Hint: use everything()

?everything()

Romberg <- arrange(PTD, desc(romberg_closed))

test <- select(PTD, name:gender)

RAPTD <- select(PTD, gender, shoesize, everything(PTD))

#everything just picks everything that is not already picked

RAPTDnotX <- select(PTD, gender, shoesize, everything(PTD),-c(X))

#^det' fucking lækkert







