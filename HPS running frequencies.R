library(janitor)
library(skimr)
library(vtree)
library(CGPfunctions)
library(plyr)

count(wk_36, 'Telehealth_Cat')


#import the data and look at it
wk_36 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_36.csv")
View(wk_36)
head(wk_36)
colnames(wk_36)

# let's look at some frequencies, shall we?
# information found here https://www.r-bloggers.com/2015/02/how-to-get-the-frequency-table-of-a-categorical-variable-as-a-data-frame-in-r/

count(wk_36, 'Telehealth_Cat')

wk_35 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_35.csv")
count(wk_35, 'Telehealth_Cat')

wk_34 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_34.csv")
count(wk_34, 'Telehealth_Cat')

wk_28 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_28.csv")
count(wk_28, 'Telehealth_Cat')

wk_33 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_33 yes and nos.csv")
count(wk_33, 'Telehealth_Cat')


wk_32 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_32.csv")
count(wk_32, 'Telehealth_Cat')

wk_31 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_31.csv")
count(wk_31, 'Telehealth_Cat')

wk_30 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_30.csv")
count(wk_30, 'Telehealth_Cat')

wk_29 <- read.csv("C:/Users/hp/Desktop/Coursera course/Household Pulse Survey/wk_29.csv")
count(wk_29, 'Telehealth_Cat')

