
library(icesSAG)
library(icesSD)
library(icesVMS)

sd <- getSD(year = 2023)
sag <- getListStocks(2023)
benthis <- get_benthis_parameters()

write.taf(c("sd", "sag", "benthis"), quote = TRUE)
