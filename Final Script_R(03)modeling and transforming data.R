#Ans1
install.packages ("readr")
library('readr')
install.packages("readxl")
library(readxl)
#Ans2.
data()
("mtcars")
class(mtcars)
#Ans3.
head(mtcars)
tail(mtcars)
summary(mtcars)
#Ans4.
readr_example("example.log")
read_log("/Library/Frameworks/R.framework/Versions/4.2/Resources/library/readr/extdata/example.log") 
#Ans5.
readxl_example() 
readxl_example("datasets.xlsx")
#Ans6.
read_excel("/Library/Frameworks/R.framework/Versions/4.2/Resources/library/readxl/extdata/datasets.xlsx")
#Ans7. 
install.packages("Stat2Data")
library(dplyr)
library(xtable)
data("Fertility") 
#Ans8.
#Select rows 35 to 50 and print to console its age and work entry.
data("Fertility")
setDT(Fertility)
Fertility[35:50, .(age, work)]
#Ans.9
#Select the last row in the dataset and print to console.
Fertility[.N]
#Ans10.
#Count how many women proceeded to have a third child.
Fertility[morekids == "yes", .N]
#Ans11
#There are four possible gender combinations for the first two children. Which is the most common?
Fertility[, .N, by = .(gender1, gender2)]

save.image("R1.RData")
savehistory("R.Rhistory")
