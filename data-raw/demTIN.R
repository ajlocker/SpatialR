## code to prepare `demTIN` dataset goes here

usethis::use_data("demTIN")

if(!file.exists("data-raw/demTIN.tif")){
  base_path <- "data-raw"
  download.file("https://github.com/ajlocker/SpatialR/blob/master/data-raw/demTIN.tif", paste0(base_path, ".tif"))
}

demTIN <- raster("data-raw/demTIN.tif")
