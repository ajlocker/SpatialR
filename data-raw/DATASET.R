## code to prepare `DATASET` dataset goes here
library(tmap)
library(leaflet)
library(rgdal)
library(rgeos)
library(sp)
library(raster)
library(adehabitatHR)
library(devtools)
library(rayshader)

if(!file.exists("data-raw/Zipped_SPA_Shape_file.shp")){
  base_path <- "data-raw"
  download.file("http://hub.arcgis.com/datasets/Surprise::zipped-spa-shape-file/data?geometry=-120.323,32.161,-104.645,35.357", paste0(base_path, ".zip"))
  if(!dir.exists(base_path)) dir.create(base_path)
  unzip(paste0(base_path, ".zip"),
        files = paste0("Zipped_SPA_Shape_file",
                       c(".cpg", ".dbf", ".prj", ".sbn", ".sbx", ".shp", ".shp.xml", ".shx")),
        exdir = base_path)
  file.remove(paste0(base_path, ".zip"))
}

Zipped_SPA_Shape_file <- readOGR(".", "Zipped_SPA_Shape_file")

if(!file.exists("data-raw/DEPARTAMENTO.shp")){
  base_path <- "data-raw"
  download.file("https://drive.google.com/file/d/1CbuS7eVsc1U4x6Jz9VpOx8UG6xP7XEpd/view", paste0(base_path, ".zip"))
  if(!dir.exists(base_path)) dir.create(base_path)
  unzip(paste0(base_path, ".zip"),
        files = paste0("DEPARTAMENTO",
                       c(".cpg", ".dbf", ".prj", ".sbn", ".sbx", ".shp", ".shp.xml", ".shx")),
        exdir = base_path)
  file.remove(paste0(base_path, ".zip"))
}

DEPARTAMENTO <- readOGR(".", "DEPARTAMENTO")

if(!file.exists("data-raw/SitiosArqueologicos.shp")){
  base_path <- "data-raw"
  download.file("https://drive.google.com/file/d/0B2LXWd-oFIpfRzE4WEQtdHdRbVE/view", paste0(base_path, ".zip"))
  if(!dir.exists(base_path)) dir.create(base_path)
  unzip(paste0(base_path, ".zip"),
        files = paste0("SitiosArqueologicos",
                       c(".cpg", ".dbf", ".prj", ".sbn", ".sbx", ".shp", ".shp.xml", ".shx")),
        exdir = base_path)
  file.remove(paste0(base_path, ".zip"))
}

SitiosArqueologicos <- readOGR(".", "SitiosArqueologicos")


if(!file.exists("data-raw/demTIN.tif")){
  base_path <- "data-raw"
  download.file("https://github.com/ajlocker/SpatialR/blob/master/data-raw/demTIN.tif", paste0(base_path, ".tif"))
}

if(!file.exists("data-raw/hsTIN.tif")){
  base_path <- "data-raw"
  download.file("https://github.com/ajlocker/SpatialR/blob/master/data-raw/hsTIN.tif", paste0(base_path, ".tif"))
}

demTIN <- raster("data-raw/demTIN.tif")

hsTIN <- raster("data-raw/hsTIN.tif")






