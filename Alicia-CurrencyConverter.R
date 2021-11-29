install.packages("priceR")
library(priceR)
currencies <- historical_exchange_rates("ZAR","EUR",start_date = "2011-11-28", end_date = "2021-11-28")

install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

ggplot(data = currencies, mapping = aes(x = date, y =one_ZAR_equivalent_to_x_EUR))+ geom_line()

#CURRENCY CONVERTER#

#ZAR TO EUR, VICE VERSA#
multiply <- function(x,y) {
  return(x * y)
}
divide <- function(x,y){
  return(x/y)
}

y <- euro.rate <- 18
print("select operation")
print("1.ZAR to EUR")
print("2.EUR to ZAR")

z <- usd.rate <- 15
print("3.EUR to USD")
print("4.USD to EUR")

w <- huf.rate <- 326
print("5.USD to HUF")
print("6.HUF to USD")


choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6]: "))
x = as.integer(readline(prompt="Enter amount: "))
operator <- switch(choice,"/","*","*","/","/","*")
result <- switch(choice, divide(x, y),multiply(x, y))
print(paste(x, operator, y, "=", result))


#EUR TO USD, VICE VERSA#
multiply <- function(x,z) {
  return(x * z)
}
divide <- function(x,z){
  return(x / z)
}

choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6]: "))
x = as.integer(readline(prompt="Enter amount: "))
operator <- switch(choice,"/","*","*","/","/","*")
result <- switch(choice, divide(x, z),multiply(x, z),multiply(x, z),divide(x, z),divide(x, z),multiply(x, z))
print(paste(x, operator, z, "=", result))


#USD to HUF, vice versa#
multiply <- function(x,w) {
  return(x * w)
}
divide <- function(x,w){
  return(x / w)
}

choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6]: "))
x = as.integer(readline(prompt="Enter amount: "))
operator <- switch(choice,"/","*","*","/","/","*")
result <- switch(choice, divide(x, w),multiply(x, w),multiply(x, w),divide(x, w),divide(x, w),multiply(x, w))
print(paste(x, operator, w, "=", result))
