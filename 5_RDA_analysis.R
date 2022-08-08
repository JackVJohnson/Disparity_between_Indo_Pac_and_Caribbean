library(vegan)
library(tidyverse)
library(ggrepel)

monitoring_wd <- "C:/Users/40274182/OneDrive - Queen's University Belfast/PhD/Chapters/Monitoring_data/Working_data_sets/Output"

setwd(monitoring_wd)

Monitoring_df <- read.csv("Monitoring_with_CRW_SSTANOMALY.csv")
Monitoring_df <- subset(Monitoring_df, !is.na(avg_ssta))

Monitoring_df$Location <- NA

Indonesia_sites <- filter(Monitoring_df, Site %in% c('B3', 'KAL', 'KDS', 'PK', 'R1', 'SAM'))
Honduras_sites <- filter(Monitoring_df, Site %in% c('Aldrids', 'Arena', 'BCW', 'BF', 'Canyon', 'CV', 'ElAvion', 'Jenna2', 'KG', 'LB', 'LH', 'Maze', 'MM', 'Peli0', 'Peli2', 'Peli4', 'Rotonda', 'SB', 'SP', 'SpBay')) 

table(Honduras_sites$Site)


Indonesia_sites$Location <- 'Indonesia'
Honduras_sites$Location <- 'Honduras'

Monitoring_df <- rbind(Indonesia_sites, Honduras_sites)

rm(Indonesia_sites)
rm(Honduras_sites)

# combine turf algae from utila and algae from honduras as 1 column 
Monitoring_df$AL <- Monitoring_df$A + Monitoring_df$TA + Monitoring_df$MA
Monitoring_df <- select(Monitoring_df, -c(TA, A, MA))

Monitoring_df$percent_total <- rowSums(Monitoring_df[,c(8:29, 35)])
summary(Monitoring_df$percent_total)
summary(Monitoring_df$AL)

df_temp <- Monitoring_df
df_temp$AL <- NA
df_temp$AL <- Monitoring_df$AL
#df_temp$Location <- Monitoring_df$Location

summary(df_temp$MI)
summary(df_temp$MIL)

df_temp$MI <- NA
df_temp$MI <- Monitoring_df$MI + Monitoring_df$MIL
summary(df_temp$MI)

df_temp <- select(df_temp, -MIL)

rm(Monitoring_df)

Indo_df <- subset(df_temp, Location == "Indonesia")
Hond_df <- subset(df_temp, Location == "Honduras")


ind_rda <- Indo_df %>%
  group_by(Site, Year) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL', 'avg_ssta'), mean)

ind_rda$id <- as.character(1:nrow(ind_rda))

env_ind <- select(ind_rda, c(avg_ssta, Year, id))
env_ind <- column_to_rownames(env_ind, "id")
#env_ind <- env_ind[,-1]

names(ind_rda)
ind_rda <- select(ind_rda,-c("Site", "Year", "avg_ssta"))
ind_rda <- column_to_rownames(ind_rda, "id")
ind_rda <- ind_rda[,-1]     
str(env_ind$avg_ssta)
str(env_ind$Year)
str(env_ind$Site)


all.equal(rownames(ind_rda), rownames(env_ind))

ind_pca <- rda(ind_rda)
ind_pca
str(ind_pca)

mod_ind <- rda(ind_rda , env_ind)
mod_ind
RsquareAdj(mod_ind)

plot(mod_ind, type = "n", scaling = 1)
orditorp(mod_ind, display='sp', cex=1.5, scaling=1, col='blue')
text(mod_ind, display='bp', col='red', cex=2, lwd = 3)

# rda for hondurasd


hon_rda <- Hond_df %>%
  group_by(Site, Year) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL', 'avg_ssta'), mean)

hon_rda$id <- as.character(1:nrow(hon_rda))

env_hon <- select(hon_rda, c(avg_ssta, Year, id))
env_hon <- column_to_rownames(env_hon, "id")
#env_hon <- env_hon[,-1]

names(hon_rda)
hon_rda <- select(hon_rda,-c("Site", "Year", "avg_ssta"))
hon_rda <- column_to_rownames(hon_rda, "id")
hon_rda <- hon_rda[,-1]     
str(env_hon$avg_ssta)
str(env_hon$Year)

all.equal(rownames(hon_rda), rownames(env_hon))
env_hon$avg_ssta <- as.numeric(env_hon$avg_ssta)

hon_pca <- rda(hon_rda)
hon_pca
str(hon_pca)

mod_hon <- rda(hon_rda , env_hon)
mod_hon

plot(mod_hon, type = "n", scaling = 1)
orditorp(mod_hon, display='sp', cex=1.5, scaling=1, col='blue')
text(mod_hon, display='bp', col='red', cex=2, lwd = 3)

dev.off()

png("Figure_4.png", height = 3000, width = 6000, res = 350)
par(mfrow=c(1,2))
plot(mod_ind, type = "n", scaling = 1)
orditorp(mod_ind, display='sp', cex=1.2, scaling=1, col='blue')
text(mod_ind, display='bp', col='red', cex=.8, lwd = .5)
title("Indonesia")

plot(mod_hon, type = "n", scaling = 1)
orditorp(mod_hon, display='sp', cex=1.2, scaling=1, col='blue')
text(mod_hon, display='bp', col='red', cex=.8, lwd = .5)
title("Honduras")


dev.off()
