install.packages("tm")
install.packages("pdftools") 
library(tm)
library(pdftools)
library(tidyverse)


ruta<-"http://sirisayacucho.pe/wp-content/uploads/COVID19/SDSS_Covid19_03-05-2021_I.pdf"
PDF<- pdf_text("http://sirisayacucho.pe/wp-content/uploads/COVID19/SDSS_Covid19_03-05-2021_I.pdf")
PDF.grass <-PDF[-c(1:3,6:8,20:35)]
PDF.grass
all_stat_lines <- PDF.grass[3:13] %>%
  str_squish() %>%
  strsplit(split = " ")
var_lines<-c("Distrito","Casos")
var_lines

all_stat_lines[[2]]
df <- plyr::ldply(all_stat_lines[[2]])
