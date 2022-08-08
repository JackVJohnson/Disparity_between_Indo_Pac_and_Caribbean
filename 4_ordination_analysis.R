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

# combine turf algae from utila and algae from honduras as 1 column 
Monitoring_df$AL <- Monitoring_df$A + Monitoring_df$TA + Monitoring_df$MA
Monitoring_df <- select(Monitoring_df, -c(TA, A, MA))

Monitoring_df$percent_total <- rowSums(Monitoring_df[,c(8:29, 35)])
summary(Monitoring_df$percent_total)
summary(Monitoring_df$AL)

df_temp <- Monitoring_df
df_temp$AL <- NA
df_temp$AL <- Monitoring_df$AL
df_temp$Location <- Monitoring_df$Location

summary(df_temp$MI)
summary(df_temp$MIL)

df_temp$MI <- NA
df_temp$MI <- Monitoring_df$MI + Monitoring_df$MIL
summary(df_temp$MI)

df_temp <- select(df_temp, -MIL)

# taxa resposne pre 2016

df_pre2016_ind <- filter(df_temp, Year < 2016 & Location == "Indonesia")

summary(Monitoring_df)

newdf_indpre <- df_pre2016_ind %>%
  group_by(Site, Year) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL'), mean)

newdf_indpre <- newdf_indpre[,-1]
newdf_indpre <- newdf_indpre[,-1]

indpre_mds <- metaMDS(newdf_indpre, distance = "euclidean", autotransform = FALSE)

plot(indpre_mds)

indpre_spp_fit <- envfit(indpre_mds, newdf_indpre, permutations = 999)
spp.scrs <- as.data.frame(scores(indpre_spp_fit, display = "vectors"))
spp.scrs <- cbind(spp.scrs, Benthic_component = rownames(spp.scrs)) #add species names to dataframe

# stress = 0.185

indpre_taxa_plot <- ggplot(spp.scrs, aes(x=NMDS1, y=NMDS2)) +  
  geom_segment(data = spp.scrs, aes(x = 0, xend=NMDS1, y=0, yend=NMDS2), lineend = "butt", colour = "grey10", lwd=0.8) + #add vector arrows of significant species
  ggrepel::geom_text_repel(data = spp.scrs, aes(x=NMDS1, y=NMDS2, label = Benthic_component), cex = 10, direction = "both", segment.size = 0.25)+ #add labels for species, use ggrepel::geom_text_repel so that labels do not overlap
  theme_classic() +
  annotate("text", x = 0.7, y = 0.8, label = "stress = 0.185", fontface=2, size = 10) +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=0), axis.text.x = element_text(size=0)) +
  theme(plot.title = element_text(size=26, face="bold")) +
  labs(y= "NMDS 1", x="NMDS 2", title = "A") 
indpre_taxa_plot

######################################### 
##### post 2016

df_pre2016_ind <- filter(df_temp, Year > 2015 & Location == "Indonesia")

summary(Monitoring_df)

newdf_indpost <- df_pre2016_ind %>%
  group_by(Site, Year) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL'), mean)

newdf_indpost <- newdf_indpost[,-1]
newdf_indpost <- newdf_indpost[,-1]

indpre_mds <- metaMDS(newdf_indpost, distance = "euclidean", autotransform = FALSE)

plot(indpre_mds)

indpre_spp_fit <- envfit(indpre_mds, newdf_indpost, permutations = 999)
spp.scrs <- as.data.frame(scores(indpre_spp_fit, display = "vectors"))
spp.scrs <- cbind(spp.scrs, Benthic_component = rownames(spp.scrs)) #add species names to dataframe

# stress = 0.133

indpost_taxa_plot <- ggplot(spp.scrs, aes(x=NMDS1, y=NMDS2)) +  
  geom_segment(data = spp.scrs, aes(x = 0, xend=NMDS1, y=0, yend=NMDS2),lineend = "butt", colour = "grey10", lwd=0.8) + #add vector arrows of significant species
  ggrepel::geom_text_repel(data = spp.scrs, aes(x=NMDS1, y=NMDS2, label = Benthic_component), cex = 10, direction = "both", segment.size = 0.25)+ #add labels for species, use ggrepel::geom_text_repel so that labels do not overlap
  theme_classic() +
  annotate("text", x = 0.7, y = 0.8, label = "stress = 0.133", fontface=2, size = 10) +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=0), axis.text.x = element_text(size=0)) +
  theme(plot.title = element_text(size=26, face="bold")) +
  labs(y= "NMDS 1", x="NMDS 2", title = "B") 
indpost_taxa_plot

library(patchwork)
indpre_taxa_plot | indpost_taxa_plot


#######################

df_ind <- filter(df_temp, Location == "Indonesia")

newdf_indchange <- df_ind %>%
  group_by(Site, Year, Location) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL', 'avg_ssta' ), mean)

dfenv <- newdf_indchange
dfenv_pre <- filter(dfenv, Year < 2016)
dfenv_post <- filter(dfenv, Year >2015)
dfenv_pre$time <- 1
dfenv_post$time <- 2
dfenv <- rbind(dfenv_pre, dfenv_post)

dfenv <- dfenv[,-4:-25]

newdf_indchange <- newdf_indchange[,-1]
newdf_indchange <- newdf_indchange[,-1]
newdf_indchange <- newdf_indchange[,-1]
newdf_indchange <- newdf_indchange[,-23]

indall_mds <- metaMDS(newdf_indchange, distance = "euclidean", autotransform = FALSE)

# stress = 0.178

indall_scores <- envfit(indall_mds, dfenv, permutations = 999)

site.scrs <- as.data.frame(scores(indall_mds, display = "sites"))
site.scrs <- cbind(site.scrs, Site = dfenv$Site)
site.scrs <- cbind(site.scrs, Time = dfenv$time)
site.scrs <- cbind(site.scrs, ssta = dfenv$avg_ssta)
site.scrs <- cbind(site.scrs, Location = dfenv$Location)


df_hull <- site.scrs %>%
  group_by(Time) %>%
  slice(chull(NMDS1, NMDS2))

df_seg1 <- filter(site.scrs, Time ==1)
df_seg2 <- filter(site.scrs, Time ==2)

# 1 more b3 sample in the first time step 
df_seg1 <- df_seg1[-1,]
df_seg1$endscore_x <- df_seg2$NMDS1
df_seg1$endscore_y <- df_seg2$NMDS2
df_seg1$ssta_2 <- df_seg2$ssta


ind_comparison_plot <- ggplot(site.scrs, aes(x=NMDS1,y=NMDS2 ,fill=as.factor(Time))) +
  geom_polygon(data =df_hull, alpha = 0.5, aes(fill = as.factor(Time))) +
  #geom_point(size=0) +
  # for segment scores, break down the dataframe 
  #geom_segment(data = df_seg1, aes(x = NMDS1, xend=endscore_x, y=NMDS2, yend=endscore_y)) + 
  theme_classic() +
  annotate("text", x = 16, y = 20, label = "stress = 0.178", fontface=2, size = 10) +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=0), axis.text.x = element_text(size=0)) +
  theme(plot.title = element_text(size=26, face="bold")) +
  labs(y= "NMDS 1", x="NMDS 2", title = "C") +
  theme(legend.position="none") 

ind_comparison_plot

tiff(file='Ordination_indonesia.tif',height=7000,width=21000,res=600)
indpre_taxa_plot | indpost_taxa_plot | ind_comparison_plot
dev.off()

indonesia_scores <- df_seg1

#########################################
#### Honduras ordiantion ####

df_pre2016_hon <- filter(df_temp, Year < 2016 & Location == "Honduras")

summary(Monitoring_df)

newdf_honpre <- df_pre2016_hon %>%
  group_by(Site, Year) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL'), mean)

newdf_honpre <- newdf_honpre[,-1]
newdf_honpre <- newdf_honpre[,-1]

honpre_mds <- metaMDS(newdf_honpre, distance = "euclidean", autotransform = FALSE)

# stress = 0.109

plot(honpre_mds)

honpre_spp_fit <- envfit(honpre_mds, newdf_honpre, permutations = 999)
spp.scrs <- as.data.frame(scores(honpre_spp_fit, display = "vectors"))
spp.scrs <- cbind(spp.scrs, Benthic_component = rownames(spp.scrs)) #add species names to dataframe

honpre_taxa_plot <- ggplot(spp.scrs, aes(x=NMDS1, y=NMDS2)) +  
  geom_segment(data = spp.scrs, aes(x = 0, xend=NMDS1, y=0, yend=NMDS2), lineend = "butt", colour = "grey10", lwd=0.8) + #add vector arrows of significant species
  ggrepel::geom_text_repel(data = spp.scrs, aes(x=NMDS1, y=NMDS2, label = Benthic_component), cex = 10, direction = "both", segment.size = 0.25)+ #add labels for species, use ggrepel::geom_text_repel so that labels do not overlap
  theme_classic() +
  annotate("text", x = 0.7, y = 0.6, label = "stress = 0.109", fontface=2, size = 10) +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=0), axis.text.x = element_text(size=0)) +
  theme(plot.title = element_text(size=26, face="bold")) +
  labs(y= "NMDS 1", x="NMDS 2", title = "D") 
honpre_taxa_plot

# post 2016

df_post2016_hon <- filter(df_temp, Year > 2015 & Location == "Honduras")

summary(Monitoring_df)

newdf_honpost <- df_post2016_hon %>%
  group_by(Site, Year) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL'), mean)

newdf_honpost <- newdf_honpost[,-1]
newdf_honpost <- newdf_honpost[,-1]

honpost_mds <- metaMDS(newdf_honpost, distance = "euclidean", autotransform = FALSE)

# stress = 0.036

plot(honpost_mds)

honpost_spp_fit <- envfit(honpost_mds, newdf_honpost, permutations = 999)
spp.scrs <- as.data.frame(scores(honpost_spp_fit, display = "vectors"))
spp.scrs <- cbind(spp.scrs, Benthic_component = rownames(spp.scrs)) #add species names to dataframe

honpost_taxa_plot <- ggplot(spp.scrs, aes(x=NMDS1, y=NMDS2)) +  
  geom_segment(data = spp.scrs, aes(x = 0, xend=NMDS1, y=0, yend=NMDS2), lineend = "butt", colour = "grey10", lwd=0.8) + #add vector arrows of significant species
  ggrepel::geom_text_repel(data = spp.scrs, aes(x=NMDS1, y=NMDS2, label = Benthic_component), cex = 10, direction = "both", segment.size = 0.25)+ #add labels for species, use ggrepel::geom_text_repel so that labels do not overlap
  theme_classic() +
  annotate("text", x = 0.6, y = 0.8, label = "stress = 0.036", fontface=2, size = 10) +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=0), axis.text.x = element_text(size=0)) +
  theme(plot.title = element_text(size=26, face="bold")) +
  labs(y= "NMDS 1", x="NMDS 2", title = "E") 
honpost_taxa_plot

# ordination space occupation


df_hon <- filter(df_temp, Location == "Honduras")

newdf_honchange <- df_hon %>%
  group_by(Site, Year, Location) %>%
  summarise_at(c("AN", 'ASC', 'CCA', 'DC', 'DCA', 'HC', 'HYD', 'INV', 'MI', 'OT', 'PEY', 'RB', 'RCK', 'S', 'SC', 'SG', 'SI', 'SP', 'UN', 'W', 'ZO', 'AL', 'avg_ssta'), mean)

dfenv_hon <- newdf_honchange
dfenv_honpre <- filter(dfenv_hon, Year < 2016)
dfenv_honpost <- filter(dfenv_hon, Year >2015)
dfenv_honpre$time <- 1
dfenv_honpost$time <- 2
dfenv_hon <- rbind(dfenv_honpre, dfenv_honpost)

dfenv_hon <- dfenv_hon[,-4:-25]

newdf_honchange <- newdf_honchange[,-1]
newdf_honchange <- newdf_honchange[,-1]
newdf_honchange <- newdf_honchange[,-1]
newdf_honchange <- newdf_honchange[,-23]

honall_mds <- metaMDS(newdf_honchange, distance = "euclidean", autotransform = FALSE)

# stress = 0.072

honall_scores <- envfit(honall_mds, dfenv_hon, permutations = 999)

honall_scores$vectors$pvals
honall_scores$factors$pvals

site.scrs <- as.data.frame(scores(honall_mds, display = "sites"))
site.scrs <- cbind(site.scrs, Site = dfenv_hon$Site)
site.scrs <- cbind(site.scrs, Time = dfenv_hon$time)
site.scrs <- cbind(site.scrs, ssta = dfenv_hon$avg_ssta)
site.scrs <- cbind(site.scrs, Location = dfenv_hon$Location)



df_hull <- site.scrs %>%
  group_by(Time) %>%
  slice(chull(NMDS1, NMDS2))


df_seg1 <- filter(site.scrs, Time ==1)
df_seg2 <- filter(site.scrs, Time ==2)

table(df_seg1$Site)
table(df_seg2$Site)

# both: rm Arena, Aldrids, ElAvion, Jenna2, Maze, Peli1,2,4
# seg 1: bf[1], 
# seg 2: mm[2], sp[1], Rotonda[2]

df_seg1 <- filter(df_seg1, !Site %in% c("Arena", "ElAvion", "Jenna2", "Maze", "Peli0", "Peli2", "Peli4"))
df_seg2 <- filter(df_seg2, !Site == "Aldrids")

df_seg1 <- df_seg1[-6,]

df_seg2 <- df_seg2[-c(26:29),]
df_seg2 <- df_seg2[-34,]

# match up sites for the arrows
table(df_seg1$Site)
table(df_seg2$Site)

df_seg1$endscore_x <- df_seg2$NMDS1
df_seg1$endscore_y <- df_seg2$NMDS2
df_seg1$ssta_2 <- df_seg2$ssta


hon_comparison_plot <- ggplot(site.scrs, aes(x=NMDS1,y=NMDS2 ,fill=as.factor(Time))) +
  geom_polygon(data =df_hull, alpha = 0.5, aes(fill = as.factor(Time))) +
  #geom_point(size=0) +
  # for segment scores, break down the dataframe 
  #geom_segment(data = df_seg1, aes(x = NMDS1, xend=endscore_x, y=NMDS2, yend=endscore_y), arrow = arrow(length = unit(0.25, "cm")), colour = "grey10", lwd=0.8) + 
  theme_classic() +
  annotate("text", x = 18, y = 24, label = "stress = 0.072", fontface=2, size = 10) +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=0), axis.text.x = element_text(size=0)) +
  theme(plot.title = element_text(size=26, face="bold")) +
  labs(y= "NMDS 1", x="NMDS 2", title = "F") + 
  theme(legend.position="none") 

hon_comparison_plot

#tiff(file='Figure_5.tif',height=7000,width=10000,res=300)
#(indpre_taxa_plot | indpost_taxa_plot | ind_comparison_plot)/(honpre_taxa_plot | honpost_taxa_plot | #hon_comparison_plot) 
dev.off()

png(file='figure_5.png',height=4500,width=8500,res=300)
(indpre_taxa_plot | indpost_taxa_plot | ind_comparison_plot)/(honpre_taxa_plot | honpost_taxa_plot | hon_comparison_plot) 
dev.off()

# scores

honduras_scores <- df_seg1

scores_df <- rbind(indonesia_scores, honduras_scores)

##################################
#### analyse ssta with scores ####

scores_df$shift <-(scores_df$NMDS1-scores_df$NMDS2)/2 + (scores_df$endscore_x-scores_df$endscore_y)/2

scores_plot <- ggplot(scores_df, aes(x=ssta_2, y=sqrt(abs(shift)), color = Location)) +
  geom_point() +
  geom_smooth(method = "gam") +
  theme_classic() +
  scale_color_viridis_d() +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=22)) +
  theme(axis.text.y = element_text(size=15), axis.text.x = element_text(size=15)) +
  labs(y= "Shift in benthic composition (NMDS score)", x="Sea surface temperature anomaly (°C)") 
scores_plot

tiff(file='scoresplot.tif',height=4000,width=6000,res=600)
scores_plot
dev.off()

png(file='scoresplot.png',height=4000,width=6000,res=600)
scores_plot
dev.off()

hist(scores_df$shift)
hist(abs(scores_df$shift))

shapiro.test(scores_df$shift)

modhon <- lm(sqrt(abs(shift))~ssta_2, data = subset(scores_df, Location == "Honduras"))
summary(modhon)

#Coefficients:
# Estimate Std. Error t value Pr(>|t|)  
# (Intercept) -0.04491    1.43035  -0.031   0.9752  
# ssta_2       4.86128    1.95286   2.489   0.0184 *

modind <- lm(sqrt(abs(shift))~ssta_2, data = subset(scores_df, Location == "Indonesia"))
summary(modind)
# Coefficients:
# Estimate Std. Error t value Pr(>|t|)    
# (Intercept)    3.033      0.596   5.089 4.86e-05 ***
#  ssta_2        -1.251      1.109  -1.128    0.272  