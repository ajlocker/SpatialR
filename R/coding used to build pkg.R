library(devtools)
library(roxygen2)
library(usethis)
usethis::use_package("tmap")
usethis::use_package("leaflet")
usethis::use_package("rgdal")
usethis::use_package("rgeos")
usethis::use_package("sp")
usethis::use_package("raster")
usethis::use_package("adehabitatHR")
usethis::use_package("devtools")
usethis::use_package("rayshader")

usethis::use_package_doc()

devtools::document()

devtools::build()

devtools::load_all()

devtools::check()

usethis::use_vignette("vignette", title = "Spatial Analysis in R")

devtools::build_vignettes()

https://github.com/ajlocker/SpatialR.git

git remote add origin https://github.com/ajlocker/SpatialR.git
git push -u origin master

