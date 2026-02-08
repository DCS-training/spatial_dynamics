# Spatial dynamics with QGIS and R
This is an advanced course focusing on analysing the first and second-order relationship between observations geospatially. The course will introduce analysis techniques utilising both R studio and QGIS. The session will last appropriately 2 hours covering the following headings,

- Introduction to Point Pattern Analysis
- Density-based vs distance-based analysis (relationship with 1st order and 2nd order dynamics)
- Kernel Density Estimation (KDE)
- Nearest Neighbour Analysis (NNA)
- Ripley’s K-Function

To access the course materials, please download all folders and files from the repository. 

# What you are going to find in this repo
-  .ppt presentations used during the course
-  example code (R_Script_v2)
-  gis file (project_v2.qgz)
-  shapefile (Boundary for determining the extent of analysis)
-  shapefile (bike_theft_2023 for performing the analysis)

The csv and the gis_data folder are exercise files that you will need for the exercise. Project.qgz is the file for performing KDE and NNA. To read the shapefiles in Project.qgz, please unzip the zipped folder and keep the name as gis_data, which is the name of the reference folder path in Project.qgz. The SpatialDynamics R file contains the codes for performing Ripley's K-Function. The powerpoint has a summary of the presentation in class and contains descriptions for the fundamentals regarding point pattern analysis and their applications. We hope you will find the course useful.

# Installations
## R and RStudio 
### For R On Noteable

1. Go to [https://noteable.edina.ac.uk/login](https://noteable.edina.ac.uk/login)
2. Login with your EASE credentials
3. Select RStudio as a personal notebook server and press start
4. Go to File > New Project> Version Control > Git
5. Copy and Paste this repository URL [https://github.com/DCS-training/spatial_dynamics](https://github.com/DCS-training/spatial_dynamics) as the Repository URL (The Project directory name will be filled in automatically but you can change it if you want your folder in Notable to have a different name).
6. Decide where to locate the folder. By default, it will locate it in your home directory
7. Press Create Project
Congratulations you have now pulled the content of the repository on your Notable server space.

### Install it locally

#### If you have administrative rights of your laptop 
1. Go to [https://www.r-project.org/](https://www.r-project.org/)
2. Go to the download link
3. Choose your CRAN mirror nearer to your location (either Bristol or Imperial College London)
4. Download the correspondent version depending if you are using Windows Mac or Linux
- For Windows click on install R for the first time. Then download R for Windows and follow the installation widget. If you get stuck follow this [video tutorial](https://www.youtube.com/watch?v=GAGUDL-4aVw)
- For Mac Download the most recent pkg file and follow the installation widget. If you get stuck follow this [video tutorial](https://www.youtube.com/watch?v=EmZqlcKkJMM)
5. Once R is installed you can install R studio (R interface)
6. Go to [www.rstudio.com](www.rstudio.com)
7. Go in download
8. Download the correspondent version depending on your Operating system and install it. If you get stuck check the videos linked above. 

#### If you have a UoE managed desktop
1. Go to the software centre (press the up arrow on the bottom bar of Windows and double-click on the Software Centre app)
2. Search for RStudio in the search bar 
3. Install the R 4.4.1(with RStudio 2024.04.2)
NB this will take quite some time so make sure to do it ahead of the first class

## Q GIS
You will need QGIS installed on your machine (the current Long-Term Release is version 3.10.10 ‘A Coruna’). You can download and install it from [https://qgis.org/](https://qgis.org/).




All material collected here is free to use but is covered by a License: [![License: CC BY-NC 4.0](https://licensebuttons.net/l/by-nc/4.0/80x15.png)](https://creativecommons.org/licenses/by-nc/4.0/) license
