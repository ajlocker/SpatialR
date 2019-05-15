## code to prepare `DATASET` dataset goes here
library(readr)
library(dplyr)
library(readxl)


local <- "data-raw/Zipped_SPA_Shape_file.shp"
if(!file.exists(local)){
  download.file("https://github.com/ajlocker/SpatialR/blob/master/data-raw/Zipped_SPA_Shape_file.shp", local)
}
Zipped_SPA_Shape_file <- ("C:/Users/ajlocker/Desktop/R Geospatial/Arizona/Zipped_SPA_Shape_file.shp")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + ("C:/Users/ajlocker/Desktop/R Geospatial/Arizona/Zipped_SPA_Shape_file.dbf")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + ("C:/Users/ajlocker/Desktop/R Geospatial/Arizona/Zipped_SPA_Shape_file.prj")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + ("C:/Users/ajlocker/Desktop/R Geospatial/Arizona/Zipped_SPA_Shape_file.shp")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + ("C:/Users/ajlocker/Desktop/R Geospatial/Arizona/Zipped_SPA_Shape_file.shx")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + ("C:/Users/ajlocker/Desktop/R Geospatial/Arizona/Zipped_SPA_Shape_file.xml")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + ("C:/Users/ajlocker/Desktop/R Geospatial/Arizona/data1964al.xy")

DEPARTAMENTO <- ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.shp")
DEPARTAMENTO <- DEPARTAMENTO + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.cpg")
DEPARTAMENTO <- DEPARTAMENTO + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.dbf")
DEPARTAMENTO <- DEPARTAMENTO + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.prj")
DEPARTAMENTO <- DEPARTAMENTO + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.sbn")
DEPARTAMENTO <- DEPARTAMENTO + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.sbx")
DEPARTAMENTO <- DEPARTAMENTO + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.shp.xml")
DEPARTAMENTO <- DEPARTAMENTO + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/DEPARTAMENTO.shx")

SitioArqueologico <- ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/SitioArqueologico.shp")
SitioArqueologico <- SitioArqueologico + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/SitioArqueologico.dbf")
SitioArqueologico <- SitioArqueologico + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/SitioArqueologico.prj")
SitioArqueologico <- SitioArqueologico + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/SitioArqueologico.sbn")
SitioArqueologico <- SitioArqueologico + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/SitioArqueologico.sbx")
SitioArqueologico <- SitioArqueologico + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/SitioArqueologico.shp.xml")
SitioArqueologico <- SitioArqueologico + ("C:/Users/ajlocker/Desktop/R Geospatial/Peru/SitioArqueologico.shx")

demTIN <- ("C:/Users/ajlocker/Desktop/R Geospatial/ATX/demTIN.tif")

hsTIN <- ("C:/Users/ajlocker/Desktop/R Geospatial/ATX/hsTIN.tif")

usethis::use_data("Zipped_SPA_Shape_file")
usethis::use_data("DEPARTAMENTO")
usethis::use_data("SitioArqueologico")
usethis::use_data("demTIN")
usethis::use_data("hsTIN")





