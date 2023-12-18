
library(icesSharePoint)

file <- spfiles(directory = "Advice_Drafting_Group Documents", "/Advice/Advice2024/ADGD3C3", full = TRUE)


spgetfile(file, "/Advice/Advice2024/ADGD3C3", destdir = ".")
