## code to prepare `SitioArqueologico` dataset goes here

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

usethis::use_data("SitioArqueologico")
