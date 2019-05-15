## code to prepare `hsTIN` dataset goes here

if(!file.exists("data-raw/hsTIN.tif")){
  base_path <- "data-raw"
  download.file("https://github.com/ajlocker/SpatialR/blob/master/data-raw/hsTIN.tif", paste0(base_path, ".tif"))
}

hsTIN <- raster("data-raw/hsTIN.tif")
usethis::use_data("hsTIN")
