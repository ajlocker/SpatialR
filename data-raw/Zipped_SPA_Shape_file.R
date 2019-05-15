## code to prepare `Zipped_SPA_Shape_file` dataset goes here
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

usethis::use_data("Zipped_SPA_Shape_file")
