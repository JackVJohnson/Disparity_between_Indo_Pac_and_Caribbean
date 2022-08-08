library(tidyverse)


monitoring_wd <- "C:/Users/40274182/OneDrive - Queen's University Belfast/PhD/Chapters/Monitoring_data/Working_data_sets/Output"

setwd(monitoring_wd)

Monitoring_df <- read.csv("Summarised_Benthic_Data.csv")

table(Monitoring_df$Latitude_Degrees)
table(Monitoring_df$Longitude_Degrees)

CRW_directory="D:/PhD/CRW"
setwd(CRW_directory)

#####################################
############# Indonesia sites #######

# B3: -5.477778, 123.7625

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(-5.478):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2012.csv")
b3_2012 <- read.csv("b3_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(-5.478):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2013.csv")
b3_2013 <- read.csv("b3_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(-5.478):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2014.csv")
b3_2014 <- read.csv("b3_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(-5.478):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2015.csv")
b3_2015 <- read.csv("b3_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(-5.478):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2016.csv")
b3_2016 <- read.csv("b3_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(-5.478):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2017.csv")
b3_2017 <- read.csv("b3_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(-5.478):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2018.csv")
b3_2018 <- read.csv("b3_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(-5.748):1:(-5.478)%5D%5B(123.763):1:(123.763)%5D", destfile = "D:/PhD/CRW/b3_2019.csv")
b3_2019 <- read.csv("b3_2019.csv")

# KAL: -5.472778,  123.729722

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2012.csv")
kal_2012 <- read.csv("kal_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2013.csv")
kal_2013 <- read.csv("kal_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2014.csv")
kal_2014 <- read.csv("kal_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2015.csv")
kal_2015 <- read.csv("kal_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2016.csv")
kal_2016 <- read.csv("kal_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2017.csv")
kal_2017 <- read.csv("kal_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2018.csv")
kal_2018 <- read.csv("kal_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(-5.473):1:(-5.473)%5D%5B(123.730):1:(123.730)%5D", destfile = "D:/PhD/CRW/kal_2019.csv")
kal_2019 <- read.csv("kal_2019.csv")


# KDS : -5.461944, 123.711389

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2012.csv")
kds_2012 <- read.csv("kds_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2013.csv")
kds_2013 <- read.csv("kds_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2014.csv")
kds_2014 <- read.csv("kds_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2015.csv")
kds_2015 <- read.csv("kds_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2016.csv")
kds_2016 <- read.csv("kds_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2017.csv")
kds_2017 <- read.csv("kds_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2018.csv")
kds_2018 <- read.csv("kds_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(-5.462):1:(-5.462)%5D%5B(123.711):1:(123.711)%5D", destfile = "D:/PhD/CRW/kds_2019.csv")
kds_2019 <- read.csv("kds_2019.csv")

# PK: -5.465833, 123.755

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2012.csv")
pk_2012 <- read.csv("pk_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2013.csv")
pk_2013 <- read.csv("pk_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2014.csv")
pk_2014 <- read.csv("pk_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2015.csv")
pk_2015 <- read.csv("pk_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2016.csv")
pk_2016 <- read.csv("pk_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2017.csv")
pk_2017 <- read.csv("pk_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2018.csv")
pk_2018 <- read.csv("pk_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(-5.466):1:(-5.466)%5D%5B(123.755):1:(123.755)%5D", destfile = "D:/PhD/CRW/pk_2019.csv")
pk_2019 <- read.csv("pk_2019.csv")

# R1: -5.449167, 123.753889

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2012.csv")
r1_2012 <- read.csv("r1_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2013.csv")
r1_2013 <- read.csv("r1_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2014.csv")
r1_2014 <- read.csv("r1_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2015.csv")
r1_2015 <- read.csv("r1_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2016.csv")
r1_2016 <- read.csv("r1_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2017.csv")
r1_2017 <- read.csv("r1_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2018.csv")
r1_2018 <- read.csv("r1_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(-5.449):1:(-5.449)%5D%5B(123.754):1:(123.754)%5D", destfile = "D:/PhD/CRW/r1_2019.csv")
r1_2019 <- read.csv("r1_2019.csv")

# SAM: -5.482917, 123.749167

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2012.csv")
sam_2012 <- read.csv("sam_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2013.csv")
sam_2013 <- read.csv("sam_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2014.csv")
sam_2014 <- read.csv("sam_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2015.csv")
sam_2015 <- read.csv("sam_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2016.csv")
sam_2016 <- read.csv("sam_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2017.csv")
sam_2017 <- read.csv("sam_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2018.csv")
sam_2018 <- read.csv("sam_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(-5.483):1:(-5.483)%5D%5B(123.749):1:(123.749)%5D", destfile = "D:/PhD/CRW/sam_2019.csv")
sam_2019 <- read.csv("sam_2019.csv")


###############################################
################### honduras ##################

# Adrids: 15.86496,  -87.49841


download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2012.csv")
aldrids_2012 <- read.csv("aldrids_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2013.csv")
aldrids_2013 <- read.csv("aldrids_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2014.csv")
aldrids_2014 <- read.csv("aldrids_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2015.csv")
aldrids_2015 <- read.csv("aldrids_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2016.csv")
aldrids_2016 <- read.csv("aldrids_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2017.csv")
aldrids_2017 <- read.csv("aldrids_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2018.csv")
aldrids_2018 <- read.csv("aldrids_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.498):1:(-87.498)%5D", destfile = "D:/PhD/CRW/aldrids_2019.csv")
aldrids_2019 <- read.csv("aldrids_2019.csv")

# Arena: 15.954194, -86.517528

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2012.csv")
arena_2012 <- read.csv("arena_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2013.csv")
arena_2013 <- read.csv("arena_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2014.csv")
arena_2014 <- read.csv("arena_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2015.csv")
arena_2015 <- read.csv("arena_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2016.csv")
arena_2016 <- read.csv("arena_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2017.csv")
arena_2017 <- read.csv("arena_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2018.csv")
arena_2018 <- read.csv("arena_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.954):1:(15.954)%5D%5B(-87.518):1:(-87.518)%5D", destfile = "D:/PhD/CRW/arena_2019.csv")
arena_2019 <- read.csv("arena_2019.csv")

# BCW: 16.08305968, -86.91699554


download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2012.csv")
bcw_2012 <- read.csv("bcw_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2013.csv")
bcw_2013 <- read.csv("bcw_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2014.csv")
bcw_2014 <- read.csv("bcw_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2015.csv")
bcw_2015 <- read.csv("bcw_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2016.csv")
bcw_2016 <- read.csv("bcw_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2017.csv")
bcw_2017 <- read.csv("bcw_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2018.csv")
bcw_2018 <- read.csv("bcw_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(16.083):1:(16.083)%5D%5B(-86.917):1:(-86.917)%5D", destfile = "D:/PhD/CRW/bcw_2019.csv")
bcw_2019 <- read.csv("bcw_2019.csv")
############

# BF: 15.86351, -87.49525

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2012.csv")
bf_2012 <- read.csv("bf_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2013.csv")
bf_2013 <- read.csv("bf_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2014.csv")
bf_2014 <- read.csv("bf_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2015.csv")
bf_2015 <- read.csv("bf_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2016.csv")
bf_2016 <- read.csv("bf_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2017.csv")
bf_2017 <- read.csv("bf_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2018.csv")
bf_2018 <- read.csv("bf_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.495):1:(-87.495)%5D", destfile = "D:/PhD/CRW/bf_2019.csv")
bf_2019 <- read.csv("bf_2019.csv")

# Caynon:  15.86414, -87.50662

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2012.csv")
canyon_2012 <- read.csv("canyon_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2013.csv")
canyon_2013 <- read.csv("canyon_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2014.csv")
canyon_2014 <- read.csv("canyon_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2015.csv")
canyon_2015 <- read.csv("canyon_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2016.csv")
canyon_2016 <- read.csv("canyon_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2017.csv")
canyon_2017 <- read.csv("canyon_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2018.csv")
canyon_2018 <- read.csv("canyon_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.864):1:(15.864)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/canyon_2019.csv")
canyon_2019 <- read.csv("canyon_2019.csv")

# CV: 16.08823274, -86.91094506

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2012.csv")
cv_2012 <- read.csv("cv_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2013.csv")
cv_2013 <- read.csv("cv_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2014.csv")
cv_2014 <- read.csv("cv_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2015.csv")
cv_2015 <- read.csv("cv_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2016.csv")
cv_2016 <- read.csv("cv_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2017.csv")
cv_2017 <- read.csv("cv_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2018.csv")
cv_2018 <- read.csv("cv_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(16.088):1:(16.088)%5D%5B(-86.911):1:(-86.911)%5D", destfile = "D:/PhD/CRW/cv_2019.csv")
cv_2019 <- read.csv("cv_2019.csv")

# elavion: 15.952944, -86.473750

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2012.csv")
elavion_2012 <- read.csv("elavion_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2013.csv")
elavion_2013 <- read.csv("elavion_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2014.csv")
elavion_2014 <- read.csv("elavion_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2015.csv")
elavion_2015 <- read.csv("elavion_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2016.csv")
elavion_2016 <- read.csv("elavion_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2017.csv")
elavion_2017 <- read.csv("elavion_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2018.csv")
elavion_2018 <- read.csv("elavion_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.953):1:(15.953)%5D%5B(-86.474):1:(-86.474)%5D", destfile = "D:/PhD/CRW/elavion_2019.csv")
elavion_2019 <- read.csv("elavion_2019.csv")

# Jenna2:  15.958333, -86.503889

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2012.csv")
jenna2_2012 <- read.csv("jenna2_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2013.csv")
jenna2_2013 <- read.csv("jenna2_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2014.csv")
jenna2_2014 <- read.csv("jenna2_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2015.csv")
jenna2_2015 <- read.csv("jenna2_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2016.csv")
jenna2_2016 <- read.csv("jenna2_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2017.csv")
jenna2_2017 <- read.csv("jenna2_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2018.csv")
jenna2_2018 <- read.csv("jenna2_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.958):1:(15.958)%5D%5B(-86.504):1:(-86.504)%5D", destfile = "D:/PhD/CRW/jenna2_2019.csv")
jenna2_2019 <- read.csv("jenna2_2019.csv")

# KG: 15.86550, -87.50017

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2012.csv")
kg_2012 <- read.csv("kg_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2013.csv")
kg_2013 <- read.csv("kg_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2014.csv")
kg_2014 <- read.csv("kg_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2015.csv")
kg_2015 <- read.csv("kg_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2016.csv")
kg_2016 <- read.csv("kg_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2017.csv")
kg_2017 <- read.csv("kg_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2018.csv")
kg_2018 <- read.csv("kg_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.500):1:(-87.500)%5D", destfile = "D:/PhD/CRW/kg_2019.csv")
kg_2019 <- read.csv("kg_2019.csv")

# LB 16.07926302, -86.92942222

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2012.csv")
lb_2012 <- read.csv("lb_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2013.csv")
lb_2013 <- read.csv("lb_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2014.csv")
lb_2014 <- read.csv("lb_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2015.csv")
lb_2015 <- read.csv("lb_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2016.csv")
lb_2016 <- read.csv("lb_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2017.csv")
lb_2017 <- read.csv("lb_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2018.csv")
lb_2018 <- read.csv("lb_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(16.079):1:(16.079)%5D%5B(-86.929):1:(-86.929)%5D", destfile = "D:/PhD/CRW/lb_2019.csv")
lb_2019 <- read.csv("lb_2019.csv")

# LH:  16.08498,  -86.90032

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2012.csv")
lh_2012 <- read.csv("lh_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2013.csv")
lh_2013 <- read.csv("lh_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2014.csv")
lh_2014 <- read.csv("lh_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2015.csv")
lh_2015 <- read.csv("lh_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2016.csv")
lh_2016 <- read.csv("lh_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2017.csv")
lh_2017 <- read.csv("lh_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2018.csv")
lh_2018 <- read.csv("lh_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(16.085):1:(16.085)%5D%5B(-86.900):1:(-86.900)%5D", destfile = "D:/PhD/CRW/lh_2019.csv")
lh_2019 <- read.csv("lh_2019.csv")

# Maze: 16.11266214, -86.94911793

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2012.csv")
maze_2012 <- read.csv("maze_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2013.csv")
maze_2013 <- read.csv("maze_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2014.csv")
maze_2014 <- read.csv("maze_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2015.csv")
maze_2015 <- read.csv("maze_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2016.csv")
maze_2016 <- read.csv("maze_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2017.csv")
maze_2017 <- read.csv("maze_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2018.csv")
maze_2018 <- read.csv("maze_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(16.113):1:(16.113)%5D%5B(-86.949):1:(-86.949)%5D", destfile = "D:/PhD/CRW/maze_2019.csv")
maze_2019 <- read.csv("maze_2019.csv")

# MM: 15.86497, -87.4973

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2012.csv")
mm_2012 <- read.csv("mm_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2013.csv")
mm_2013 <- read.csv("mm_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2014.csv")
mm_2014 <- read.csv("mm_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2015.csv")
mm_2015 <- read.csv("mm_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2016.csv")
mm_2016 <- read.csv("mm_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2017.csv")
mm_2017 <- read.csv("mm_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2018.csv")
mm_2018 <- read.csv("mm_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.865):1:(15.865)%5D%5B(-87.497):1:(-87.497)%5D", destfile = "D:/PhD/CRW/mm_2019.csv")
mm_2019 <- read.csv("mm_2019.csv")

# peli0: 15.972778, -86.488889

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2012.csv")
peli0_2012 <- read.csv("peli0_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2013.csv")
peli0_2013 <- read.csv("peli0_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2014.csv")
peli0_2014 <- read.csv("peli0_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2015.csv")
peli0_2015 <- read.csv("peli0_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2016.csv")
peli0_2016 <- read.csv("peli0_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2017.csv")
peli0_2017 <- read.csv("peli0_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2018.csv")
peli0_2018 <- read.csv("peli0_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.973):1:(15.973)%5D%5B(-86.489):1:(-86.489)%5D", destfile = "D:/PhD/CRW/peli0_2019.csv")
peli0_2019 <- read.csv("peli0_2019.csv")

# peli2:  15.977583, -86.484583

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2012.csv")
peli2_2012 <- read.csv("peli2_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2013.csv")
peli2_2013 <- read.csv("peli2_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2014.csv")
peli2_2014 <- read.csv("peli2_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2015.csv")
peli2_2015 <- read.csv("peli2_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2016.csv")
peli2_2016 <- read.csv("peli2_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2017.csv")
peli2_2017 <- read.csv("peli2_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2018.csv")
peli2_2018 <- read.csv("peli2_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.978):1:(15.978)%5D%5B(-86.485):1:(-86.485)%5D", destfile = "D:/PhD/CRW/peli2_2019.csv")
peli2_2019 <- read.csv("peli2_2019.csv")

# peli4: 15.980389, -86.478639

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2012.csv")
peli4_2012 <- read.csv("peli4_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2013.csv")
peli4_2013 <- read.csv("peli4_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2014.csv")
peli4_2014 <- read.csv("peli4_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2015.csv")
peli4_2015 <- read.csv("peli4_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2016.csv")
peli4_2016 <- read.csv("peli4_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2017.csv")
peli4_2017 <- read.csv("peli4_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2018.csv")
peli4_2018 <- read.csv("peli4_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.980):1:(15.980)%5D%5B(-86.479):1:(-86.479)%5D", destfile = "D:/PhD/CRW/peli4_2019.csv")
peli4_2019 <- read.csv("peli4_2019.csv")

# Rotonda:  15.86561, -87.50680

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2012.csv")
rotonda_2012 <- read.csv("rotonda_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2013.csv")
rotonda_2013 <- read.csv("rotonda_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2014.csv")
rotonda_2014 <- read.csv("rotonda_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2015.csv")
rotonda_2015 <- read.csv("rotonda_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2016.csv")
rotonda_2016 <- read.csv("rotonda_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2017.csv")
rotonda_2017 <- read.csv("rotonda_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2018.csv")
rotonda_2018 <- read.csv("rotonda_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(15.866):1:(15.866)%5D%5B(-87.507):1:(-87.507)%5D", destfile = "D:/PhD/CRW/rotonda_2019.csv")
rotonda_2019 <- read.csv("rotonda_2019.csv")

# SB: 16.089602, -86.9035006

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2012.csv")
sb_2012 <- read.csv("sb_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2013.csv")
sb_2013 <- read.csv("sb_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2014.csv")
sb_2014 <- read.csv("sb_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2015.csv")
sb_2015 <- read.csv("sb_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2016.csv")
sb_2016 <- read.csv("sb_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2017.csv")
sb_2017 <- read.csv("sb_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2018.csv")
sb_2018 <- read.csv("sb_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(16.089):1:(16.089)%5D%5B(-86.904):1:(-86.904)%5D", destfile = "D:/PhD/CRW/sb_2019.csv")
sb_2019 <- read.csv("sb_2019.csv")

# SP: 16.0689055, -86.95477948

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2011-06-01T12:00:00Z):7:(2012-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2012.csv")
sp_2012 <- read.csv("sp_2012.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2012-06-01T12:00:00Z):7:(2013-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2013.csv")
sp_2013 <- read.csv("sp_2013.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2013-06-01T12:00:00Z):7:(2014-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2014.csv")
sp_2014 <- read.csv("sp_2014.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2014-06-01T12:00:00Z):7:(2015-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2015.csv")
sp_2015 <- read.csv("sp_2015.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2015-06-01T12:00:00Z):7:(2016-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2016.csv")
sp_2016 <- read.csv("sp_2016.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2016-06-01T12:00:00Z):7:(2017-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2017.csv")
sp_2017 <- read.csv("sp_2017.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2017-06-01T12:00:00Z):7:(2018-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2018.csv")
sp_2018 <- read.csv("sp_2018.csv")

download.file(url="https://coastwatch.pfeg.noaa.gov/erddap/griddap/NOAA_DHW.csv?CRW_SSTANOMALY%5B(2018-06-01T12:00:00Z):7:(2019-06-01T12:00:00Z)%5D%5B(16.069):1:(16.069)%5D%5B(-86.955):1:(-86.955)%5D", destfile = "D:/PhD/CRW/sp_2019.csv")
sp_2019 <- read.csv("sp_2019.csv")

# once data are downloaded create a df as follows;
# Site, Year, avg_dhw, cum_dhw
# B3,   2012, 3,       15

# then left join by site and year to get full monitoring df with heat stress metrics 


Site <- NA
Year <- NA
avg_ssta <- NA
sum_ssta <- NA

aldrids_2012 <- subset(aldrids_2012[-1,])
aldrids_2012$CRW_SSTANOMALY <- as.numeric(aldrids_2012$CRW_SSTANOMALY)
ald2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2012_temp$Site <- 'Aldrids'
ald2012_temp$Year <- 2012
ald2012_temp$avg_ssta <- mean(aldrids_2012$CRW_SSTANOMALY)
ald2012_temp$sum_ssta <- sum(aldrids_2012$CRW_SSTANOMALY)

aldrids_2013 <- subset(aldrids_2013[-1,])
aldrids_2013$CRW_SSTANOMALY <- as.numeric(aldrids_2013$CRW_SSTANOMALY)
ald2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2013_temp$Site <- 'Aldrids'
ald2013_temp$Year <- 2013
ald2013_temp$avg_ssta <- mean(aldrids_2013$CRW_SSTANOMALY)
ald2013_temp$sum_ssta <- sum(aldrids_2013$CRW_SSTANOMALY)

aldrids_2014 <- subset(aldrids_2014[-1,])
aldrids_2014$CRW_SSTANOMALY <- as.numeric(aldrids_2014$CRW_SSTANOMALY)
ald2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2014_temp$Site <- 'Aldrids'
ald2014_temp$Year <- 2014
ald2014_temp$avg_ssta <- mean(aldrids_2014$CRW_SSTANOMALY)
ald2014_temp$sum_ssta <- sum(aldrids_2014$CRW_SSTANOMALY)

aldrids_2015 <- subset(aldrids_2015[-1,])
aldrids_2015$CRW_SSTANOMALY <- as.numeric(aldrids_2015$CRW_SSTANOMALY)
ald2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2015_temp$Site <- 'Aldrids'
ald2015_temp$Year <- 2015
ald2015_temp$avg_ssta <- mean(aldrids_2015$CRW_SSTANOMALY)
ald2015_temp$sum_ssta <- sum(aldrids_2015$CRW_SSTANOMALY)

aldrids_2016 <- subset(aldrids_2016[-1,])
aldrids_2016$CRW_SSTANOMALY <- as.numeric(aldrids_2016$CRW_SSTANOMALY)
ald2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2016_temp$Site <- 'Aldrids'
ald2016_temp$Year <- 2016
ald2016_temp$avg_ssta <- mean(aldrids_2016$CRW_SSTANOMALY)
ald2016_temp$sum_ssta <- sum(aldrids_2016$CRW_SSTANOMALY)

aldrids_2017 <- subset(aldrids_2017[-1,])
aldrids_2017$CRW_SSTANOMALY <- as.numeric(aldrids_2017$CRW_SSTANOMALY)
ald2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2017_temp$Site <- 'Aldrids'
ald2017_temp$Year <- 2017
ald2017_temp$avg_ssta <- mean(aldrids_2017$CRW_SSTANOMALY)
ald2017_temp$sum_ssta <- sum(aldrids_2017$CRW_SSTANOMALY)

aldrids_2018 <- subset(aldrids_2018[-1,])
aldrids_2018$CRW_SSTANOMALY <- as.numeric(aldrids_2018$CRW_SSTANOMALY)
ald2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2018_temp$Site <- 'Aldrids'
ald2018_temp$Year <- 2018
ald2018_temp$avg_ssta <- mean(aldrids_2018$CRW_SSTANOMALY)
ald2018_temp$sum_ssta <- sum(aldrids_2018$CRW_SSTANOMALY)

aldrids_2019 <- subset(aldrids_2019[-1,])
aldrids_2019$CRW_SSTANOMALY <- as.numeric(aldrids_2019$CRW_SSTANOMALY)
ald2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
ald2019_temp$Site <- 'Aldrids'
ald2019_temp$Year <- 2019
ald2019_temp$avg_ssta <- mean(aldrids_2019$CRW_SSTANOMALY)
ald2019_temp$sum_ssta <- sum(aldrids_2019$CRW_SSTANOMALY)

ald_comb <- rbind(ald2012_temp, ald2013_temp, ald2014_temp, ald2015_temp, ald2016_temp, ald2017_temp, ald2018_temp, ald2019_temp)

# Arena

Arena_2012 <- subset(arena_2012[-1,])
Arena_2012$CRW_SSTANOMALY <- as.numeric(Arena_2012$CRW_SSTANOMALY)
arena2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2012_temp$Site <- 'Arena'
arena2012_temp$Year <- 2012
arena2012_temp$avg_ssta <- mean(Arena_2012$CRW_SSTANOMALY)
arena2012_temp$sum_ssta <- sum(Arena_2012$CRW_SSTANOMALY)

Arena_2013 <- subset(arena_2013[-1,])
Arena_2013$CRW_SSTANOMALY <- as.numeric(Arena_2013$CRW_SSTANOMALY)
arena2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2013_temp$Site <- 'Arena'
arena2013_temp$Year <- 2013
arena2013_temp$avg_ssta <- mean(Arena_2013$CRW_SSTANOMALY)
arena2013_temp$sum_ssta <- sum(Arena_2013$CRW_SSTANOMALY)

Arena_2014 <- subset(arena_2014[-1,])
Arena_2014$CRW_SSTANOMALY <- as.numeric(Arena_2014$CRW_SSTANOMALY)
arena2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2014_temp$Site <- 'Arena'
arena2014_temp$Year <- 2014
arena2014_temp$avg_ssta <- mean(Arena_2014$CRW_SSTANOMALY)
arena2014_temp$sum_ssta <- sum(Arena_2014$CRW_SSTANOMALY)

Arena_2015 <- subset(arena_2015[-1,])
Arena_2015$CRW_SSTANOMALY <- as.numeric(Arena_2015$CRW_SSTANOMALY)
arena2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2015_temp$Site <- 'Arena'
arena2015_temp$Year <- 2015
arena2015_temp$avg_ssta <- mean(Arena_2015$CRW_SSTANOMALY)
arena2015_temp$sum_ssta <- sum(Arena_2015$CRW_SSTANOMALY)

Arena_2016 <- subset(arena_2016[-1,])
Arena_2016$CRW_SSTANOMALY <- as.numeric(Arena_2016$CRW_SSTANOMALY)
arena2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2016_temp$Site <- 'Arena'
arena2016_temp$Year <- 2016
arena2016_temp$avg_ssta <- mean(Arena_2016$CRW_SSTANOMALY)
arena2016_temp$sum_ssta <- sum(Arena_2016$CRW_SSTANOMALY)

Arena_2017 <- subset(arena_2017[-1,])
Arena_2017$CRW_SSTANOMALY <- as.numeric(Arena_2017$CRW_SSTANOMALY)
arena2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2017_temp$Site <- 'Arena'
arena2017_temp$Year <- 2017
arena2017_temp$avg_ssta <- mean(Arena_2017$CRW_SSTANOMALY)
arena2017_temp$sum_ssta <- sum(Arena_2017$CRW_SSTANOMALY)

Arena_2018 <- subset(arena_2018[-1,])
Arena_2018$CRW_SSTANOMALY <- as.numeric(Arena_2018$CRW_SSTANOMALY)
arena2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2018_temp$Site <- 'Arena'
arena2018_temp$Year <- 2018
arena2018_temp$avg_ssta <- mean(Arena_2018$CRW_SSTANOMALY)
arena2018_temp$sum_ssta <- sum(Arena_2018$CRW_SSTANOMALY)

Arena_2019 <- subset(arena_2019[-1,])
Arena_2019$CRW_SSTANOMALY <- as.numeric(Arena_2019$CRW_SSTANOMALY)
arena2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
arena2019_temp$Site <- 'Arena'
arena2019_temp$Year <- 2019
arena2019_temp$avg_ssta <- mean(Arena_2019$CRW_SSTANOMALY)
arena2019_temp$sum_ssta <- sum(Arena_2019$CRW_SSTANOMALY)

arena_comb <- rbind(arena2012_temp, arena2013_temp, arena2014_temp, arena2015_temp, arena2016_temp, arena2017_temp, arena2018_temp, arena2019_temp)

# b3

b3_2012 <- subset(b3_2012[-1,])
b3_2012$CRW_SSTANOMALY <- as.numeric(b3_2012$CRW_SSTANOMALY)
b32012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32012_temp$Site <- 'B3'
b32012_temp$Year <- 2012
b32012_temp$avg_ssta <- mean(b3_2012$CRW_SSTANOMALY)
b32012_temp$sum_ssta <- sum(b3_2012$CRW_SSTANOMALY)

b3_2013 <- subset(b3_2013[-1,])
b3_2013$CRW_SSTANOMALY <- as.numeric(b3_2013$CRW_SSTANOMALY)
b32013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32013_temp$Site <- 'B3'
b32013_temp$Year <- 2013
b32013_temp$avg_ssta <- mean(b3_2013$CRW_SSTANOMALY)
b32013_temp$sum_ssta <- sum(b3_2013$CRW_SSTANOMALY)

b3_2014 <- subset(b3_2014[-1,])
b3_2014$CRW_SSTANOMALY <- as.numeric(b3_2014$CRW_SSTANOMALY)
b32014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32014_temp$Site <- 'B3'
b32014_temp$Year <- 2014
b32014_temp$avg_ssta <- mean(b3_2014$CRW_SSTANOMALY)
b32014_temp$sum_ssta <- sum(b3_2014$CRW_SSTANOMALY)

b3_2015 <- subset(b3_2015[-1,])
b3_2015$CRW_SSTANOMALY <- as.numeric(b3_2015$CRW_SSTANOMALY)
b32015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32015_temp$Site <- 'B3'
b32015_temp$Year <- 2015
b32015_temp$avg_ssta <- mean(b3_2015$CRW_SSTANOMALY)
b32015_temp$sum_ssta <- sum(b3_2015$CRW_SSTANOMALY)

b3_2016 <- subset(b3_2016[-1,])
b3_2016$CRW_SSTANOMALY <- as.numeric(b3_2016$CRW_SSTANOMALY)
b32016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32016_temp$Site <- 'B3'
b32016_temp$Year <- 2016
b32016_temp$avg_ssta <- mean(b3_2016$CRW_SSTANOMALY)
b32016_temp$sum_ssta <- sum(b3_2016$CRW_SSTANOMALY)

b3_2017 <- subset(b3_2017[-1,])
b3_2017$CRW_SSTANOMALY <- as.numeric(b3_2017$CRW_SSTANOMALY)
b32017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32017_temp$Site <- 'B3'
b32017_temp$Year <- 2017
b32017_temp$avg_ssta <- mean(b3_2017$CRW_SSTANOMALY)
b32017_temp$sum_ssta <- sum(b3_2017$CRW_SSTANOMALY)

b3_2018 <- subset(b3_2018[-1,])
b3_2018$CRW_SSTANOMALY <- as.numeric(b3_2018$CRW_SSTANOMALY)
b32018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32018_temp$Site <- 'B3'
b32018_temp$Year <- 2018
b32018_temp$avg_ssta <- mean(b3_2018$CRW_SSTANOMALY)
b32018_temp$sum_ssta <- sum(b3_2018$CRW_SSTANOMALY)

b3_2019 <- subset(b3_2019[-1,])
b3_2019$CRW_SSTANOMALY <- as.numeric(b3_2019$CRW_SSTANOMALY)
b32019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
b32019_temp$Site <- 'B3'
b32019_temp$Year <- 2019
b32019_temp$avg_ssta <- mean(b3_2019$CRW_SSTANOMALY)
b32019_temp$sum_ssta <- sum(b3_2019$CRW_SSTANOMALY)

b3_comb <- rbind(b32012_temp, b32013_temp, b32014_temp, b32015_temp, b32016_temp, b32017_temp, b32018_temp, b32019_temp)

# BCW

bcw_2012 <- subset(bcw_2012[-1,])
bcw_2012$CRW_SSTANOMALY <- as.numeric(bcw_2012$CRW_SSTANOMALY)
bcw2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2012_temp$Site <- 'BCW'
bcw2012_temp$Year <- 2012
bcw2012_temp$avg_ssta <- mean(bcw_2012$CRW_SSTANOMALY)
bcw2012_temp$sum_ssta <- sum(bcw_2012$CRW_SSTANOMALY)

bcw_2013 <- subset(bcw_2013[-1,])
bcw_2013$CRW_SSTANOMALY <- as.numeric(bcw_2013$CRW_SSTANOMALY)
bcw2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2013_temp$Site <- 'BCW'
bcw2013_temp$Year <- 2013
bcw2013_temp$avg_ssta <- mean(bcw_2013$CRW_SSTANOMALY)
bcw2013_temp$sum_ssta <- sum(bcw_2013$CRW_SSTANOMALY)

bcw_2014 <- subset(bcw_2014[-1,])
bcw_2014$CRW_SSTANOMALY <- as.numeric(bcw_2014$CRW_SSTANOMALY)
bcw2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2014_temp$Site <- 'BCW'
bcw2014_temp$Year <- 2014
bcw2014_temp$avg_ssta <- mean(bcw_2014$CRW_SSTANOMALY)
bcw2014_temp$sum_ssta <- sum(bcw_2014$CRW_SSTANOMALY)

bcw_2015 <- subset(bcw_2015[-1,])
bcw_2015$CRW_SSTANOMALY <- as.numeric(bcw_2015$CRW_SSTANOMALY)
bcw2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2015_temp$Site <- 'BCW'
bcw2015_temp$Year <- 2015
bcw2015_temp$avg_ssta <- mean(bcw_2015$CRW_SSTANOMALY)
bcw2015_temp$sum_ssta <- sum(bcw_2015$CRW_SSTANOMALY)

bcw_2016 <- subset(bcw_2016[-1,])
bcw_2016$CRW_SSTANOMALY <- as.numeric(bcw_2016$CRW_SSTANOMALY)
bcw2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2016_temp$Site <- 'BCW'
bcw2016_temp$Year <- 2016
bcw2016_temp$avg_ssta <- mean(bcw_2016$CRW_SSTANOMALY)
bcw2016_temp$sum_ssta <- sum(bcw_2016$CRW_SSTANOMALY)

bcw_2017 <- subset(bcw_2017[-1,])
bcw_2017$CRW_SSTANOMALY <- as.numeric(bcw_2017$CRW_SSTANOMALY)
bcw2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2017_temp$Site <- 'BCW'
bcw2017_temp$Year <- 2017
bcw2017_temp$avg_ssta <- mean(bcw_2017$CRW_SSTANOMALY)
bcw2017_temp$sum_ssta <- sum(bcw_2017$CRW_SSTANOMALY)

bcw_2018 <- subset(bcw_2018[-1,])
bcw_2018$CRW_SSTANOMALY <- as.numeric(bcw_2018$CRW_SSTANOMALY)
bcw2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2018_temp$Site <- 'BCW'
bcw2018_temp$Year <- 2018
bcw2018_temp$avg_ssta <- mean(bcw_2018$CRW_SSTANOMALY)
bcw2018_temp$sum_ssta <- sum(bcw_2018$CRW_SSTANOMALY)

bcw_2019 <- subset(bcw_2019[-1,])
bcw_2019$CRW_SSTANOMALY <- as.numeric(bcw_2019$CRW_SSTANOMALY)
bcw2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bcw2019_temp$Site <- 'BCW'
bcw2019_temp$Year <- 2019
bcw2019_temp$avg_ssta <- mean(bcw_2019$CRW_SSTANOMALY)
bcw2019_temp$sum_ssta <- sum(bcw_2019$CRW_SSTANOMALY)

bcw_comb <- rbind(bcw2012_temp, bcw2013_temp, bcw2014_temp, bcw2015_temp, bcw2016_temp, bcw2017_temp, bcw2018_temp, bcw2019_temp)

# BF

bf_2012 <- subset(bf_2012[-1,])
bf_2012$CRW_SSTANOMALY <- as.numeric(bf_2012$CRW_SSTANOMALY)
bf2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2012_temp$Site <- 'BF'
bf2012_temp$Year <- 2012
bf2012_temp$avg_ssta <- mean(bf_2012$CRW_SSTANOMALY)
bf2012_temp$sum_ssta <- sum(bf_2012$CRW_SSTANOMALY)

bf_2013 <- subset(bf_2013[-1,])
bf_2013$CRW_SSTANOMALY <- as.numeric(bf_2013$CRW_SSTANOMALY)
bf2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2013_temp$Site <- 'BF'
bf2013_temp$Year <- 2013
bf2013_temp$avg_ssta <- mean(bf_2013$CRW_SSTANOMALY)
bf2013_temp$sum_ssta <- sum(bf_2013$CRW_SSTANOMALY)

bf_2014 <- subset(bf_2014[-1,])
bf_2014$CRW_SSTANOMALY <- as.numeric(bf_2014$CRW_SSTANOMALY)
bf2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2014_temp$Site <- 'BF'
bf2014_temp$Year <- 2014
bf2014_temp$avg_ssta <- mean(bf_2014$CRW_SSTANOMALY)
bf2014_temp$sum_ssta <- sum(bf_2014$CRW_SSTANOMALY)

bf_2015 <- subset(bf_2015[-1,])
bf_2015$CRW_SSTANOMALY <- as.numeric(bf_2015$CRW_SSTANOMALY)
bf2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2015_temp$Site <- 'BF'
bf2015_temp$Year <- 2015
bf2015_temp$avg_ssta <- mean(bf_2015$CRW_SSTANOMALY)
bf2015_temp$sum_ssta <- sum(bf_2015$CRW_SSTANOMALY)

bf_2016 <- subset(bf_2016[-1,])
bf_2016$CRW_SSTANOMALY <- as.numeric(bf_2016$CRW_SSTANOMALY)
bf2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2016_temp$Site <- 'BF'
bf2016_temp$Year <- 2016
bf2016_temp$avg_ssta <- mean(bf_2016$CRW_SSTANOMALY)
bf2016_temp$sum_ssta <- sum(bf_2016$CRW_SSTANOMALY)

bf_2017 <- subset(bf_2017[-1,])
bf_2017$CRW_SSTANOMALY <- as.numeric(bf_2017$CRW_SSTANOMALY)
bf2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2017_temp$Site <- 'BF'
bf2017_temp$Year <- 2017
bf2017_temp$avg_ssta <- mean(bf_2017$CRW_SSTANOMALY)
bf2017_temp$sum_ssta <- sum(bf_2017$CRW_SSTANOMALY)

bf_2018 <- subset(bf_2018[-1,])
bf_2018$CRW_SSTANOMALY <- as.numeric(bf_2018$CRW_SSTANOMALY)
bf2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2018_temp$Site <- 'BF'
bf2018_temp$Year <- 2018
bf2018_temp$avg_ssta <- mean(bf_2018$CRW_SSTANOMALY)
bf2018_temp$sum_ssta <- sum(bf_2018$CRW_SSTANOMALY)

bf_2019 <- subset(bf_2019[-1,])
bf_2019$CRW_SSTANOMALY <- as.numeric(bf_2019$CRW_SSTANOMALY)
bf2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
bf2019_temp$Site <- 'BF'
bf2019_temp$Year <- 2019
bf2019_temp$avg_ssta <- mean(bf_2019$CRW_SSTANOMALY)
bf2019_temp$sum_ssta <- sum(bf_2019$CRW_SSTANOMALY)

bf_comb <- rbind(bf2012_temp, bf2013_temp, bf2014_temp, bf2015_temp, bf2016_temp, bf2017_temp, bf2018_temp, bf2019_temp)

# Canyon 

canyon_2012 <- subset(canyon_2012[-1,])
canyon_2012$CRW_SSTANOMALY <- as.numeric(canyon_2012$CRW_SSTANOMALY)
canyon2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2012_temp$Site <- 'Canyon'
canyon2012_temp$Year <- 2012
canyon2012_temp$avg_ssta <- mean(canyon_2012$CRW_SSTANOMALY)
canyon2012_temp$sum_ssta <- sum(canyon_2012$CRW_SSTANOMALY)

canyon_2013 <- subset(canyon_2013[-1,])
canyon_2013$CRW_SSTANOMALY <- as.numeric(canyon_2013$CRW_SSTANOMALY)
canyon2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2013_temp$Site <- 'Canyon'
canyon2013_temp$Year <- 2013
canyon2013_temp$avg_ssta <- mean(canyon_2013$CRW_SSTANOMALY)
canyon2013_temp$sum_ssta <- sum(canyon_2013$CRW_SSTANOMALY)

canyon_2014 <- subset(canyon_2014[-1,])
canyon_2014$CRW_SSTANOMALY <- as.numeric(canyon_2014$CRW_SSTANOMALY)
canyon2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2014_temp$Site <- 'Canyon'
canyon2014_temp$Year <- 2014
canyon2014_temp$avg_ssta <- mean(canyon_2014$CRW_SSTANOMALY)
canyon2014_temp$sum_ssta <- sum(canyon_2014$CRW_SSTANOMALY)

canyon_2015 <- subset(canyon_2015[-1,])
canyon_2015$CRW_SSTANOMALY <- as.numeric(canyon_2015$CRW_SSTANOMALY)
canyon2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2015_temp$Site <- 'Canyon'
canyon2015_temp$Year <- 2015
canyon2015_temp$avg_ssta <- mean(canyon_2015$CRW_SSTANOMALY)
canyon2015_temp$sum_ssta <- sum(canyon_2015$CRW_SSTANOMALY)

canyon_2016 <- subset(canyon_2016[-1,])
canyon_2016$CRW_SSTANOMALY <- as.numeric(canyon_2016$CRW_SSTANOMALY)
canyon2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2016_temp$Site <- 'Canyon'
canyon2016_temp$Year <- 2016
canyon2016_temp$avg_ssta <- mean(canyon_2016$CRW_SSTANOMALY)
canyon2016_temp$sum_ssta <- sum(canyon_2016$CRW_SSTANOMALY)

canyon_2017 <- subset(canyon_2017[-1,])
canyon_2017$CRW_SSTANOMALY <- as.numeric(canyon_2017$CRW_SSTANOMALY)
canyon2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2017_temp$Site <- 'Canyon'
canyon2017_temp$Year <- 2017
canyon2017_temp$avg_ssta <- mean(canyon_2017$CRW_SSTANOMALY)
canyon2017_temp$sum_ssta <- sum(canyon_2017$CRW_SSTANOMALY)

canyon_2018 <- subset(canyon_2018[-1,])
canyon_2018$CRW_SSTANOMALY <- as.numeric(canyon_2018$CRW_SSTANOMALY)
canyon2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2018_temp$Site <- 'Canyon'
canyon2018_temp$Year <- 2018
canyon2018_temp$avg_ssta <- mean(canyon_2018$CRW_SSTANOMALY)
canyon2018_temp$sum_ssta <- sum(canyon_2018$CRW_SSTANOMALY)

canyon_2019 <- subset(canyon_2019[-1,])
canyon_2019$CRW_SSTANOMALY <- as.numeric(canyon_2019$CRW_SSTANOMALY)
canyon2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
canyon2019_temp$Site <- 'Canyon'
canyon2019_temp$Year <- 2019
canyon2019_temp$avg_ssta <- mean(canyon_2019$CRW_SSTANOMALY)
canyon2019_temp$sum_ssta <- sum(canyon_2019$CRW_SSTANOMALY)

canyon_comb <- rbind(canyon2012_temp, canyon2013_temp, canyon2014_temp, canyon2015_temp, canyon2016_temp, canyon2017_temp, canyon2018_temp, canyon2019_temp)

# CV

cv_2012 <- subset(cv_2012[-1,])
cv_2012$CRW_SSTANOMALY <- as.numeric(cv_2012$CRW_SSTANOMALY)
cv2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2012_temp$Site <- 'CV'
cv2012_temp$Year <- 2012
cv2012_temp$avg_ssta <- mean(cv_2012$CRW_SSTANOMALY)
cv2012_temp$sum_ssta <- sum(cv_2012$CRW_SSTANOMALY)

cv_2013 <- subset(cv_2013[-1,])
cv_2013$CRW_SSTANOMALY <- as.numeric(cv_2013$CRW_SSTANOMALY)
cv2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2013_temp$Site <- 'CV'
cv2013_temp$Year <- 2013
cv2013_temp$avg_ssta <- mean(cv_2013$CRW_SSTANOMALY)
cv2013_temp$sum_ssta <- sum(cv_2013$CRW_SSTANOMALY)

cv_2014 <- subset(cv_2014[-1,])
cv_2014$CRW_SSTANOMALY <- as.numeric(cv_2014$CRW_SSTANOMALY)
cv2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2014_temp$Site <- 'CV'
cv2014_temp$Year <- 2014
cv2014_temp$avg_ssta <- mean(cv_2014$CRW_SSTANOMALY)
cv2014_temp$sum_ssta <- sum(cv_2014$CRW_SSTANOMALY)

cv_2015 <- subset(cv_2015[-1,])
cv_2015$CRW_SSTANOMALY <- as.numeric(cv_2015$CRW_SSTANOMALY)
cv2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2015_temp$Site <- 'CV'
cv2015_temp$Year <- 2015
cv2015_temp$avg_ssta <- mean(cv_2015$CRW_SSTANOMALY)
cv2015_temp$sum_ssta <- sum(cv_2015$CRW_SSTANOMALY)

cv_2016 <- subset(cv_2016[-1,])
cv_2016$CRW_SSTANOMALY <- as.numeric(cv_2016$CRW_SSTANOMALY)
cv2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2016_temp$Site <- 'CV'
cv2016_temp$Year <- 2016
cv2016_temp$avg_ssta <- mean(cv_2016$CRW_SSTANOMALY)
cv2016_temp$sum_ssta <- sum(cv_2016$CRW_SSTANOMALY)

cv_2017 <- subset(cv_2017[-1,])
cv_2017$CRW_SSTANOMALY <- as.numeric(cv_2017$CRW_SSTANOMALY)
cv2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2017_temp$Site <- 'CV'
cv2017_temp$Year <- 2017
cv2017_temp$avg_ssta <- mean(cv_2017$CRW_SSTANOMALY)
cv2017_temp$sum_ssta <- sum(cv_2017$CRW_SSTANOMALY)

cv_2018 <- subset(cv_2018[-1,])
cv_2018$CRW_SSTANOMALY <- as.numeric(cv_2018$CRW_SSTANOMALY)
cv2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2018_temp$Site <- 'CV'
cv2018_temp$Year <- 2018
cv2018_temp$avg_ssta <- mean(cv_2018$CRW_SSTANOMALY)
cv2018_temp$sum_ssta <- sum(cv_2018$CRW_SSTANOMALY)

cv_2019 <- subset(cv_2019[-1,])
cv_2019$CRW_SSTANOMALY <- as.numeric(cv_2019$CRW_SSTANOMALY)
cv2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
cv2019_temp$Site <- 'CV'
cv2019_temp$Year <- 2019
cv2019_temp$avg_ssta <- mean(cv_2019$CRW_SSTANOMALY)
cv2019_temp$sum_ssta <- sum(cv_2019$CRW_SSTANOMALY)

cv_comb <- rbind(cv2012_temp, cv2013_temp, cv2014_temp, cv2015_temp, cv2016_temp, cv2017_temp, cv2018_temp, cv2019_temp)

#ElAvion 

elavion_2012 <- subset(elavion_2012[-1,])
elavion_2012$CRW_SSTANOMALY <- as.numeric(elavion_2012$CRW_SSTANOMALY)
elavion2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2012_temp$Site <- 'ElAvion'
elavion2012_temp$Year <- 2012
elavion2012_temp$avg_ssta <- mean(elavion_2012$CRW_SSTANOMALY)
elavion2012_temp$sum_ssta <- sum(elavion_2012$CRW_SSTANOMALY)

elavion_2013 <- subset(elavion_2013[-1,])
elavion_2013$CRW_SSTANOMALY <- as.numeric(elavion_2013$CRW_SSTANOMALY)
elavion2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2013_temp$Site <- 'ElAvion'
elavion2013_temp$Year <- 2013
elavion2013_temp$avg_ssta <- mean(elavion_2013$CRW_SSTANOMALY)
elavion2013_temp$sum_ssta <- sum(elavion_2013$CRW_SSTANOMALY)

elavion_2014 <- subset(elavion_2014[-1,])
elavion_2014$CRW_SSTANOMALY <- as.numeric(elavion_2014$CRW_SSTANOMALY)
elavion2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2014_temp$Site <- 'ElAvion'
elavion2014_temp$Year <- 2014
elavion2014_temp$avg_ssta <- mean(elavion_2014$CRW_SSTANOMALY)
elavion2014_temp$sum_ssta <- sum(elavion_2014$CRW_SSTANOMALY)

elavion_2015 <- subset(elavion_2015[-1,])
elavion_2015$CRW_SSTANOMALY <- as.numeric(elavion_2015$CRW_SSTANOMALY)
elavion2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2015_temp$Site <- 'ElAvion'
elavion2015_temp$Year <- 2015
elavion2015_temp$avg_ssta <- mean(elavion_2015$CRW_SSTANOMALY)
elavion2015_temp$sum_ssta <- sum(elavion_2015$CRW_SSTANOMALY)

elavion_2016 <- subset(elavion_2016[-1,])
elavion_2016$CRW_SSTANOMALY <- as.numeric(elavion_2016$CRW_SSTANOMALY)
elavion2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2016_temp$Site <- 'ElAvion'
elavion2016_temp$Year <- 2016
elavion2016_temp$avg_ssta <- mean(elavion_2016$CRW_SSTANOMALY)
elavion2016_temp$sum_ssta <- sum(elavion_2016$CRW_SSTANOMALY)

elavion_2017 <- subset(elavion_2017[-1,])
elavion_2017$CRW_SSTANOMALY <- as.numeric(elavion_2017$CRW_SSTANOMALY)
elavion2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2017_temp$Site <- 'ElAvion'
elavion2017_temp$Year <- 2017
elavion2017_temp$avg_ssta <- mean(elavion_2017$CRW_SSTANOMALY)
elavion2017_temp$sum_ssta <- sum(elavion_2017$CRW_SSTANOMALY)

elavion_2018 <- subset(elavion_2018[-1,])
elavion_2018$CRW_SSTANOMALY <- as.numeric(elavion_2018$CRW_SSTANOMALY)
elavion2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2018_temp$Site <- 'ElAvion'
elavion2018_temp$Year <- 2018
elavion2018_temp$avg_ssta <- mean(elavion_2018$CRW_SSTANOMALY)
elavion2018_temp$sum_ssta <- sum(elavion_2018$CRW_SSTANOMALY)

elavion_2019 <- subset(elavion_2019[-1,])
elavion_2019$CRW_SSTANOMALY <- as.numeric(elavion_2019$CRW_SSTANOMALY)
elavion2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
elavion2019_temp$Site <- 'ElAvion'
elavion2019_temp$Year <- 2019
elavion2019_temp$avg_ssta <- mean(elavion_2019$CRW_SSTANOMALY)
elavion2019_temp$sum_ssta <- sum(elavion_2019$CRW_SSTANOMALY)

elavion_comb <- rbind(elavion2012_temp, elavion2013_temp, elavion2014_temp, elavion2015_temp, elavion2016_temp, elavion2017_temp, elavion2018_temp, elavion2019_temp)

# jenna2

jenna2_2012 <- subset(jenna2_2012[-1,])
jenna2_2012$CRW_SSTANOMALY <- as.numeric(jenna2_2012$CRW_SSTANOMALY)
jenna22012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22012_temp$Site <- 'Jenna2'
jenna22012_temp$Year <- 2012
jenna22012_temp$avg_ssta <- mean(jenna2_2012$CRW_SSTANOMALY)
jenna22012_temp$sum_ssta <- sum(jenna2_2012$CRW_SSTANOMALY)

jenna2_2013 <- subset(jenna2_2013[-1,])
jenna2_2013$CRW_SSTANOMALY <- as.numeric(jenna2_2013$CRW_SSTANOMALY)
jenna22013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22013_temp$Site <- 'Jenna2'
jenna22013_temp$Year <- 2013
jenna22013_temp$avg_ssta <- mean(jenna2_2013$CRW_SSTANOMALY)
jenna22013_temp$sum_ssta <- sum(jenna2_2013$CRW_SSTANOMALY)

jenna2_2014 <- subset(jenna2_2014[-1,])
jenna2_2014$CRW_SSTANOMALY <- as.numeric(jenna2_2014$CRW_SSTANOMALY)
jenna22014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22014_temp$Site <- 'Jenna2'
jenna22014_temp$Year <- 2014
jenna22014_temp$avg_ssta <- mean(jenna2_2014$CRW_SSTANOMALY)
jenna22014_temp$sum_ssta <- sum(jenna2_2014$CRW_SSTANOMALY)

jenna2_2015 <- subset(jenna2_2015[-1,])
jenna2_2015$CRW_SSTANOMALY <- as.numeric(jenna2_2015$CRW_SSTANOMALY)
jenna22015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22015_temp$Site <- 'Jenna2'
jenna22015_temp$Year <- 2015
jenna22015_temp$avg_ssta <- mean(jenna2_2015$CRW_SSTANOMALY)
jenna22015_temp$sum_ssta <- sum(jenna2_2015$CRW_SSTANOMALY)

jenna2_2016 <- subset(jenna2_2016[-1,])
jenna2_2016$CRW_SSTANOMALY <- as.numeric(jenna2_2016$CRW_SSTANOMALY)
jenna22016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22016_temp$Site <- 'Jenna2'
jenna22016_temp$Year <- 2016
jenna22016_temp$avg_ssta <- mean(jenna2_2016$CRW_SSTANOMALY)
jenna22016_temp$sum_ssta <- sum(jenna2_2016$CRW_SSTANOMALY)

jenna2_2017 <- subset(jenna2_2017[-1,])
jenna2_2017$CRW_SSTANOMALY <- as.numeric(jenna2_2017$CRW_SSTANOMALY)
jenna22017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22017_temp$Site <- 'Jenna2'
jenna22017_temp$Year <- 2017
jenna22017_temp$avg_ssta <- mean(jenna2_2017$CRW_SSTANOMALY)
jenna22017_temp$sum_ssta <- sum(jenna2_2017$CRW_SSTANOMALY)

jenna2_2018 <- subset(jenna2_2018[-1,])
jenna2_2018$CRW_SSTANOMALY <- as.numeric(jenna2_2018$CRW_SSTANOMALY)
jenna22018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22018_temp$Site <- 'Jenna2'
jenna22018_temp$Year <- 2018
jenna22018_temp$avg_ssta <- mean(jenna2_2018$CRW_SSTANOMALY)
jenna22018_temp$sum_ssta <- sum(jenna2_2018$CRW_SSTANOMALY)

jenna2_2019 <- subset(jenna2_2019[-1,])
jenna2_2019$CRW_SSTANOMALY <- as.numeric(jenna2_2019$CRW_SSTANOMALY)
jenna22019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
jenna22019_temp$Site <- 'Jenna2'
jenna22019_temp$Year <- 2019
jenna22019_temp$avg_ssta <- mean(jenna2_2019$CRW_SSTANOMALY)
jenna22019_temp$sum_ssta <- sum(jenna2_2019$CRW_SSTANOMALY)

jenna2_comb <- rbind(jenna22012_temp, jenna22013_temp, jenna22014_temp, jenna22015_temp, jenna22016_temp, jenna22017_temp, jenna22018_temp, jenna22019_temp)

# KAL

kal_2012 <- subset(kal_2012[-1,])
kal_2012$CRW_SSTANOMALY <- as.numeric(kal_2012$CRW_SSTANOMALY)
kal2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2012_temp$Site <- 'KAL'
kal2012_temp$Year <- 2012
kal2012_temp$avg_ssta <- mean(kal_2012$CRW_SSTANOMALY)
kal2012_temp$sum_ssta <- sum(kal_2012$CRW_SSTANOMALY)

kal_2013 <- subset(kal_2013[-1,])
kal_2013$CRW_SSTANOMALY <- as.numeric(kal_2013$CRW_SSTANOMALY)
kal2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2013_temp$Site <- 'KAL'
kal2013_temp$Year <- 2013
kal2013_temp$avg_ssta <- mean(kal_2013$CRW_SSTANOMALY)
kal2013_temp$sum_ssta <- sum(kal_2013$CRW_SSTANOMALY)

kal_2014 <- subset(kal_2014[-1,])
kal_2014$CRW_SSTANOMALY <- as.numeric(kal_2014$CRW_SSTANOMALY)
kal2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2014_temp$Site <- 'KAL'
kal2014_temp$Year <- 2014
kal2014_temp$avg_ssta <- mean(kal_2014$CRW_SSTANOMALY)
kal2014_temp$sum_ssta <- sum(kal_2014$CRW_SSTANOMALY)

kal_2015 <- subset(kal_2015[-1,])
kal_2015$CRW_SSTANOMALY <- as.numeric(kal_2015$CRW_SSTANOMALY)
kal2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2015_temp$Site <- 'KAL'
kal2015_temp$Year <- 2015
kal2015_temp$avg_ssta <- mean(kal_2015$CRW_SSTANOMALY)
kal2015_temp$sum_ssta <- sum(kal_2015$CRW_SSTANOMALY)

kal_2016 <- subset(kal_2016[-1,])
kal_2016$CRW_SSTANOMALY <- as.numeric(kal_2016$CRW_SSTANOMALY)
kal2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2016_temp$Site <- 'KAL'
kal2016_temp$Year <- 2016
kal2016_temp$avg_ssta <- mean(kal_2016$CRW_SSTANOMALY)
kal2016_temp$sum_ssta <- sum(kal_2016$CRW_SSTANOMALY)

kal_2017 <- subset(kal_2017[-1,])
kal_2017$CRW_SSTANOMALY <- as.numeric(kal_2017$CRW_SSTANOMALY)
kal2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2017_temp$Site <- 'KAL'
kal2017_temp$Year <- 2017
kal2017_temp$avg_ssta <- mean(kal_2017$CRW_SSTANOMALY)
kal2017_temp$sum_ssta <- sum(kal_2017$CRW_SSTANOMALY)

kal_2018 <- subset(kal_2018[-1,])
kal_2018$CRW_SSTANOMALY <- as.numeric(kal_2018$CRW_SSTANOMALY)
kal2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2018_temp$Site <- 'KAL'
kal2018_temp$Year <- 2018
kal2018_temp$avg_ssta <- mean(kal_2018$CRW_SSTANOMALY)
kal2018_temp$sum_ssta <- sum(kal_2018$CRW_SSTANOMALY)

kal_2019 <- subset(kal_2019[-1,])
kal_2019$CRW_SSTANOMALY <- as.numeric(kal_2019$CRW_SSTANOMALY)
kal2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kal2019_temp$Site <- 'KAL'
kal2019_temp$Year <- 2019
kal2019_temp$avg_ssta <- mean(kal_2019$CRW_SSTANOMALY)
kal2019_temp$sum_ssta <- sum(kal_2019$CRW_SSTANOMALY)

kal_comb <- rbind(kal2012_temp, kal2013_temp, kal2014_temp, kal2015_temp, kal2016_temp, kal2017_temp, kal2018_temp, kal2019_temp)

# KDS

kds_2012 <- subset(kds_2012[-1,])
kds_2012$CRW_SSTANOMALY <- as.numeric(kds_2012$CRW_SSTANOMALY)
kds2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2012_temp$Site <- 'KDS'
kds2012_temp$Year <- 2012
kds2012_temp$avg_ssta <- mean(kds_2012$CRW_SSTANOMALY)
kds2012_temp$sum_ssta <- sum(kds_2012$CRW_SSTANOMALY)

kds_2013 <- subset(kds_2013[-1,])
kds_2013$CRW_SSTANOMALY <- as.numeric(kds_2013$CRW_SSTANOMALY)
kds2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2013_temp$Site <- 'KDS'
kds2013_temp$Year <- 2013
kds2013_temp$avg_ssta <- mean(kds_2013$CRW_SSTANOMALY)
kds2013_temp$sum_ssta <- sum(kds_2013$CRW_SSTANOMALY)

kds_2014 <- subset(kds_2014[-1,])
kds_2014$CRW_SSTANOMALY <- as.numeric(kds_2014$CRW_SSTANOMALY)
kds2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2014_temp$Site <- 'KDS'
kds2014_temp$Year <- 2014
kds2014_temp$avg_ssta <- mean(kds_2014$CRW_SSTANOMALY)
kds2014_temp$sum_ssta <- sum(kds_2014$CRW_SSTANOMALY)

kds_2015 <- subset(kds_2015[-1,])
kds_2015$CRW_SSTANOMALY <- as.numeric(kds_2015$CRW_SSTANOMALY)
kds2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2015_temp$Site <- 'KDS'
kds2015_temp$Year <- 2015
kds2015_temp$avg_ssta <- mean(kds_2015$CRW_SSTANOMALY)
kds2015_temp$sum_ssta <- sum(kds_2015$CRW_SSTANOMALY)

kds_2016 <- subset(kds_2016[-1,])
kds_2016$CRW_SSTANOMALY <- as.numeric(kds_2016$CRW_SSTANOMALY)
kds2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2016_temp$Site <- 'KDS'
kds2016_temp$Year <- 2016
kds2016_temp$avg_ssta <- mean(kds_2016$CRW_SSTANOMALY)
kds2016_temp$sum_ssta <- sum(kds_2016$CRW_SSTANOMALY)

kds_2017 <- subset(kds_2017[-1,])
kds_2017$CRW_SSTANOMALY <- as.numeric(kds_2017$CRW_SSTANOMALY)
kds2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2017_temp$Site <- 'KDS'
kds2017_temp$Year <- 2017
kds2017_temp$avg_ssta <- mean(kds_2017$CRW_SSTANOMALY)
kds2017_temp$sum_ssta <- sum(kds_2017$CRW_SSTANOMALY)

kds_2018 <- subset(kds_2018[-1,])
kds_2018$CRW_SSTANOMALY <- as.numeric(kds_2018$CRW_SSTANOMALY)
kds2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2018_temp$Site <- 'KDS'
kds2018_temp$Year <- 2018
kds2018_temp$avg_ssta <- mean(kds_2018$CRW_SSTANOMALY)
kds2018_temp$sum_ssta <- sum(kds_2018$CRW_SSTANOMALY)

kds_2019 <- subset(kds_2019[-1,])
kds_2019$CRW_SSTANOMALY <- as.numeric(kds_2019$CRW_SSTANOMALY)
kds2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kds2019_temp$Site <- 'KDS'
kds2019_temp$Year <- 2019
kds2019_temp$avg_ssta <- mean(kds_2019$CRW_SSTANOMALY)
kds2019_temp$sum_ssta <- sum(kds_2019$CRW_SSTANOMALY)

kds_comb <- rbind(kds2012_temp, kds2013_temp, kds2014_temp, kds2015_temp, kds2016_temp, kds2017_temp, kds2018_temp, kds2019_temp)

# KG

kg_2012 <- subset(kg_2012[-1,])
kg_2012$CRW_SSTANOMALY <- as.numeric(kg_2012$CRW_SSTANOMALY)
kg2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2012_temp$Site <- 'KG'
kg2012_temp$Year <- 2012
kg2012_temp$avg_ssta <- mean(kg_2012$CRW_SSTANOMALY)
kg2012_temp$sum_ssta <- sum(kg_2012$CRW_SSTANOMALY)

kg_2013 <- subset(kg_2013[-1,])
kg_2013$CRW_SSTANOMALY <- as.numeric(kg_2013$CRW_SSTANOMALY)
kg2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2013_temp$Site <- 'KG'
kg2013_temp$Year <- 2013
kg2013_temp$avg_ssta <- mean(kg_2013$CRW_SSTANOMALY)
kg2013_temp$sum_ssta <- sum(kg_2013$CRW_SSTANOMALY)

kg_2014 <- subset(kg_2014[-1,])
kg_2014$CRW_SSTANOMALY <- as.numeric(kg_2014$CRW_SSTANOMALY)
kg2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2014_temp$Site <- 'KG'
kg2014_temp$Year <- 2014
kg2014_temp$avg_ssta <- mean(kg_2014$CRW_SSTANOMALY)
kg2014_temp$sum_ssta <- sum(kg_2014$CRW_SSTANOMALY)

kg_2015 <- subset(kg_2015[-1,])
kg_2015$CRW_SSTANOMALY <- as.numeric(kg_2015$CRW_SSTANOMALY)
kg2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2015_temp$Site <- 'KG'
kg2015_temp$Year <- 2015
kg2015_temp$avg_ssta <- mean(kg_2015$CRW_SSTANOMALY)
kg2015_temp$sum_ssta <- sum(kg_2015$CRW_SSTANOMALY)

kg_2016 <- subset(kg_2016[-1,])
kg_2016$CRW_SSTANOMALY <- as.numeric(kg_2016$CRW_SSTANOMALY)
kg2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2016_temp$Site <- 'KG'
kg2016_temp$Year <- 2016
kg2016_temp$avg_ssta <- mean(kg_2016$CRW_SSTANOMALY)
kg2016_temp$sum_ssta <- sum(kg_2016$CRW_SSTANOMALY)

kg_2017 <- subset(kg_2017[-1,])
kg_2017$CRW_SSTANOMALY <- as.numeric(kg_2017$CRW_SSTANOMALY)
kg2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2017_temp$Site <- 'KG'
kg2017_temp$Year <- 2017
kg2017_temp$avg_ssta <- mean(kg_2017$CRW_SSTANOMALY)
kg2017_temp$sum_ssta <- sum(kg_2017$CRW_SSTANOMALY)

kg_2018 <- subset(kg_2018[-1,])
kg_2018$CRW_SSTANOMALY <- as.numeric(kg_2018$CRW_SSTANOMALY)
kg2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2018_temp$Site <- 'KG'
kg2018_temp$Year <- 2018
kg2018_temp$avg_ssta <- mean(kg_2018$CRW_SSTANOMALY)
kg2018_temp$sum_ssta <- sum(kg_2018$CRW_SSTANOMALY)

kg_2019 <- subset(kg_2019[-1,])
kg_2019$CRW_SSTANOMALY <- as.numeric(kg_2019$CRW_SSTANOMALY)
kg2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
kg2019_temp$Site <- 'KG'
kg2019_temp$Year <- 2019
kg2019_temp$avg_ssta <- mean(kg_2019$CRW_SSTANOMALY)
kg2019_temp$sum_ssta <- sum(kg_2019$CRW_SSTANOMALY)

kg_comb <- rbind(kg2012_temp, kg2013_temp, kg2014_temp, kg2015_temp, kg2016_temp, kg2017_temp, kg2018_temp, kg2019_temp)

#  LB

lb_2012 <- subset(lb_2012[-1,])
lb_2012$CRW_SSTANOMALY <- as.numeric(lb_2012$CRW_SSTANOMALY)
lb2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2012_temp$Site <- 'LB'
lb2012_temp$Year <- 2012
lb2012_temp$avg_ssta <- mean(lb_2012$CRW_SSTANOMALY)
lb2012_temp$sum_ssta <- sum(lb_2012$CRW_SSTANOMALY)

lb_2013 <- subset(lb_2013[-1,])
lb_2013$CRW_SSTANOMALY <- as.numeric(lb_2013$CRW_SSTANOMALY)
lb2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2013_temp$Site <- 'LB'
lb2013_temp$Year <- 2013
lb2013_temp$avg_ssta <- mean(lb_2013$CRW_SSTANOMALY)
lb2013_temp$sum_ssta <- sum(lb_2013$CRW_SSTANOMALY)

lb_2014 <- subset(lb_2014[-1,])
lb_2014$CRW_SSTANOMALY <- as.numeric(lb_2014$CRW_SSTANOMALY)
lb2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2014_temp$Site <- 'LB'
lb2014_temp$Year <- 2014
lb2014_temp$avg_ssta <- mean(lb_2014$CRW_SSTANOMALY)
lb2014_temp$sum_ssta <- sum(lb_2014$CRW_SSTANOMALY)

lb_2015 <- subset(lb_2015[-1,])
lb_2015$CRW_SSTANOMALY <- as.numeric(lb_2015$CRW_SSTANOMALY)
lb2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2015_temp$Site <- 'LB'
lb2015_temp$Year <- 2015
lb2015_temp$avg_ssta <- mean(lb_2015$CRW_SSTANOMALY)
lb2015_temp$sum_ssta <- sum(lb_2015$CRW_SSTANOMALY)

lb_2016 <- subset(lb_2016[-1,])
lb_2016$CRW_SSTANOMALY <- as.numeric(lb_2016$CRW_SSTANOMALY)
lb2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2016_temp$Site <- 'LB'
lb2016_temp$Year <- 2016
lb2016_temp$avg_ssta <- mean(lb_2016$CRW_SSTANOMALY)
lb2016_temp$sum_ssta <- sum(lb_2016$CRW_SSTANOMALY)

lb_2017 <- subset(lb_2017[-1,])
lb_2017$CRW_SSTANOMALY <- as.numeric(lb_2017$CRW_SSTANOMALY)
lb2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2017_temp$Site <- 'LB'
lb2017_temp$Year <- 2017
lb2017_temp$avg_ssta <- mean(lb_2017$CRW_SSTANOMALY)
lb2017_temp$sum_ssta <- sum(lb_2017$CRW_SSTANOMALY)

lb_2018 <- subset(lb_2018[-1,])
lb_2018$CRW_SSTANOMALY <- as.numeric(lb_2018$CRW_SSTANOMALY)
lb2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2018_temp$Site <- 'LB'
lb2018_temp$Year <- 2018
lb2018_temp$avg_ssta <- mean(lb_2018$CRW_SSTANOMALY)
lb2018_temp$sum_ssta <- sum(lb_2018$CRW_SSTANOMALY)

lb_2019 <- subset(lb_2019[-1,])
lb_2019$CRW_SSTANOMALY <- as.numeric(lb_2019$CRW_SSTANOMALY)
lb2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lb2019_temp$Site <- 'LB'
lb2019_temp$Year <- 2019
lb2019_temp$avg_ssta <- mean(lb_2019$CRW_SSTANOMALY)
lb2019_temp$sum_ssta <- sum(lb_2019$CRW_SSTANOMALY)

lb_comb <- rbind(lb2012_temp, lb2013_temp, lb2014_temp, lb2015_temp, lb2016_temp, lb2017_temp, lb2018_temp, lb2019_temp)

#LH

lh_2012 <- subset(lh_2012[-1,])
lh_2012$CRW_SSTANOMALY <- as.numeric(lh_2012$CRW_SSTANOMALY)
lh2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2012_temp$Site <- 'LH'
lh2012_temp$Year <- 2012
lh2012_temp$avg_ssta <- mean(lh_2012$CRW_SSTANOMALY)
lh2012_temp$sum_ssta <- sum(lh_2012$CRW_SSTANOMALY)

lh_2013 <- subset(lh_2013[-1,])
lh_2013$CRW_SSTANOMALY <- as.numeric(lh_2013$CRW_SSTANOMALY)
lh2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2013_temp$Site <- 'LH'
lh2013_temp$Year <- 2013
lh2013_temp$avg_ssta <- mean(lh_2013$CRW_SSTANOMALY)
lh2013_temp$sum_ssta <- sum(lh_2013$CRW_SSTANOMALY)

lh_2014 <- subset(lh_2014[-1,])
lh_2014$CRW_SSTANOMALY <- as.numeric(lh_2014$CRW_SSTANOMALY)
lh2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2014_temp$Site <- 'LH'
lh2014_temp$Year <- 2014
lh2014_temp$avg_ssta <- mean(lh_2014$CRW_SSTANOMALY)
lh2014_temp$sum_ssta <- sum(lh_2014$CRW_SSTANOMALY)

lh_2015 <- subset(lh_2015[-1,])
lh_2015$CRW_SSTANOMALY <- as.numeric(lh_2015$CRW_SSTANOMALY)
lh2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2015_temp$Site <- 'LH'
lh2015_temp$Year <- 2015
lh2015_temp$avg_ssta <- mean(lh_2015$CRW_SSTANOMALY)
lh2015_temp$sum_ssta <- sum(lh_2015$CRW_SSTANOMALY)

lh_2016 <- subset(lh_2016[-1,])
lh_2016$CRW_SSTANOMALY <- as.numeric(lh_2016$CRW_SSTANOMALY)
lh2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2016_temp$Site <- 'LH'
lh2016_temp$Year <- 2016
lh2016_temp$avg_ssta <- mean(lh_2016$CRW_SSTANOMALY)
lh2016_temp$sum_ssta <- sum(lh_2016$CRW_SSTANOMALY)

lh_2017 <- subset(lh_2017[-1,])
lh_2017$CRW_SSTANOMALY <- as.numeric(lh_2017$CRW_SSTANOMALY)
lh2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2017_temp$Site <- 'LH'
lh2017_temp$Year <- 2017
lh2017_temp$avg_ssta <- mean(lh_2017$CRW_SSTANOMALY)
lh2017_temp$sum_ssta <- sum(lh_2017$CRW_SSTANOMALY)

lh_2018 <- subset(lh_2018[-1,])
lh_2018$CRW_SSTANOMALY <- as.numeric(lh_2018$CRW_SSTANOMALY)
lh2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2018_temp$Site <- 'LH'
lh2018_temp$Year <- 2018
lh2018_temp$avg_ssta <- mean(lh_2018$CRW_SSTANOMALY)
lh2018_temp$sum_ssta <- sum(lh_2018$CRW_SSTANOMALY)

lh_2019 <- subset(lh_2019[-1,])
lh_2019$CRW_SSTANOMALY <- as.numeric(lh_2019$CRW_SSTANOMALY)
lh2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
lh2019_temp$Site <- 'LH'
lh2019_temp$Year <- 2019
lh2019_temp$avg_ssta <- mean(lh_2019$CRW_SSTANOMALY)
lh2019_temp$sum_ssta <- sum(lh_2019$CRW_SSTANOMALY)

lh_comb <- rbind(lh2012_temp, lh2013_temp, lh2014_temp, lh2015_temp, lh2016_temp, lh2017_temp, lh2018_temp, lh2019_temp)

# Maze

maze_2012 <- subset(maze_2012[-1,])
maze_2012$CRW_SSTANOMALY <- as.numeric(maze_2012$CRW_SSTANOMALY)
maze2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2012_temp$Site <- 'Maze'
maze2012_temp$Year <- 2012
maze2012_temp$avg_ssta <- mean(maze_2012$CRW_SSTANOMALY)
maze2012_temp$sum_ssta <- sum(maze_2012$CRW_SSTANOMALY)

maze_2013 <- subset(maze_2013[-1,])
maze_2013$CRW_SSTANOMALY <- as.numeric(maze_2013$CRW_SSTANOMALY)
maze2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2013_temp$Site <- 'Maze'
maze2013_temp$Year <- 2013
maze2013_temp$avg_ssta <- mean(maze_2013$CRW_SSTANOMALY)
maze2013_temp$sum_ssta <- sum(maze_2013$CRW_SSTANOMALY)

maze_2014 <- subset(maze_2014[-1,])
maze_2014$CRW_SSTANOMALY <- as.numeric(maze_2014$CRW_SSTANOMALY)
maze2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2014_temp$Site <- 'Maze'
maze2014_temp$Year <- 2014
maze2014_temp$avg_ssta <- mean(maze_2014$CRW_SSTANOMALY)
maze2014_temp$sum_ssta <- sum(maze_2014$CRW_SSTANOMALY)

maze_2015 <- subset(maze_2015[-1,])
maze_2015$CRW_SSTANOMALY <- as.numeric(maze_2015$CRW_SSTANOMALY)
maze2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2015_temp$Site <- 'Maze'
maze2015_temp$Year <- 2015
maze2015_temp$avg_ssta <- mean(maze_2015$CRW_SSTANOMALY)
maze2015_temp$sum_ssta <- sum(maze_2015$CRW_SSTANOMALY)

maze_2016 <- subset(maze_2016[-1,])
maze_2016$CRW_SSTANOMALY <- as.numeric(maze_2016$CRW_SSTANOMALY)
maze2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2016_temp$Site <- 'Maze'
maze2016_temp$Year <- 2016
maze2016_temp$avg_ssta <- mean(maze_2016$CRW_SSTANOMALY)
maze2016_temp$sum_ssta <- sum(maze_2016$CRW_SSTANOMALY)

maze_2017 <- subset(maze_2017[-1,])
maze_2017$CRW_SSTANOMALY <- as.numeric(maze_2017$CRW_SSTANOMALY)
maze2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2017_temp$Site <- 'Maze'
maze2017_temp$Year <- 2017
maze2017_temp$avg_ssta <- mean(maze_2017$CRW_SSTANOMALY)
maze2017_temp$sum_ssta <- sum(maze_2017$CRW_SSTANOMALY)

maze_2018 <- subset(maze_2018[-1,])
maze_2018$CRW_SSTANOMALY <- as.numeric(maze_2018$CRW_SSTANOMALY)
maze2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2018_temp$Site <- 'Maze'
maze2018_temp$Year <- 2018
maze2018_temp$avg_ssta <- mean(maze_2018$CRW_SSTANOMALY)
maze2018_temp$sum_ssta <- sum(maze_2018$CRW_SSTANOMALY)

maze_2019 <- subset(maze_2019[-1,])
maze_2019$CRW_SSTANOMALY <- as.numeric(maze_2019$CRW_SSTANOMALY)
maze2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
maze2019_temp$Site <- 'Maze'
maze2019_temp$Year <- 2019
maze2019_temp$avg_ssta <- mean(maze_2019$CRW_SSTANOMALY)
maze2019_temp$sum_ssta <- sum(maze_2019$CRW_SSTANOMALY)

maze_comb <- rbind(maze2012_temp, maze2013_temp, maze2014_temp, maze2015_temp, maze2016_temp, maze2017_temp, maze2018_temp, maze2019_temp)

# MM

mm_2012 <- subset(mm_2012[-1,])
mm_2012$CRW_SSTANOMALY <- as.numeric(mm_2012$CRW_SSTANOMALY)
mm2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2012_temp$Site <- 'MM'
mm2012_temp$Year <- 2012
mm2012_temp$avg_ssta <- mean(mm_2012$CRW_SSTANOMALY)
mm2012_temp$sum_ssta <- sum(mm_2012$CRW_SSTANOMALY)

mm_2013 <- subset(mm_2013[-1,])
mm_2013$CRW_SSTANOMALY <- as.numeric(mm_2013$CRW_SSTANOMALY)
mm2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2013_temp$Site <- 'MM'
mm2013_temp$Year <- 2013
mm2013_temp$avg_ssta <- mean(mm_2013$CRW_SSTANOMALY)
mm2013_temp$sum_ssta <- sum(mm_2013$CRW_SSTANOMALY)

mm_2014 <- subset(mm_2014[-1,])
mm_2014$CRW_SSTANOMALY <- as.numeric(mm_2014$CRW_SSTANOMALY)
mm2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2014_temp$Site <- 'MM'
mm2014_temp$Year <- 2014
mm2014_temp$avg_ssta <- mean(mm_2014$CRW_SSTANOMALY)
mm2014_temp$sum_ssta <- sum(mm_2014$CRW_SSTANOMALY)

mm_2015 <- subset(mm_2015[-1,])
mm_2015$CRW_SSTANOMALY <- as.numeric(mm_2015$CRW_SSTANOMALY)
mm2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2015_temp$Site <- 'MM'
mm2015_temp$Year <- 2015
mm2015_temp$avg_ssta <- mean(mm_2015$CRW_SSTANOMALY)
mm2015_temp$sum_ssta <- sum(mm_2015$CRW_SSTANOMALY)

mm_2016 <- subset(mm_2016[-1,])
mm_2016$CRW_SSTANOMALY <- as.numeric(mm_2016$CRW_SSTANOMALY)
mm2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2016_temp$Site <- 'MM'
mm2016_temp$Year <- 2016
mm2016_temp$avg_ssta <- mean(mm_2016$CRW_SSTANOMALY)
mm2016_temp$sum_ssta <- sum(mm_2016$CRW_SSTANOMALY)

mm_2017 <- subset(mm_2017[-1,])
mm_2017$CRW_SSTANOMALY <- as.numeric(mm_2017$CRW_SSTANOMALY)
mm2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2017_temp$Site <- 'MM'
mm2017_temp$Year <- 2017
mm2017_temp$avg_ssta <- mean(mm_2017$CRW_SSTANOMALY)
mm2017_temp$sum_ssta <- sum(mm_2017$CRW_SSTANOMALY)

mm_2018 <- subset(mm_2018[-1,])
mm_2018$CRW_SSTANOMALY <- as.numeric(mm_2018$CRW_SSTANOMALY)
mm2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2018_temp$Site <- 'MM'
mm2018_temp$Year <- 2018
mm2018_temp$avg_ssta <- mean(mm_2018$CRW_SSTANOMALY)
mm2018_temp$sum_ssta <- sum(mm_2018$CRW_SSTANOMALY)

mm_2019 <- subset(mm_2019[-1,])
mm_2019$CRW_SSTANOMALY <- as.numeric(mm_2019$CRW_SSTANOMALY)
mm2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
mm2019_temp$Site <- 'MM'
mm2019_temp$Year <- 2019
mm2019_temp$avg_ssta <- mean(mm_2019$CRW_SSTANOMALY)
mm2019_temp$sum_ssta <- sum(mm_2019$CRW_SSTANOMALY)

mm_comb <- rbind(mm2012_temp, mm2013_temp, mm2014_temp, mm2015_temp, mm2016_temp, mm2017_temp, mm2018_temp, mm2019_temp)

# Peli0

peli0_2012 <- subset(peli0_2012[-1,])
peli0_2012$CRW_SSTANOMALY <- as.numeric(peli0_2012$CRW_SSTANOMALY)
peli02012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02012_temp$Site <- 'Peli0'
peli02012_temp$Year <- 2012
peli02012_temp$avg_ssta <- mean(peli0_2012$CRW_SSTANOMALY)
peli02012_temp$sum_ssta <- sum(peli0_2012$CRW_SSTANOMALY)

peli0_2013 <- subset(peli0_2013[-1,])
peli0_2013$CRW_SSTANOMALY <- as.numeric(peli0_2013$CRW_SSTANOMALY)
peli02013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02013_temp$Site <- 'Peli0'
peli02013_temp$Year <- 2013
peli02013_temp$avg_ssta <- mean(peli0_2013$CRW_SSTANOMALY)
peli02013_temp$sum_ssta <- sum(peli0_2013$CRW_SSTANOMALY)

peli0_2014 <- subset(peli0_2014[-1,])
peli0_2014$CRW_SSTANOMALY <- as.numeric(peli0_2014$CRW_SSTANOMALY)
peli02014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02014_temp$Site <- 'Peli0'
peli02014_temp$Year <- 2014
peli02014_temp$avg_ssta <- mean(peli0_2014$CRW_SSTANOMALY)
peli02014_temp$sum_ssta <- sum(peli0_2014$CRW_SSTANOMALY)

peli0_2015 <- subset(peli0_2015[-1,])
peli0_2015$CRW_SSTANOMALY <- as.numeric(peli0_2015$CRW_SSTANOMALY)
peli02015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02015_temp$Site <- 'Peli0'
peli02015_temp$Year <- 2015
peli02015_temp$avg_ssta <- mean(peli0_2015$CRW_SSTANOMALY)
peli02015_temp$sum_ssta <- sum(peli0_2015$CRW_SSTANOMALY)

peli0_2016 <- subset(peli0_2016[-1,])
peli0_2016$CRW_SSTANOMALY <- as.numeric(peli0_2016$CRW_SSTANOMALY)
peli02016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02016_temp$Site <- 'Peli0'
peli02016_temp$Year <- 2016
peli02016_temp$avg_ssta <- mean(peli0_2016$CRW_SSTANOMALY)
peli02016_temp$sum_ssta <- sum(peli0_2016$CRW_SSTANOMALY)

peli0_2017 <- subset(peli0_2017[-1,])
peli0_2017$CRW_SSTANOMALY <- as.numeric(peli0_2017$CRW_SSTANOMALY)
peli02017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02017_temp$Site <- 'Peli0'
peli02017_temp$Year <- 2017
peli02017_temp$avg_ssta <- mean(peli0_2017$CRW_SSTANOMALY)
peli02017_temp$sum_ssta <- sum(peli0_2017$CRW_SSTANOMALY)

peli0_2018 <- subset(peli0_2018[-1,])
peli0_2018$CRW_SSTANOMALY <- as.numeric(peli0_2018$CRW_SSTANOMALY)
peli02018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02018_temp$Site <- 'Peli0'
peli02018_temp$Year <- 2018
peli02018_temp$avg_ssta <- mean(peli0_2018$CRW_SSTANOMALY)
peli02018_temp$sum_ssta <- sum(peli0_2018$CRW_SSTANOMALY)

peli0_2019 <- subset(peli0_2019[-1,])
peli0_2019$CRW_SSTANOMALY <- as.numeric(peli0_2019$CRW_SSTANOMALY)
peli02019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli02019_temp$Site <- 'Peli0'
peli02019_temp$Year <- 2019
peli02019_temp$avg_ssta <- mean(peli0_2019$CRW_SSTANOMALY)
peli02019_temp$sum_ssta <- sum(peli0_2019$CRW_SSTANOMALY)

peli0_comb <- rbind(peli02012_temp, peli02013_temp, peli02014_temp, peli02015_temp, peli02016_temp, peli02017_temp, peli02018_temp, peli02019_temp)

# Peli2

peli2_2012 <- subset(peli2_2012[-1,])
peli2_2012$CRW_SSTANOMALY <- as.numeric(peli2_2012$CRW_SSTANOMALY)
peli22012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22012_temp$Site <- 'Peli2'
peli22012_temp$Year <- 2012
peli22012_temp$avg_ssta <- mean(peli2_2012$CRW_SSTANOMALY)
peli22012_temp$sum_ssta <- sum(peli2_2012$CRW_SSTANOMALY)

peli2_2013 <- subset(peli2_2013[-1,])
peli2_2013$CRW_SSTANOMALY <- as.numeric(peli2_2013$CRW_SSTANOMALY)
peli22013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22013_temp$Site <- 'Peli2'
peli22013_temp$Year <- 2013
peli22013_temp$avg_ssta <- mean(peli2_2013$CRW_SSTANOMALY)
peli22013_temp$sum_ssta <- sum(peli2_2013$CRW_SSTANOMALY)

peli2_2014 <- subset(peli2_2014[-1,])
peli2_2014$CRW_SSTANOMALY <- as.numeric(peli2_2014$CRW_SSTANOMALY)
peli22014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22014_temp$Site <- 'Peli2'
peli22014_temp$Year <- 2014
peli22014_temp$avg_ssta <- mean(peli2_2014$CRW_SSTANOMALY)
peli22014_temp$sum_ssta <- sum(peli2_2014$CRW_SSTANOMALY)

peli2_2015 <- subset(peli2_2015[-1,])
peli2_2015$CRW_SSTANOMALY <- as.numeric(peli2_2015$CRW_SSTANOMALY)
peli22015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22015_temp$Site <- 'Peli2'
peli22015_temp$Year <- 2015
peli22015_temp$avg_ssta <- mean(peli2_2015$CRW_SSTANOMALY)
peli22015_temp$sum_ssta <- sum(peli2_2015$CRW_SSTANOMALY)

peli2_2016 <- subset(peli2_2016[-1,])
peli2_2016$CRW_SSTANOMALY <- as.numeric(peli2_2016$CRW_SSTANOMALY)
peli22016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22016_temp$Site <- 'Peli2'
peli22016_temp$Year <- 2016
peli22016_temp$avg_ssta <- mean(peli2_2016$CRW_SSTANOMALY)
peli22016_temp$sum_ssta <- sum(peli2_2016$CRW_SSTANOMALY)

peli2_2017 <- subset(peli2_2017[-1,])
peli2_2017$CRW_SSTANOMALY <- as.numeric(peli2_2017$CRW_SSTANOMALY)
peli22017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22017_temp$Site <- 'Peli2'
peli22017_temp$Year <- 2017
peli22017_temp$avg_ssta <- mean(peli2_2017$CRW_SSTANOMALY)
peli22017_temp$sum_ssta <- sum(peli2_2017$CRW_SSTANOMALY)

peli2_2018 <- subset(peli2_2018[-1,])
peli2_2018$CRW_SSTANOMALY <- as.numeric(peli2_2018$CRW_SSTANOMALY)
peli22018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22018_temp$Site <- 'Peli2'
peli22018_temp$Year <- 2018
peli22018_temp$avg_ssta <- mean(peli2_2018$CRW_SSTANOMALY)
peli22018_temp$sum_ssta <- sum(peli2_2018$CRW_SSTANOMALY)

peli2_2019 <- subset(peli2_2019[-1,])
peli2_2019$CRW_SSTANOMALY <- as.numeric(peli2_2019$CRW_SSTANOMALY)
peli22019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli22019_temp$Site <- 'Peli2'
peli22019_temp$Year <- 2019
peli22019_temp$avg_ssta <- mean(peli2_2019$CRW_SSTANOMALY)
peli22019_temp$sum_ssta <- sum(peli2_2019$CRW_SSTANOMALY)

peli2_comb <- rbind(peli22012_temp, peli22013_temp, peli22014_temp, peli22015_temp, peli22016_temp, peli22017_temp, peli22018_temp, peli22019_temp)

# Peli4

peli4_2012 <- subset(peli4_2012[-1,])
peli4_2012$CRW_SSTANOMALY <- as.numeric(peli4_2012$CRW_SSTANOMALY)
peli42012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42012_temp$Site <- 'Peli4'
peli42012_temp$Year <- 2012
peli42012_temp$avg_ssta <- mean(peli4_2012$CRW_SSTANOMALY)
peli42012_temp$sum_ssta <- sum(peli4_2012$CRW_SSTANOMALY)

peli4_2013 <- subset(peli4_2013[-1,])
peli4_2013$CRW_SSTANOMALY <- as.numeric(peli4_2013$CRW_SSTANOMALY)
peli42013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42013_temp$Site <- 'Peli4'
peli42013_temp$Year <- 2013
peli42013_temp$avg_ssta <- mean(peli4_2013$CRW_SSTANOMALY)
peli42013_temp$sum_ssta <- sum(peli4_2013$CRW_SSTANOMALY)

peli4_2014 <- subset(peli4_2014[-1,])
peli4_2014$CRW_SSTANOMALY <- as.numeric(peli4_2014$CRW_SSTANOMALY)
peli42014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42014_temp$Site <- 'Peli4'
peli42014_temp$Year <- 2014
peli42014_temp$avg_ssta <- mean(peli4_2014$CRW_SSTANOMALY)
peli42014_temp$sum_ssta <- sum(peli4_2014$CRW_SSTANOMALY)

peli4_2015 <- subset(peli4_2015[-1,])
peli4_2015$CRW_SSTANOMALY <- as.numeric(peli4_2015$CRW_SSTANOMALY)
peli42015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42015_temp$Site <- 'Peli4'
peli42015_temp$Year <- 2015
peli42015_temp$avg_ssta <- mean(peli4_2015$CRW_SSTANOMALY)
peli42015_temp$sum_ssta <- sum(peli4_2015$CRW_SSTANOMALY)

peli4_2016 <- subset(peli4_2016[-1,])
peli4_2016$CRW_SSTANOMALY <- as.numeric(peli4_2016$CRW_SSTANOMALY)
peli42016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42016_temp$Site <- 'Peli4'
peli42016_temp$Year <- 2016
peli42016_temp$avg_ssta <- mean(peli4_2016$CRW_SSTANOMALY)
peli42016_temp$sum_ssta <- sum(peli4_2016$CRW_SSTANOMALY)

peli4_2017 <- subset(peli4_2017[-1,])
peli4_2017$CRW_SSTANOMALY <- as.numeric(peli4_2017$CRW_SSTANOMALY)
peli42017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42017_temp$Site <- 'Peli4'
peli42017_temp$Year <- 2017
peli42017_temp$avg_ssta <- mean(peli4_2017$CRW_SSTANOMALY)
peli42017_temp$sum_ssta <- sum(peli4_2017$CRW_SSTANOMALY)

peli4_2018 <- subset(peli4_2018[-1,])
peli4_2018$CRW_SSTANOMALY <- as.numeric(peli4_2018$CRW_SSTANOMALY)
peli42018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42018_temp$Site <- 'Peli4'
peli42018_temp$Year <- 2018
peli42018_temp$avg_ssta <- mean(peli4_2018$CRW_SSTANOMALY)
peli42018_temp$sum_ssta <- sum(peli4_2018$CRW_SSTANOMALY)

peli4_2019 <- subset(peli4_2019[-1,])
peli4_2019$CRW_SSTANOMALY <- as.numeric(peli4_2019$CRW_SSTANOMALY)
peli42019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
peli42019_temp$Site <- 'Peli4'
peli42019_temp$Year <- 2019
peli42019_temp$avg_ssta <- mean(peli4_2019$CRW_SSTANOMALY)
peli42019_temp$sum_ssta <- sum(peli4_2019$CRW_SSTANOMALY)

peli4_comb <- rbind(peli42012_temp, peli42013_temp, peli42014_temp, peli42015_temp, peli42016_temp, peli42017_temp, peli42018_temp, peli42019_temp)

# PK

pk_2012 <- subset(pk_2012[-1,])
pk_2012$CRW_SSTANOMALY <- as.numeric(pk_2012$CRW_SSTANOMALY)
pk2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2012_temp$Site <- 'PK'
pk2012_temp$Year <- 2012
pk2012_temp$avg_ssta <- mean(pk_2012$CRW_SSTANOMALY)
pk2012_temp$sum_ssta <- sum(pk_2012$CRW_SSTANOMALY)

pk_2013 <- subset(pk_2013[-1,])
pk_2013$CRW_SSTANOMALY <- as.numeric(pk_2013$CRW_SSTANOMALY)
pk2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2013_temp$Site <- 'PK'
pk2013_temp$Year <- 2013
pk2013_temp$avg_ssta <- mean(pk_2013$CRW_SSTANOMALY)
pk2013_temp$sum_ssta <- sum(pk_2013$CRW_SSTANOMALY)

pk_2014 <- subset(pk_2014[-1,])
pk_2014$CRW_SSTANOMALY <- as.numeric(pk_2014$CRW_SSTANOMALY)
pk2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2014_temp$Site <- 'PK'
pk2014_temp$Year <- 2014
pk2014_temp$avg_ssta <- mean(pk_2014$CRW_SSTANOMALY)
pk2014_temp$sum_ssta <- sum(pk_2014$CRW_SSTANOMALY)

pk_2015 <- subset(pk_2015[-1,])
pk_2015$CRW_SSTANOMALY <- as.numeric(pk_2015$CRW_SSTANOMALY)
pk2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2015_temp$Site <- 'PK'
pk2015_temp$Year <- 2015
pk2015_temp$avg_ssta <- mean(pk_2015$CRW_SSTANOMALY)
pk2015_temp$sum_ssta <- sum(pk_2015$CRW_SSTANOMALY)

pk_2016 <- subset(pk_2016[-1,])
pk_2016$CRW_SSTANOMALY <- as.numeric(pk_2016$CRW_SSTANOMALY)
pk2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2016_temp$Site <- 'PK'
pk2016_temp$Year <- 2016
pk2016_temp$avg_ssta <- mean(pk_2016$CRW_SSTANOMALY)
pk2016_temp$sum_ssta <- sum(pk_2016$CRW_SSTANOMALY)

pk_2017 <- subset(pk_2017[-1,])
pk_2017$CRW_SSTANOMALY <- as.numeric(pk_2017$CRW_SSTANOMALY)
pk2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2017_temp$Site <- 'PK'
pk2017_temp$Year <- 2017
pk2017_temp$avg_ssta <- mean(pk_2017$CRW_SSTANOMALY)
pk2017_temp$sum_ssta <- sum(pk_2017$CRW_SSTANOMALY)

pk_2018 <- subset(pk_2018[-1,])
pk_2018$CRW_SSTANOMALY <- as.numeric(pk_2018$CRW_SSTANOMALY)
pk2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2018_temp$Site <- 'PK'
pk2018_temp$Year <- 2018
pk2018_temp$avg_ssta <- mean(pk_2018$CRW_SSTANOMALY)
pk2018_temp$sum_ssta <- sum(pk_2018$CRW_SSTANOMALY)

pk_2019 <- subset(pk_2019[-1,])
pk_2019$CRW_SSTANOMALY <- as.numeric(pk_2019$CRW_SSTANOMALY)
pk2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
pk2019_temp$Site <- 'PK'
pk2019_temp$Year <- 2019
pk2019_temp$avg_ssta <- mean(pk_2019$CRW_SSTANOMALY)
pk2019_temp$sum_ssta <- sum(pk_2019$CRW_SSTANOMALY)

pk_comb <- rbind(pk2012_temp, pk2013_temp, pk2014_temp, pk2015_temp, pk2016_temp, pk2017_temp, pk2018_temp, pk2019_temp)

# R1

r1_2012 <- subset(r1_2012[-1,])
r1_2012$CRW_SSTANOMALY <- as.numeric(r1_2012$CRW_SSTANOMALY)
r12012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12012_temp$Site <- 'R1'
r12012_temp$Year <- 2012
r12012_temp$avg_ssta <- mean(r1_2012$CRW_SSTANOMALY)
r12012_temp$sum_ssta <- sum(r1_2012$CRW_SSTANOMALY)

r1_2013 <- subset(r1_2013[-1,])
r1_2013$CRW_SSTANOMALY <- as.numeric(r1_2013$CRW_SSTANOMALY)
r12013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12013_temp$Site <- 'R1'
r12013_temp$Year <- 2013
r12013_temp$avg_ssta <- mean(r1_2013$CRW_SSTANOMALY)
r12013_temp$sum_ssta <- sum(r1_2013$CRW_SSTANOMALY)

r1_2014 <- subset(r1_2014[-1,])
r1_2014$CRW_SSTANOMALY <- as.numeric(r1_2014$CRW_SSTANOMALY)
r12014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12014_temp$Site <- 'R1'
r12014_temp$Year <- 2014
r12014_temp$avg_ssta <- mean(r1_2014$CRW_SSTANOMALY)
r12014_temp$sum_ssta <- sum(r1_2014$CRW_SSTANOMALY)

r1_2015 <- subset(r1_2015[-1,])
r1_2015$CRW_SSTANOMALY <- as.numeric(r1_2015$CRW_SSTANOMALY)
r12015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12015_temp$Site <- 'R1'
r12015_temp$Year <- 2015
r12015_temp$avg_ssta <- mean(r1_2015$CRW_SSTANOMALY)
r12015_temp$sum_ssta <- sum(r1_2015$CRW_SSTANOMALY)

r1_2016 <- subset(r1_2016[-1,])
r1_2016$CRW_SSTANOMALY <- as.numeric(r1_2016$CRW_SSTANOMALY)
r12016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12016_temp$Site <- 'R1'
r12016_temp$Year <- 2016
r12016_temp$avg_ssta <- mean(r1_2016$CRW_SSTANOMALY)
r12016_temp$sum_ssta <- sum(r1_2016$CRW_SSTANOMALY)

r1_2017 <- subset(r1_2017[-1,])
r1_2017$CRW_SSTANOMALY <- as.numeric(r1_2017$CRW_SSTANOMALY)
r12017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12017_temp$Site <- 'R1'
r12017_temp$Year <- 2017
r12017_temp$avg_ssta <- mean(r1_2017$CRW_SSTANOMALY)
r12017_temp$sum_ssta <- sum(r1_2017$CRW_SSTANOMALY)

r1_2018 <- subset(r1_2018[-1,])
r1_2018$CRW_SSTANOMALY <- as.numeric(r1_2018$CRW_SSTANOMALY)
r12018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12018_temp$Site <- 'R1'
r12018_temp$Year <- 2018
r12018_temp$avg_ssta <- mean(r1_2018$CRW_SSTANOMALY)
r12018_temp$sum_ssta <- sum(r1_2018$CRW_SSTANOMALY)

r1_2019 <- subset(r1_2019[-1,])
r1_2019$CRW_SSTANOMALY <- as.numeric(r1_2019$CRW_SSTANOMALY)
r12019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
r12019_temp$Site <- 'R1'
r12019_temp$Year <- 2019
r12019_temp$avg_ssta <- mean(r1_2019$CRW_SSTANOMALY)
r12019_temp$sum_ssta <- sum(r1_2019$CRW_SSTANOMALY)

r1_comb <- rbind(r12012_temp, r12013_temp, r12014_temp, r12015_temp, r12016_temp, r12017_temp, r12018_temp, r12019_temp)

# Rotonda 

rotonda_2012 <- subset(rotonda_2012[-1,])
rotonda_2012$CRW_SSTANOMALY <- as.numeric(rotonda_2012$CRW_SSTANOMALY)
rotonda2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2012_temp$Site <- 'Rotonda'
rotonda2012_temp$Year <- 2012
rotonda2012_temp$avg_ssta <- mean(rotonda_2012$CRW_SSTANOMALY)
rotonda2012_temp$sum_ssta <- sum(rotonda_2012$CRW_SSTANOMALY)

rotonda_2013 <- subset(rotonda_2013[-1,])
rotonda_2013$CRW_SSTANOMALY <- as.numeric(rotonda_2013$CRW_SSTANOMALY)
rotonda2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2013_temp$Site <- 'Rotonda'
rotonda2013_temp$Year <- 2013
rotonda2013_temp$avg_ssta <- mean(rotonda_2013$CRW_SSTANOMALY)
rotonda2013_temp$sum_ssta <- sum(rotonda_2013$CRW_SSTANOMALY)

rotonda_2014 <- subset(rotonda_2014[-1,])
rotonda_2014$CRW_SSTANOMALY <- as.numeric(rotonda_2014$CRW_SSTANOMALY)
rotonda2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2014_temp$Site <- 'Rotonda'
rotonda2014_temp$Year <- 2014
rotonda2014_temp$avg_ssta <- mean(rotonda_2014$CRW_SSTANOMALY)
rotonda2014_temp$sum_ssta <- sum(rotonda_2014$CRW_SSTANOMALY)

rotonda_2015 <- subset(rotonda_2015[-1,])
rotonda_2015$CRW_SSTANOMALY <- as.numeric(rotonda_2015$CRW_SSTANOMALY)
rotonda2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2015_temp$Site <- 'Rotonda'
rotonda2015_temp$Year <- 2015
rotonda2015_temp$avg_ssta <- mean(rotonda_2015$CRW_SSTANOMALY)
rotonda2015_temp$sum_ssta <- sum(rotonda_2015$CRW_SSTANOMALY)

rotonda_2016 <- subset(rotonda_2016[-1,])
rotonda_2016$CRW_SSTANOMALY <- as.numeric(rotonda_2016$CRW_SSTANOMALY)
rotonda2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2016_temp$Site <- 'Rotonda'
rotonda2016_temp$Year <- 2016
rotonda2016_temp$avg_ssta <- mean(rotonda_2016$CRW_SSTANOMALY)
rotonda2016_temp$sum_ssta <- sum(rotonda_2016$CRW_SSTANOMALY)

rotonda_2017 <- subset(rotonda_2017[-1,])
rotonda_2017$CRW_SSTANOMALY <- as.numeric(rotonda_2017$CRW_SSTANOMALY)
rotonda2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2017_temp$Site <- 'Rotonda'
rotonda2017_temp$Year <- 2017
rotonda2017_temp$avg_ssta <- mean(rotonda_2017$CRW_SSTANOMALY)
rotonda2017_temp$sum_ssta <- sum(rotonda_2017$CRW_SSTANOMALY)

rotonda_2018 <- subset(rotonda_2018[-1,])
rotonda_2018$CRW_SSTANOMALY <- as.numeric(rotonda_2018$CRW_SSTANOMALY)
rotonda2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2018_temp$Site <- 'Rotonda'
rotonda2018_temp$Year <- 2018
rotonda2018_temp$avg_ssta <- mean(rotonda_2018$CRW_SSTANOMALY)
rotonda2018_temp$sum_ssta <- sum(rotonda_2018$CRW_SSTANOMALY)

rotonda_2019 <- subset(rotonda_2019[-1,])
rotonda_2019$CRW_SSTANOMALY <- as.numeric(rotonda_2019$CRW_SSTANOMALY)
rotonda2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
rotonda2019_temp$Site <- 'Rotonda'
rotonda2019_temp$Year <- 2019
rotonda2019_temp$avg_ssta <- mean(rotonda_2019$CRW_SSTANOMALY)
rotonda2019_temp$sum_ssta <- sum(rotonda_2019$CRW_SSTANOMALY)

rotonda_comb <- rbind(rotonda2012_temp, rotonda2013_temp, rotonda2014_temp, rotonda2015_temp, rotonda2016_temp, rotonda2017_temp, rotonda2018_temp, rotonda2019_temp)

# SAM

sam_2012 <- subset(sam_2012[-1,])
sam_2012$CRW_SSTANOMALY <- as.numeric(sam_2012$CRW_SSTANOMALY)
sam2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2012_temp$Site <- 'SAM'
sam2012_temp$Year <- 2012
sam2012_temp$avg_ssta <- mean(sam_2012$CRW_SSTANOMALY)
sam2012_temp$sum_ssta <- sum(sam_2012$CRW_SSTANOMALY)

sam_2013 <- subset(sam_2013[-1,])
sam_2013$CRW_SSTANOMALY <- as.numeric(sam_2013$CRW_SSTANOMALY)
sam2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2013_temp$Site <- 'SAM'
sam2013_temp$Year <- 2013
sam2013_temp$avg_ssta <- mean(sam_2013$CRW_SSTANOMALY)
sam2013_temp$sum_ssta <- sum(sam_2013$CRW_SSTANOMALY)

sam_2014 <- subset(sam_2014[-1,])
sam_2014$CRW_SSTANOMALY <- as.numeric(sam_2014$CRW_SSTANOMALY)
sam2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2014_temp$Site <- 'SAM'
sam2014_temp$Year <- 2014
sam2014_temp$avg_ssta <- mean(sam_2014$CRW_SSTANOMALY)
sam2014_temp$sum_ssta <- sum(sam_2014$CRW_SSTANOMALY)

sam_2015 <- subset(sam_2015[-1,])
sam_2015$CRW_SSTANOMALY <- as.numeric(sam_2015$CRW_SSTANOMALY)
sam2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2015_temp$Site <- 'SAM'
sam2015_temp$Year <- 2015
sam2015_temp$avg_ssta <- mean(sam_2015$CRW_SSTANOMALY)
sam2015_temp$sum_ssta <- sum(sam_2015$CRW_SSTANOMALY)

sam_2016 <- subset(sam_2016[-1,])
sam_2016$CRW_SSTANOMALY <- as.numeric(sam_2016$CRW_SSTANOMALY)
sam2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2016_temp$Site <- 'SAM'
sam2016_temp$Year <- 2016
sam2016_temp$avg_ssta <- mean(sam_2016$CRW_SSTANOMALY)
sam2016_temp$sum_ssta <- sum(sam_2016$CRW_SSTANOMALY)

sam_2017 <- subset(sam_2017[-1,])
sam_2017$CRW_SSTANOMALY <- as.numeric(sam_2017$CRW_SSTANOMALY)
sam2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2017_temp$Site <- 'SAM'
sam2017_temp$Year <- 2017
sam2017_temp$avg_ssta <- mean(sam_2017$CRW_SSTANOMALY)
sam2017_temp$sum_ssta <- sum(sam_2017$CRW_SSTANOMALY)

sam_2018 <- subset(sam_2018[-1,])
sam_2018$CRW_SSTANOMALY <- as.numeric(sam_2018$CRW_SSTANOMALY)
sam2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2018_temp$Site <- 'SAM'
sam2018_temp$Year <- 2018
sam2018_temp$avg_ssta <- mean(sam_2018$CRW_SSTANOMALY)
sam2018_temp$sum_ssta <- sum(sam_2018$CRW_SSTANOMALY)

sam_2019 <- subset(sam_2019[-1,])
sam_2019$CRW_SSTANOMALY <- as.numeric(sam_2019$CRW_SSTANOMALY)
sam2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sam2019_temp$Site <- 'SAM'
sam2019_temp$Year <- 2019
sam2019_temp$avg_ssta <- mean(sam_2019$CRW_SSTANOMALY)
sam2019_temp$sum_ssta <- sum(sam_2019$CRW_SSTANOMALY)

sam_comb <- rbind(sam2012_temp, sam2013_temp, sam2014_temp, sam2015_temp, sam2016_temp, sam2017_temp, sam2018_temp, sam2019_temp)

# SB

sb_2012 <- subset(sb_2012[-1,])
sb_2012$CRW_SSTANOMALY <- as.numeric(sb_2012$CRW_SSTANOMALY)
sb2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2012_temp$Site <- 'SB'
sb2012_temp$Year <- 2012
sb2012_temp$avg_ssta <- mean(sb_2012$CRW_SSTANOMALY)
sb2012_temp$sum_ssta <- sum(sb_2012$CRW_SSTANOMALY)

sb_2013 <- subset(sb_2013[-1,])
sb_2013$CRW_SSTANOMALY <- as.numeric(sb_2013$CRW_SSTANOMALY)
sb2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2013_temp$Site <- 'SB'
sb2013_temp$Year <- 2013
sb2013_temp$avg_ssta <- mean(sb_2013$CRW_SSTANOMALY)
sb2013_temp$sum_ssta <- sum(sb_2013$CRW_SSTANOMALY)

sb_2014 <- subset(sb_2014[-1,])
sb_2014$CRW_SSTANOMALY <- as.numeric(sb_2014$CRW_SSTANOMALY)
sb2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2014_temp$Site <- 'SB'
sb2014_temp$Year <- 2014
sb2014_temp$avg_ssta <- mean(sb_2014$CRW_SSTANOMALY)
sb2014_temp$sum_ssta <- sum(sb_2014$CRW_SSTANOMALY)

sb_2015 <- subset(sb_2015[-1,])
sb_2015$CRW_SSTANOMALY <- as.numeric(sb_2015$CRW_SSTANOMALY)
sb2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2015_temp$Site <- 'SB'
sb2015_temp$Year <- 2015
sb2015_temp$avg_ssta <- mean(sb_2015$CRW_SSTANOMALY)
sb2015_temp$sum_ssta <- sum(sb_2015$CRW_SSTANOMALY)

sb_2016 <- subset(sb_2016[-1,])
sb_2016$CRW_SSTANOMALY <- as.numeric(sb_2016$CRW_SSTANOMALY)
sb2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2016_temp$Site <- 'SB'
sb2016_temp$Year <- 2016
sb2016_temp$avg_ssta <- mean(sb_2016$CRW_SSTANOMALY)
sb2016_temp$sum_ssta <- sum(sb_2016$CRW_SSTANOMALY)

sb_2017 <- subset(sb_2017[-1,])
sb_2017$CRW_SSTANOMALY <- as.numeric(sb_2017$CRW_SSTANOMALY)
sb2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2017_temp$Site <- 'SB'
sb2017_temp$Year <- 2017
sb2017_temp$avg_ssta <- mean(sb_2017$CRW_SSTANOMALY)
sb2017_temp$sum_ssta <- sum(sb_2017$CRW_SSTANOMALY)

sb_2018 <- subset(sb_2018[-1,])
sb_2018$CRW_SSTANOMALY <- as.numeric(sb_2018$CRW_SSTANOMALY)
sb2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2018_temp$Site <- 'SB'
sb2018_temp$Year <- 2018
sb2018_temp$avg_ssta <- mean(sb_2018$CRW_SSTANOMALY)
sb2018_temp$sum_ssta <- sum(sb_2018$CRW_SSTANOMALY)

sb_2019 <- subset(sb_2019[-1,])
sb_2019$CRW_SSTANOMALY <- as.numeric(sb_2019$CRW_SSTANOMALY)
sb2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sb2019_temp$Site <- 'SB'
sb2019_temp$Year <- 2019
sb2019_temp$avg_ssta <- mean(sb_2019$CRW_SSTANOMALY)
sb2019_temp$sum_ssta <- sum(sb_2019$CRW_SSTANOMALY)

sb_comb <- rbind(sb2012_temp, sb2013_temp, sb2014_temp, sb2015_temp, sb2016_temp, sb2017_temp, sb2018_temp, sb2019_temp)

# SP

sp_2012 <- subset(sp_2012[-1,])
sp_2012$CRW_SSTANOMALY <- as.numeric(sp_2012$CRW_SSTANOMALY)
sp2012_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2012_temp$Site <- 'SP'
sp2012_temp$Year <- 2012
sp2012_temp$avg_ssta <- mean(sp_2012$CRW_SSTANOMALY)
sp2012_temp$sum_ssta <- sum(sp_2012$CRW_SSTANOMALY)

sp_2013 <- subset(sp_2013[-1,])
sp_2013$CRW_SSTANOMALY <- as.numeric(sp_2013$CRW_SSTANOMALY)
sp2013_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2013_temp$Site <- 'SP'
sp2013_temp$Year <- 2013
sp2013_temp$avg_ssta <- mean(sp_2013$CRW_SSTANOMALY)
sp2013_temp$sum_ssta <- sum(sp_2013$CRW_SSTANOMALY)

sp_2014 <- subset(sp_2014[-1,])
sp_2014$CRW_SSTANOMALY <- as.numeric(sp_2014$CRW_SSTANOMALY)
sp2014_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2014_temp$Site <- 'SP'
sp2014_temp$Year <- 2014
sp2014_temp$avg_ssta <- mean(sp_2014$CRW_SSTANOMALY)
sp2014_temp$sum_ssta <- sum(sp_2014$CRW_SSTANOMALY)

sp_2015 <- subset(sp_2015[-1,])
sp_2015$CRW_SSTANOMALY <- as.numeric(sp_2015$CRW_SSTANOMALY)
sp2015_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2015_temp$Site <- 'SP'
sp2015_temp$Year <- 2015
sp2015_temp$avg_ssta <- mean(sp_2015$CRW_SSTANOMALY)
sp2015_temp$sum_ssta <- sum(sp_2015$CRW_SSTANOMALY)

sp_2016 <- subset(sp_2016[-1,])
sp_2016$CRW_SSTANOMALY <- as.numeric(sp_2016$CRW_SSTANOMALY)
sp2016_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2016_temp$Site <- 'SP'
sp2016_temp$Year <- 2016
sp2016_temp$avg_ssta <- mean(sp_2016$CRW_SSTANOMALY)
sp2016_temp$sum_ssta <- sum(sp_2016$CRW_SSTANOMALY)

sp_2017 <- subset(sp_2017[-1,])
sp_2017$CRW_SSTANOMALY <- as.numeric(sp_2017$CRW_SSTANOMALY)
sp2017_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2017_temp$Site <- 'SP'
sp2017_temp$Year <- 2017
sp2017_temp$avg_ssta <- mean(sp_2017$CRW_SSTANOMALY)
sp2017_temp$sum_ssta <- sum(sp_2017$CRW_SSTANOMALY)

sp_2018 <- subset(sp_2018[-1,])
sp_2018$CRW_SSTANOMALY <- as.numeric(sp_2018$CRW_SSTANOMALY)
sp2018_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2018_temp$Site <- 'SP'
sp2018_temp$Year <- 2018
sp2018_temp$avg_ssta <- mean(sp_2018$CRW_SSTANOMALY)
sp2018_temp$sum_ssta <- sum(sp_2018$CRW_SSTANOMALY)

sp_2019 <- subset(sp_2019[-1,])
sp_2019$CRW_SSTANOMALY <- as.numeric(sp_2019$CRW_SSTANOMALY)
sp2019_temp <- data.frame(Site, Year, avg_ssta, sum_ssta)
sp2019_temp$Site <- 'SP'
sp2019_temp$Year <- 2019
sp2019_temp$avg_ssta <- mean(sp_2019$CRW_SSTANOMALY)
sp2019_temp$sum_ssta <- sum(sp_2019$CRW_SSTANOMALY)

sp_comb <- rbind(sp2012_temp, sp2013_temp, sp2014_temp, sp2015_temp, sp2016_temp, sp2017_temp, sp2018_temp, sp2019_temp)

# All CRW values in 1 df

crw_df <- rbind(ald_comb, arena_comb, b3_comb, bcw_comb, bf_comb, canyon_comb, cv_comb, elavion_comb, jenna2_comb, kal_comb, kds_comb, kg_comb, lb_comb, lh_comb, maze_comb, mm_comb, peli0_comb, peli2_comb, peli4_comb, pk_comb, r1_comb, rotonda_comb, sam_comb, sb_comb, sp_comb)

table(crw_df$Site)

Monitoring_df$Site <- gsub('SpBay', 'SP', Monitoring_df$Site)
table(Monitoring_df$Site)

Monitoring_with_crw <- left_join(Monitoring_df, crw_df, by =c("Site", "Year"))

setwd(monitoring_wd)

write.csv(Monitoring_with_crw, file = "Monitoring_with_CRW_SSTANOMALY.csv")
