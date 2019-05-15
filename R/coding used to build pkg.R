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

usethis::use_data_raw("DEPARTAMENTO")
usethis::use_data_raw("SitioArqueologico")
usethis::use_data_raw("Zipped_SPA_Shape_file")
usethis::use_data_raw("demTIN")
usethis::use_data_raw("hsTIN")

devtools::build_vignettes()


