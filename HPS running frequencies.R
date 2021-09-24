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




