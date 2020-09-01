# QuACK 2020 -
# Week 1 - Intro to R and Programming
# August 25, 2020
# Elena Leib
# Last updated: 8/27/2020 to add more notes

#### Hot keys ####
# To run a line of code in your script in your console, hit:
# PC - ctrl + enter
# Mac - cmd + enter

# You can also highlight a block of code and hit ctrl/cmd + enter to run that block.

# Alternatively, you can hit the "Run" button in RStudio.

#### Check my working directory ####
# Get the current working directory (i.e., where you "are" in your file system)
getwd()

# Set your working directory to the folder where your script is
setwd("C:/Users/14122/Documents/Quack2020")
# ^^ Example from my computer
# If you open RStudio by clicking on your script in your file system, it will
# automatically set your working directory to that location. I recommend doing
# it this way! I always open my scripts from the file folder.


#### Data types ####
## Integers, doubles, and numeric ##
5
-1
0

0.1
0.3

## Characters and strings ##
"c"
"hello"

## Booleans/logical ##
TRUE
FALSE

#### Variables and variable assignment ####
num1 <- 1
num2 <- 0.1
num1 + num2


char1 <- "c"
char2 <- "hello"
char3 <- "1"

char3 + num1
as.integer(char3) + num1
as.character(num2)

#### Vectors ####
# c() standard syntax
# Note: putting () around a line of code runs that code, and also outputs the
# result of running it in the console! I don't normally do this in my code, but
# used this for teaching and showing purposes here.
(x1 <- c(1, 2, 3, 4))
(x0 <- c("Hello", "a", "b", "c", "d"))
xx <- c(1, 2, "a", "4", 5)

# : notation
(x2 <- 5:8)


# rep function 
# To learn more about a function, type ? before the name of the function and
# information will come up in the Help window on the right.
?rep
# Functions are like action commands. You are telling the computer to do a sequence of actions or computations.
# Functions take arguments. The function acts on the arguments and returns something.
# This function returns a vector that is created by repeating the given
# number/character or vector of numbers/characters a certain number of times.
# Both what is to be repeated and how many times to repeat are arguments.

(rep1 <- rep(3, times=5))
(rep2 <- rep(c(3, 4), times=5))
(rep3 <- rep(c("a", "b"), times = 4, each=2))

# seq function
?seq
# This function returns a vector that is a sequence of numbers from a given number to a number, increasing by a given amount. All the 'givens' are the arguments to the function.
(seq1 <- seq(from=0, to=1, by=0.1))

# Adding onto vectors: concatenating
(x3 <- c(x1, x2))
length(x3)
(x4 <- c(x3, "a"))

## Indexing vectors ##
# Each element in a vector has a position/location designated by a number, called an index.
#        1     2      3       4      5
(s <- c("Hi", "my", "name", "is", "Elena"))
s[1]
s[3]
# Can also index by giving a vector of the indices that you want
s[1:2]
s[3:5] # --> s[c(3, 4, 5)]
s[c(1, 3, 5)]
x0 <- 200:300
x0[seq(1, 100, 5)]

## R is vectorized ##
# This means that it is built to work with vectors.
# It is very friendly with vectors! Can deal with the whole vector at one time.

x1 + x2
x1 + 5
x1 * 4
sum(x1)
mean(x1)
sd(x1)

#### Data frames ####
# Create vectors of the data we want in each column of the data frame
(subjid <- 1:5)
(age <- c(10, 15, 12, 11, 13))
(gender <- c("m", "m", "f", "other", "f"))
(bilingual <- rep(c(0,1), length.out = 5))

# Create the data frame
df <- data.frame(subjid, age, gender, bilingual)

# We can check out our data using different functions
# Structure of the data frame
str(df)
# The length tells you the number of columns. So does ncol()
length(df)
ncol(df)
# Get the number of rows
nrow(df)

# You can check that this information matches with the information in the top
# panel on the right in the global environment when you expand the df
# information.
# Note that in data frame lingo, obs. (i.e., observations) means rows and
# variables means columns. Data frames in R are specified by row x col.

## Indexing data frames with bracket notation ##
# row x col
df[2,3]
df[5,1]
df[3,]
df[,3]

## Accessing columns ##
df[, 2]
df[, "age"]
df$age

# You can selectively edit/change/add columns
# df[5,1] <- # add what you want to change it to here
# df$newCol <- 1
df$newCol1 <- 1
df$newCol2 <- 6:10
dfx$newCol3 <- subjid + 5
df$three <- 3

# Note that each column is a vector!
subject <- df$subjid
# ^^ vector of integers

#### Lists ####
# Lists are like vectors but they can hold mixed types of data
l <- list("a", 1, TRUE)

# While columns of data frames are vectors, rows are lists
row1 <- df[1,]
typeof(row1)

# They are indexed slightly differently
l[1]
l[[1]]

