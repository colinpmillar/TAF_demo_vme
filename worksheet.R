
library(icesTAF)

taf.skeleton()

# get data
data(trees)
write.taf(trees, dir = "boot/initial/data")

write.taf(trees, file = "trees2.csv", dir = "boot/initial/data")

write.taf(trees, file = "trees3.csv", dir = "boot/initial/data")


draft.data(
  data.files = "trees.csv",
  data.scripts = NULL,
  originator = "Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.",
  title = "Diameter, Height and Volume for Black Cherry Trees",
  file = TRUE,
  append = FALSE # create a new DATA.bib
)

draft.data(
  data.files = "trees2.csv",
  data.scripts = NULL,
  originator = "Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.",
  title = "Diameter, Height and Volume for Black Cherry Trees",
  file = TRUE,
  append = TRUE # create a new DATA.bib
)


# fake a collection of data files
mkdir("boot/initial/data/collection")
cp("boot/initial/data/*.csv", "boot/initial/data/collection")

# add to DATA.bib
draft.data(
  data.files = "collection",
  data.scripts = NULL,
  originator = "WGNSSK",
  title = "Intercatch data",
  file = TRUE,
  append = TRUE # create a new DATA.bib
)


# sea surface temparatures
draft.data(
  data.files = "HadSST.4.0.1.0_median.nc",
  data.scripts = NULL,
  originator = "UK MET office",
  title = "Met Office Hadley Centre observations datasets",
  year = 2022,
  source = "https://www.metoffice.gov.uk/hadobs/hadsst4/data/netcdf/HadSST.4.0.1.0_median.nc",
  file = TRUE,
  append = TRUE
)


draft.data(
  data.files = NULL,
  data.scripts = "test",
  originator = "colin",
  title = "test script",
  file = TRUE,
  append = TRUE
)

draft.data(
  data.files = NULL,
  data.scripts = "sharepoint.R",
  originator = "colin",
  title = "test script",
  file = TRUE,
  append = TRUE
)


draft.data(
  data.files = NULL,
  data.scripts = "ospar-areas.R",
  originator = "OSPAR",
  title = "OSPAR areas",
  file = TRUE,
  append = TRUE
)


draft.data(
  data.files = NULL,
  data.scripts = "ices_lookups.R",
  originator = "ICES",
  title = "Stock list from ICES Stock information database, and Stock list from ICES standard Graphs database",
  file = TRUE,
  append = TRUE
)


taf.boot()
