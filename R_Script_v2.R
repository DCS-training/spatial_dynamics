# Install packages
install.packages("sf")
install.packages("spatstat")
library(sf)
library(spatstat)

# Read the shapefile from the QGIS file
Trees.sf <- st_read("gis_data_v2/Trees/PrunusSerrula.shp")

# Assuming trees.sf is a data frame
Trees.sf <- na.omit(Trees.sf)

# Convert file to a point pattern
Trees.ppp <- as.ppp(Trees.sf)

# Confirm bike_theft is now a ppp data (not necessary)
Trees.ppp

# Load in boundary for spatial analysis
boundary <- st_read("gis_data_v2/Edinburgh_Ward_Boundaries/Edinburgh_Council_Boundary.shp")
boundary.geom = st_geometry(boundary)

# Set boundary as window for Ripley's K analysis
boundary.win = as.owin(boundary.geom)

# Ripley's K 
k = Kest(Trees.ppp, window = boundary.win)
plot(k, main = "Ripley's K Function")

# Ripley's K - envelope
KTrees = envelope(Trees.ppp, fun = Kest, window = boundary.win)
plot(KTrees)


