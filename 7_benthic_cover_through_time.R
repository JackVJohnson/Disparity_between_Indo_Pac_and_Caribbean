
library(tidyverse)
library(mgcv)
library(patchwork)
library(vegan)
library(lme4)
library(dotwhisker)
library(fishualize)
library(patchwork)

options(scipen = 999)

monitoring_wd <- "C:/Users/40274182/OneDrive - Queen's University Belfast/PhD/Chapters/Monitoring_data/Working_data_sets/Output"

setwd(monitoring_wd)

Monitoring_df <- read.csv("Monitoring_with_CRW_SSTANOMALY.csv")

summary(Monitoring_df$percent_total)

# add location column to split data by ocean basin

table(Monitoring_df$Site)

# Indonesia
# B3, KAL, KDS, PK, R1, SAM

# Honduras
# Aldrids, Arena, BCW, BF, Canyong, CV, ElAbion, Jenna2, KG, LB, LH, Maze, MM, Peli0, Peli2, Peli4, PV2, Rotonda, SB, SP, SpBay

Monitoring_df <- subset(Monitoring_df, !is.na(avg_ssta))


Monitoring_df$Location <- NA

Indonesia_sites <- filter(Monitoring_df, Site %in% c('B3', 'KAL', 'KDS', 'PK', 'R1', 'SAM'))
Honduras_sites <- filter(Monitoring_df, Site %in% c('Aldrids', 'Arena', 'BCW', 'BF', 'Canyon', 'CV', 'ElAvion', 'Jenna2', 'KG', 'LB', 'LH', 'Maze', 'MM', 'Peli0', 'Peli2', 'Peli4', 'Rotonda', 'SB', 'SP', 'SpBay')) 


Indonesia_sites$Location <- 'Indonesia'
Honduras_sites$Location <- 'Honduras'

Monitoring_df <- rbind(Indonesia_sites, Honduras_sites)

# combine turf algae from utila and algae from honduras as 1 column 
Monitoring_df$AL <- Monitoring_df$A + Monitoring_df$TA + Monitoring_df$MA
Monitoring_df <- select(Monitoring_df, -c(TA, A, MA))



table(Honduras_sites$Site)

df <- Monitoring_df %>%
  group_by(Year, Location) %>%
  summarise(algae = mean(AL),
            algae_sd = sd(AL),
            hard_coral = mean(HC),
            hc_sd = sd(HC),
            rock = mean(RCK),
            rock_sd = sd(RCK),
            rubble = mean(RB),
            r_sd = sd(RB),
            sand = mean(S),
            s_sd = sd(S),
            soft_coral = mean(SC),
            sc_sd = sd(SC),
            sponge = mean(SP),
            sp_sd = sd(SP))

df2 <- gather(df, key="component", value="percent_cover", algae, hard_coral, rock, rubble, sand, soft_coral, sponge)

df3 <- gather(df,key="component", value="SD", algae_sd, hc_sd, rock_sd, r_sd, s_sd, sc_sd, sp_sd)

lol <- data.frame(df3$SD)

dfp <- cbind(df2, lol)

p1 <- ggplot(subset(dfp, Location == "Indonesia"), aes(x=Year, y=percent_cover, color = component)) +
  geom_errorbar(aes(ymin=percent_cover-df3.SD, ymax=percent_cover+df3.SD), width=.1, position=position_dodge(0.5)) +
  geom_line(size = .5, position=position_dodge(0.5)) + 
  geom_point(size = 1.5, position=position_dodge(0.5)) +
  scale_color_fish_d(option = "Centropyge_loricula", labels=c("Sponge", "Soft Coral", "Sand", "Rubble", "Rock", "Hard Coral", "Algae"), breaks=c("sponge", "soft_coral", "sand", "rubble", "rock", "hard_coral", "algae")) +
  theme_classic() +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=18, color="black"), axis.text.x = element_text(size=18, color="black")) +
  labs(y= "Benthic cover (%)", x="", title = "Indonesia") 

p2 <- ggplot(subset(dfp, Location == "Honduras"), aes(x=Year, y=percent_cover, color = component)) +
  geom_errorbar(aes(ymin=percent_cover-df3.SD, ymax=percent_cover+df3.SD), width=.1, position=position_dodge(0.5)) +
  geom_line(size = .5, position=position_dodge(0.5)) + 
  geom_point(size = 1.5, position=position_dodge(0.5)) +
  scale_color_fish_d(option = "Centropyge_loricula", labels=c("Sponge", "Soft Coral", "Sand", "Rubble", "Rock", "Hard Coral", "Algae"), breaks=c("sponge", "soft_coral", "sand", "rubble", "rock", "hard_coral", "algae")) +
  theme_classic() +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=18, color="black"), axis.text.x = element_text(size=18, color="black")) +
  labs(y= "Benthic cover (%)", x="Year", title = "Honduras") 


png(file=file.path(monitoring_wd, 'Benthic_cover.png'),height=5000,width=6000,res=400)
p1 / p2 + plot_layout(guides = "collect")
dev.off()