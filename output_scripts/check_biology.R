
library(haven)
library(ggplot2)
library(dplyr)

len_dnk <- read_sas("./boot/data/length_including_survey.sas7bdat")
unique(len_dnk$cruise)

len_dnk <- subset(len_dnk,
                  year >= 2016 &
                    tripType %in% c("HVN", "SØS") &
                    speciesCode == "BRS")
unique(len_dnk$cruise)

names(len_dnk)

dnk_mean <- summarise(group_by(len_dnk, cruise,  sampleId, date), mean_len = sum(length*number)/sum(number))

ggplot(dnk_mean, aes(x = date, y = mean_len, col = cruise)) + geom_point() 

len_dnk <- read_sas("./boot/data/length_including_survey.sas7bdat")
unique(len_dnk$cruise)

len_dnk <- subset(len_dnk,
                  year %in% c(2003, 2004, 2005) &
                    tripType %in% c("HVN", "SØS") &
                    speciesCode == "BRS")
unique(len_dnk$cruise)

names(len_dnk)

dnk_mean <- summarise(group_by(len_dnk, cruise,  sampleId, date), mean_len = sum(length*number)/sum(number))

ggplot(dnk_mean, aes(x = date, y = mean_len, col = cruise)) + geom_point() 

len_dnk <- read_sas("./boot/data/length_including_survey.sas7bdat")
unique(len_dnk$cruise)

len_dnk <- subset(len_dnk,
                  year >= 2016 &
                    tripType %in% c("VID") &
                    speciesCode == "BRS")
unique(len_dnk$cruise)

names(len_dnk)

dnk_mean <- summarise(group_by(len_dnk, cruise,  sampleId, date), mean_len = sum(length*number)/sum(number))

ggplot(dnk_mean, aes(x = date, y = mean_len, col = cruise)) + geom_point() 

