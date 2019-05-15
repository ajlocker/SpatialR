## code to prepare `DEPARTAMENTO` dataset goes here

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

usethis::use_data("DEPARTAMENTO")
