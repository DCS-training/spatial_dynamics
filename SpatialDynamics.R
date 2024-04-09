# Install packages
install.packages("sf")
install.packages("spatstat")
library(sf)
library(spatstat)

# Read the shapefile from the QGIS file
bike_theft.sf <- st_read("C:/Users/ktong/Documents/CDCS_2/gis_data/bike_theft_2023.shp")

# Assuming bike_theft.sf is a data frame
bike_theft.sf <- na.omit(bike_theft.sf)

# Convert file to a point pattern
bike_theft.ppp <- as.ppp(bike_theft.sf)

# Confirm bike_theft is now a ppp data (not necessary)
bike_theft.ppp

# Load in boundary for spatial analysis
boundary <- st_read("C:/Users/ktong/Documents/CDCS_2/gis_data/Boundary.shp")
boundary.geom = st_geometry(boundary)

# Set boundary as window for Ripley's K analysis
boundary.win = as.owin(boundary.geom)

# Ripley's K 
k = Kest(bike_theft.ppp, window = boundary.win)
plot(k, main = "Ripley's K Function")

# Ripley's K - envelope
Kbike_theft = envelope(bike_theft.ppp, fun = Kest, window = boundary.win)
plot(Kbike_theft)

