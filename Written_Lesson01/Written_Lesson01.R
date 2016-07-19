##install.packages("shiny") ##installs shiny

setwd("E:/Documents/Projects/ShinyTutorial")

library(shiny) ##adds shiny package

##runExample("01_hello") ##11 examples available

##apps comprise of two files
##ui.r and server.R
##save in a folder (e.g. App-1) and can then call App

#my own changes
##runApp("Written_Lesson01/App-1") 

#shows the code alongside app
##runApp("Written_Lesson01/App-1", display.mode = "showcase") 

##below are all the examples
##as they are default to showcase
##you can see all the code with them when run

##runExample("01_hello") # a histogram
##runExample("02_text") # tables and data frames
##runExample("03_reactivity") # a reactive expression
##runExample("04_mpg") # global variables
##runExample("05_sliders") # slider bars
##runExample("06_tabsets") # tabbed panels
##runExample("07_widgets") # help text and submit buttons
##runExample("08_html") # Shiny app built from HTML
##runExample("09_upload") # file upload wizard
##runExample("10_download") # file download wizard
runExample("11_timer") # an automated timer
