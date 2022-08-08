library(tidyverse)

# set cortad wd

# set mointoring wd

monitoring_wd <- "C:/Users/40274182/OneDrive - Queen's University Belfast/PhD/Chapters/Monitoring_data/Working_data_sets"
setwd(monitoring_wd)

hoga_benthic <- read.csv('Hoga_Benthic.csv')
honduras_benthic <- read.csv('Honduras_Benthic.csv')

# data cleaning Hoga

head(hoga_benthic)
hoga_benthic <- filter(hoga_benthic, Year > 2011)
honduras_benthic <- filter(honduras_benthic, Year > 2011)

hoga_benthic <- hoga_benthic[!is.na(hoga_benthic$Year),]
honduras_benthic <- honduras_benthic[!is.na(honduras_benthic$Year),]

# create a new column for latitude and longitude 

hoga_benthic["Latitude_Degrees"] <- NA
hoga_benthic["Longitude_Degrees"] <- NA

# hogs site info 

#B3	Buoy 3	05°28.40S  123°45.45E
#KAL	Kaledupa 1	05°28.22S  123°43.47E
#KDS	Kaledupa Double Spur	05°27.432S  123°42.412E
#PK	Pak Kasims	05°27.569S  123°45.179E
#R1	Ridge 1	05°26.565S  123°45.138E
#SAM	Sampela	05°28.975S  123°44.95E

# filter data by site

b3data <- filter(hoga_benthic, Site == 'B3')
b3data$Latitude_Degrees <- -5.477778
b3data$Longitude_Degrees <- 123.7625

kaldata <- filter(hoga_benthic, Site =='KAL')
kaldata$Latitude_Degrees <- -5.472778
kaldata$Longitude_Degrees <- 123.729722

kdsdata <- filter(hoga_benthic, Site == 'KDS')
kdsdata$Latitude_Degrees <- -5.461944
kdsdata$Longitude_Degrees <- 123.711389

pkdata <- filter(hoga_benthic, Site == 'PK')
pkdata$Latitude_Degrees <- -5.465833
pkdata$Longitude_Degrees <- 123.755

r1data <- filter(hoga_benthic, Site =='R1')
r1data$Latitude_Degrees <- -5.449167
r1data$Longitude_Degrees <- 123.753889

samdata <- filter(hoga_benthic, Site == 'SAM')
samdata$Latitude_Degrees <- -5.482917
samdata$Longitude_Degrees <- 123.749167

hoga_combined <- rbind(b3data, kaldata, kdsdata, pkdata, r1data, samdata)

table(hoga_combined$Latitude_Degrees)
table(hoga_combined$Longitude_Degrees)
# honduras data are already provided in degree decimals 

honduras_benthic["Latitude_Degrees"] <- NA
honduras_benthic["Longitude_Degrees"] <- NA

table(honduras_benthic$Site)

aldridsdata <- filter(honduras_benthic, Site == 'Aldrids')
aldridsdata$Latitude_Degrees <- 15.86496
aldridsdata$Longitude_Degrees <- -87.49841

arenadata <- filter(honduras_benthic, Site == 'Arena')
arenadata$Latitude_Degrees <- 15.954194
arenadata$Longitude_Degrees <- -86.517528

BCWdata <- filter(honduras_benthic, Site == 'BCW')
BCWdata$Latitude_Degrees <- 16.08305968
BCWdata$Longitude_Degrees <- -86.91699554

BFdata <- filter(honduras_benthic, Site == 'BF')
BFdata$Latitude_Degrees <- 15.86351
BFdata$Longitude_Degrees <- -87.49525

canyondata <- filter(honduras_benthic, Site == 'Canyon')
canyondata$Latitude_Degrees <- 15.86414
canyondata$Longitude_Degrees <- -87.50662

CVdata <- filter(honduras_benthic, Site == 'CV')
CVdata$Latitude_Degrees <- 16.08823274
CVdata$Longitude_Degrees <- -86.91094506

elaviondata <- filter(honduras_benthic, Site == 'ElAvion')
elaviondata$Latitude_Degrees <- 15.952944
elaviondata$Longitude_Degrees <- -86.473750

jenna2data <- filter(honduras_benthic, Site == 'Jenna2')
jenna2data$Latitude_Degrees <- 15.958333
jenna2data$Longitude_Degrees <-  -86.503889

KGdata <- filter(honduras_benthic, Site == 'KG')
KGdata$Latitude_Degrees <- 15.86550
KGdata$Longitude_Degrees <- -87.50017

LBdata <- filter(honduras_benthic, Site == 'LB')
LBdata$Latitude_Degrees <- 16.07926302
LBdata$Longitude_Degrees <- -86.92942222

LHdata <- filter(honduras_benthic, Site == 'LH')
LHdata$Latitude_Degrees <- 16.08498
LHdata$Longitude_Degrees <- -86.90032

mazedata <- filter(honduras_benthic, Site == 'Maze')
mazedata$Latitude_Degrees <- 16.11266214
mazedata$Longitude_Degrees <- -86.94911793

mmdata <- filter(honduras_benthic, Site == 'MM')
mmdata$Latitude_Degrees <- 15.86497
mmdata$Longitude_Degrees <- -87.4973

peli0data <- filter(honduras_benthic, Site == 'Peli0')
peli0data$Latitude_Degrees <- 15.972778
peli0data$Longitude_Degrees <- -86.488889

peli2data <- filter(honduras_benthic, Site == 'Peli2')
peli2data$Latitude_Degrees <- 15.977583
peli2data$Longitude_Degrees <- -86.484583

peli4data <- filter(honduras_benthic, Site == 'Peli4')
peli4data$Latitude_Degrees <- 15.980389
peli4data$Longitude_Degrees <- -86.478639

PV2data <- filter(honduras_benthic, Site == 'PV2')
PV2data$Latitude_Degrees <- 15.80336
PV2data$Longitude_Degrees <- -87.43955

rotondadata <- filter(honduras_benthic, Site == 'Rotonda')
rotondadata$Latitude_Degrees <- 15.86561
rotondadata$Longitude_Degrees <- -87.50680

SBdata <- filter(honduras_benthic, Site == 'SB')
SBdata$Latitude_Degrees <- 16.089602
SBdata$Longitude_Degrees <- -86.9035006

SPdata <- filter(honduras_benthic, Site == 'SP')
SPdata$Latitude_Degrees <- 16.0689055 
SPdata$Longitude_Degrees <- -86.95477948

spbaydata <- filter(honduras_benthic, Site == 'SpBay')
spbaydata$Latitude_Degrees <-16.088233
spbaydata$Longitude_Degrees <- -86.910945

honduras_combined <- rbind(aldridsdata, arenadata, BCWdata, BFdata, canyondata, CVdata, elaviondata, jenna2data, KGdata, LBdata, LHdata, mazedata, mmdata, peli0data, peli2data, peli4data, PV2data, rotondadata, SBdata, SPdata, spbaydata)

175731-175140
# 591 missing surveys are the 591 surveys from Nellys reef which we cannot obtain lat-lon coordiantes for 

table(honduras_combined$Latitude_Degrees)
table(honduras_combined$Longitude_Degrees)

names(honduras_combined)
names(hoga_combined)

# uniqueid, year, site, transect, benthiccat, intercept, lat, lon

honduras_combined <- select(honduras_combined,!c(Location, Depth, Morphology, Genus, Species))
hoga_combined <- select(hoga_combined, !c(Date, ReefType, Morphology, Genus, Species))

global_benthic_data <- rbind(honduras_combined, hoga_combined)

# workspace tidying
rm(aldridsdata, arenadata, b3data, BCWdata, BFdata, canyondata, CVdata, elaviondata, hoga_benthic, hoga_combined, honduras_benthic, honduras_combined, jenna2data, kaldata, kdsdata, KGdata, LBdata, LHdata, mazedata, mmdata, peli0data, peli2data, peli4data, pkdata, PV2data, r1data, rotondadata, samdata, SBdata, spbaydata, SPdata)

#group data by transect for benthic cat  
# 200 rows = 50 meter survey, however not all surveys are the full 50m 

table(global_benthic_data$UniqueID)
table(global_benthic_data$BenthicCat)

df2 <- global_benthic_data %>% group_by(UniqueID, Site, Year, Latitude_Degrees, Longitude_Degrees) %>% count(BenthicCat) 

df3 <- df2 %>% spread(BenthicCat, n)
df3[is.na(df3)] <- 0

df3[,6:30] <- df3[,6:30] / 201 * 100 

df3$percent_total <- rowSums(df3[,c(6:30)])

table(df3$percent_total)

df4 <- filter(df3, percent_total == 100)

output_wd <- "C:/Users/40274182/OneDrive - Queen's University Belfast/PhD/Chapters/Monitoring_data/Working_data_sets/Output"
setwd(output_wd)

write.csv(df4, file = "Summarised_benthic_data.csv")
