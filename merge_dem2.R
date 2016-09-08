library (raster)
install.packages ("raster")
install.packages ("rgdal")
install.packages ("sp")

library (raster)
library (sp)
library (rgdal)

setwd("G:/merge_dem")
DEM <- raster("DEM_in.tif")
DEM2 <- raster("DEM_out_pr.tif")

test_dem <- merge (DEM,DEM2, filename="DEM_m.tif", overlap=FALSE, ext=NULL, tolerance=1)

test_dem2 <- merge (DEM,DEM2, filename="DEM_m2.tif", tolerance=0.5)   #this work better

test_dem3 <- merge (DEM,DEM2, filename="DEM_m3.tif", overlap=FALSE, ext=NULL, tolerance=0.25)
