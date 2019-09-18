
box <- 9
box2<-"car"
boxes <- c(2,3,4)
boxes+3
boxes

class(box2)
boxes <- NULL
rm(boxes)
#several variables in a list is called a vector
a_vector <- c("Soeren","Verus","Anne-Line","Esben")
# what is in the variable? Is it numeric or character(string)
class(boxes)
# How long is the list of variables?
length(a_vector)
#Add a entity to the variable
a_vector <- c(a_vector, "Anita")
a_vector
a_vector[2]
#New variable without strings from a older variable
new_vector <- a_vector[-5:-6]
new_vector

#Vector - Collect the studygroups names
new_vector <- a_vector[-1:-2]
new_vector <- a_vector[1:4]
Studygroup <- new_vector
Studygroup <- c(Studygroup, "Lærke")
Studygroup
#The Studygroups Siblings
StudygroupSiblings <- c(3,3,2,1,2)
#Add 2 to both variables, what happends and why? - the nurmeric get added 2 each on the list of variables, 
# and the charachters can't be added 2
StudygroupSiblings+2
Studygroup+2
#Class - is if it's nurmeric or charachters
class(StudygroupSiblings)
class(Studygroup)
#Sum of siblings in the studygroup == 11
sum(StudygroupSiblings)
#Product of person 1 and 2's number of siblings
StudygroupSiblings[1]*StudygroupSiblings[2]
#Add a element - a word- to the vector with the number of siblings -> this makes classifies 
#the whole vector as a string variable ("" around numbers aswell, R sees at as strings)
StudygroupSiblings <- c(StudygroupSiblings,"element")
class(StudygroupSiblings)
StudygroupSiblings
StudygroupSiblings+2 - #ain't gonna happend, the only word that wouldn't influence a numeric variable is NA
#Reomove the new element again
StudygroupSiblings <- -c("element")
StudygroupSiblings <- StudygroupSiblings[-6]

                       #Dataframe
barry <- data.frame(barries = Studygroup,barriesplus = StudygroupSiblings)
View(barry)

barry$barries <- as.character(barry$barries)
barry$barriesplus <- as.numeric(barry$barriesplus)

rbind(barry,c("Kor",4))
barry <- rbind(barry,c("Kor",4))

#Making a dataframe 
df <- data.frame(row.name = vector.name, row2.name = vector.name2, etc..)

# Creating coding variables/factors
#1. variable for spread grouping
variable.name<-c(1,1,1,1,1,2,2,2,2,2)

#2. converting into a factor
#   factor(variable, levels = c(x,y, ... z), labels = c("label1", "label2", ... "label3"))

#1. 2nd edition for grouped data files variable
variable.name<-c(rep(1, 5),rep(2, 5))

#1. 2nd edition for grouped data files factor
#   newFactor<-gl(number of levels, cases in each level, total cases, labels = c("label1", "label2"...))


#Catheriogize numeric, factor or charachter
df$row.name <- as.numeric(df$row.name)
df$row.name <- as.character(df$row.name)
df$row.name <- as.factor(df$row.name)

#Add a row - in the same________
df <- rbind(df,c(something, something2))
df <- rbind(df,c(row.name = something, row.name2 = something2, ....))

#Add a column____________


#Get access to column, row or specific index
df[row.index,columnindex]

# See the whole column 
#---   x["column.name"] or x$Name


#Change the order of a variable
variableName<-factor(variableName, levels = levels(variableName)[c(wanted.order,1,2,3)])
example
job <- c("Nurse","Doctor","Hairdresser")
job<-factor(job, levels = levels(job)[c(2, 1, 3)])