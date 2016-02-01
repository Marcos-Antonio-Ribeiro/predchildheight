install.packages("shiny")
library(shiny)

install.packages("manipulate")
library(manipulate)

install.packages("rCharts")
library(rCharts)

path <- setwd("C:/Coursera/Git/courses/09_DevelopingDataProducts/Project/PredictChildHeight")

setwd("C:/Coursera/Git/courses/09_DevelopingDataProducts/Project/PredictChildHeight")

install.packages("devtools")
library(devtools)
devtools::install_github("rstudio/shinyapps")

shinyapps::setAccountInfo(name='mribeiro30',
			  token='2F1FE35F3CE703EC67EEDBFEABC4B006',
			  secret='k3OPfc0ORIw4S1UcTIfzb3/rtWcBd1zqxEu0lnW8')
library(shiny)
library(shinyapps)
shinyapps::deployApp(path)

runApp(display.mode='showcase')

