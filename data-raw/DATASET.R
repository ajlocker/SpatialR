## code to prepare `DATASET` dataset goes here

Zipped_SPA_Shape_file <- system.file("extdata", "Zipped_SPA_Shape_file.shp", package = "SpatialR")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + system.file("extdata", "Zipped_SPA_Shape_file.dbf", package = "SpatialR")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + system.file("extdata", "Zipped_SPA_Shape_file.prj", package = "SpatialR")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + system.file("extdata", "Zipped_SPA_Shape_file.shp", package = "SpatialR")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + system.file("extdata", "Zipped_SPA_Shape_file.shx", package = "SpatialR")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + system.file("extdata", "Zipped_SPA_Shape_file.xml", package = "SpatialR")
Zipped_SPA_Shape_file <- Zipped_SPA_Shape_file + system.file("extdata", "data1964al.xy", package = "SpatialR")

DEPARTAMENTO <- system.file("extdata", "DEPARTAMENTO.shp", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)
DEPARTAMENTO <- DEPARTAMENTO + system.file("extdata", "DEPARTAMENTO.cpg", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)
DEPARTAMENTO <- DEPARTAMENTO + system.file("extdata", "DEPARTAMENTO.dbf", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)
DEPARTAMENTO <- DEPARTAMENTO + system.file("extdata", "DEPARTAMENTO.prj", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)
DEPARTAMENTO <- DEPARTAMENTO + system.file("extdata", "DEPARTAMENTO.sbn", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)
DEPARTAMENTO <- DEPARTAMENTO + system.file("extdata", "DEPARTAMENTO.sbx", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)
DEPARTAMENTO <- DEPARTAMENTO + system.file("extdata", "DEPARTAMENTO.shp.xml", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)
DEPARTAMENTO <- DEPARTAMENTO + system.file("extdata", "DEPARTAMENTO.shx", package = "SpatialR", lib.loc = NULL, mustWork = TRUE)

SitioArqueologico <- system.file("extdata", "SitioArqueologico.shp", package = "SpatialR")
SitioArqueologico <- SitioArqueologico + system.file("extdata", "SitioArqueologico.dbf", package = "SpatialR")
SitioArqueologico <- SitioArqueologico + system.file("extdata", "SitioArqueologico.prj", package = "SpatialR")
SitioArqueologico <- SitioArqueologico + system.file("extdata", "SitioArqueologico.sbn", package = "SpatialR")
SitioArqueologico <- SitioArqueologico + system.file("extdata", "SitioArqueologico.sbx", package = "SpatialR")
SitioArqueologico <- SitioArqueologico + system.file("extdata", "SitioArqueologico.shp.xml", package = "SpatialR")
SitioArqueologico <- SitioArqueologico + system.file("extdata", "SitioArqueologico.shx", package = "SpatialR")


demTIN <- system.file("extdata", "demTIN.tif", package = "SpatialR")


hsTIN <- system.file("extdata", "hsTIN.tif", package = "SpatialR")

usethis::use_data("Zipped_SPA_Shape_file")
usethis::use_data("DEPARTAMENTO")
usethis::use_data("SitioArqueologico")
usethis::use_data("demTIN")
usethis::use_data("hsTIN")





