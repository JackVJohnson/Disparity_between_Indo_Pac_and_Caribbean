
library(tidyverse)
library(mgcv)
library(patchwork)
library(vegan)
library(lme4)
library(dotwhisker)
library(fishualize)

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

table(Honduras_sites$Site)

ind_2012 <- subset(Indonesia_sites, Year == 2012)
ind_cells <- ind_2012 %>% 
  group_by(Site, avg_ssta) %>%
  count()

# b3 & pk share a CRW cell
# Sampela, kds, and kal share a cwr cell
# R1 has its own crw cell

hon_2012 <- subset(Honduras_sites, Year == 2012)

hon_cells_12 <- hon_2012 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()

hon_2013 <- subset(Honduras_sites, Year == 2013)

hon_cells_13 <- hon_2013 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()


hon_2014 <- subset(Honduras_sites, Year == 2014)

hon_cells_14 <- hon_2014 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()



hon_2015 <- subset(Honduras_sites, Year == 2015)

hon_cells_15 <- hon_2015 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()

hon_2016 <- subset(Honduras_sites, Year == 2016)

hon_cells_16 <- hon_2016 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()

hon_2017 <- subset(Honduras_sites, Year == 2017)

hon_cells_17 <- hon_2017 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()

hon_2018 <- subset(Honduras_sites, Year == 2018)

hon_cells_18 <- hon_2018 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()

hon_2019 <- subset(Honduras_sites, Year == 2019)

hon_cells_19 <- hon_2019 %>% 
  group_by(Site, avg_ssta, Year) %>%
  count()

#Cell	Sites			
#1	bcw	cv	lb	sb
#2	lh			
#3	el avion	peli0	peli2	peli4
#4	sp			
#5	maze			
#6	bf	kg	mm	Aldrids
#7	canyon	rotanda		
#8	arema			
#9	Jenna 2			



Indonesia_sites$Location <- 'Indonesia'
Honduras_sites$Location <- 'Honduras'

Monitoring_df <- rbind(Indonesia_sites, Honduras_sites)

hist(Monitoring_df$sum_ssta)
hist(Monitoring_df$avg_ssta)

hond_temp <- Honduras_sites %>% group_by(Year, Location) %>% summarise(avg = mean(avg_ssta))
hond_temp_sd <- Honduras_sites %>% group_by(Year, Location) %>% summarise(sd = sd(avg_ssta))
hond_temp$sd <- hond_temp_sd$sd

ind_temp <- Indonesia_sites %>% group_by(Year, Location) %>% summarise(avg = mean(avg_ssta))
ind_temp_sd <- Indonesia_sites %>% group_by(Year, Location) %>% summarise(sd=sd(avg_ssta))
ind_temp$sd <- ind_temp_sd$sd

temp_df <- rbind(ind_temp, hond_temp)
temp_df$up <- temp_df$avg+temp_df$sd
temp_df$down <- temp_df$avg-temp_df$sd

str(temp_df$Year)
temp_df$Year <- as.numeric(temp_df$Year)

# Figure 2

#tiff(file='Figure_2.tif',height=6000,width=8000,res=600)
temp_dp <- ggplot(temp_df, aes(Year, avg, color = Location)) +
  geom_errorbar(aes(ymax=up, ymin=down), size =1, width = 0.5, position = position_dodge(width = 0.5)) +
  geom_point(size = 5, position = position_dodge(width = 0.5)) + 
  scale_color_fish_d(option = "Centropyge_loricula", end = .8, begin = .2) +
  #scale_color_manual(values=c("#af8dc3", "#7fbf7b")) +
  theme_classic() +
  theme(axis.title.x = element_text(size = 18, color = "black"), axis.title.y = element_text(size = 18, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=14, color="black"), axis.text.x = element_text(size=14, color="black")) +
  labs(y= "Average sea surface temperature anomaly (°C)", x="Year") 
temp_dp
dev.off()

#png(file='Figure_2.png',height=6000,width=8000,res=600)
temp_dp
dev.off()


hond_site_temps <- Honduras_sites %>% group_by(Site, Year, Location) %>% summarise(avg = mean(avg_ssta))
indo_site_temps <- Indonesia_sites %>% group_by(Site, Year, Location) %>% summarise(avg = mean(avg_ssta))

hist(hond_site_temps$avg)
hist(indo_site_temps$avg)
shapiro.test(hond_site_temps$avg)
shapiro.test(indo_site_temps$avg)

ts_temp_plot_df <- rbind(hond_site_temps, indo_site_temps)

temp_ts <- ggplot(ts_temp_plot_df, aes(Year, avg, color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  geom_point(size = 2, position = position_dodge(width = 0.5)) + 
  scale_color_fish_d(option = "Centropyge_loricula", end = .8, begin = .2) +
  #scale_fill_viridis_d(option="C") +
  #scale_color_manual(values=c("#af8dc3", "#7fbf7b")) +
  theme_classic() +
  theme(axis.title.x = element_text(size = 18, color = "black"), axis.title.y = element_text(size = 18, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=14, color="black"), axis.text.x = element_text(size=14, color="black")) +
  labs(y= "", x="Year") +
  theme(legend.position = "none")

temp_ts

hond_site_temps$Year <- hond_site_temps$Year-2012
Indo_site_temps$Year <- Indo_site_temps$Year-2012

fit_ts_hon <- glm(avg~Year, data =hond_site_temps, family = quasipoisson()) # n = 82
fit_ts_ind <- glm(avg~Year, data =indo_site_temps, family = quasipoisson()) # n = 47

summary(fit_ts_hon)
# Coefficients:
#Estimate Std. Error t value Pr(>|t|)    
#(Intercept) -104.43998   27.32722  -3.822 0.000261 ***
#  Year           0.05158    0.01356   3.805 0.000276 ***

summary(fit_ts_ind)
#  Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -186.50018   50.93611  -3.661 0.000657 ***
#  Year           0.09207    0.02527   3.644 0.000693 ***

library(patchwork)


png(file='Figure_2.png',height=4000,width=8000,res=350)
temp_dp + temp_ts + plot_layout(guides = "collect")
dev.off()


###################################

########################################################
### regress cover with yearly temp values instead of change

hist(Monitoring_df$HC)
cover_hc1 <- glm(HC~avg_ssta, data = Monitoring_df, family = poisson())
summary(cover_hc1)

summary(Monitoring_df$HC)
summary(Monitoring_df$avg_ssta)


######################################

#### benthic categories #########

summary(Monitoring_df)
# A = Algae (hoga only)
# AN = Anemone
# ASC = Ascidian
# CCA = Coraline crustose algae
# DC = Dead coral
# DCA = Dead coral with algae
# HC = Hard Coral
# HYD = hydroids (Utila only)
# INV = other invertebrate
# MA = Macroalgae
# MI = milepora
# MIL = not in key but probably milipeora
# OT = Other
# PWY = Peysonnellia
# RB = Rubble
# RCK = Rock
# S = Sand
# SC = Soft coral 
# SG = Sea grass (hoga only) 
# SI = Silt 
# SP = Sponge
# TA = Turf Algae (utila only)
# UN = unkown
# W = Water 
# ZO = Zooanthid

# combine turf algae from utila and algae from honduras as 1 column 
Monitoring_df$AL <- Monitoring_df$A + Monitoring_df$TA + Monitoring_df$MA
Monitoring_df <- select(Monitoring_df, -c(TA, A, MA))

Monitoring_df$percent_total <- rowSums(Monitoring_df[,c(8:29, 34)])
summary(Monitoring_df$percent_total)
summary(Monitoring_df$AL)

# change in cover of each benthic component in response to SSTA_Freq

# group by site and year, summarise 

df_HC <- Monitoring_df %>% 
  group_by(Site, Year, avg_ssta, Location) %>% 
  summarise(HC_avg = mean(HC))# %>% 

hist(df_HC$HC_avg)
hc_test2 <- glm(HC_avg~avg_ssta, data = df_HC, family = poisson())
summary(hc_test2)

df_HC_ind <- filter(df_HC, Location == "Indonesia")
df_HC_hon <- filter(df_HC, Location == "Honduras")

hist(df_HC_ind$HC_avg)
hist(df_HC_hon$HC_avg)


#df_HC$HC_avg <- log1p(df_HC$HC_avg)


HC_plot1 <- ggplot(df_HC, aes(avg_ssta, HC_avg,   color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  theme_classic()
HC_plot1


#######################

df_AL <- Monitoring_df %>%
  group_by(Site, Year, avg_ssta, Location) %>%
  summarise(AL_avg = median(AL))

summary(df_AL$AL_avg)
hist(df_AL$AL_avg)


AL_plot1 <- ggplot(df_AL, aes(avg_ssta,AL_avg, color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  theme_classic()
AL_plot1

##################

df_SC <- Monitoring_df %>% 
  group_by(Site, Year, avg_ssta, Location) %>% 
  summarise(SC_avg = median(SC))

summary(df_SC$SC_avg)
hist(df_SC$SC_avg)

SC_plot1 <- ggplot(df_SC, aes(avg_ssta,  SC_avg ,color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  theme_classic()
SC_plot1

######################

df_RCK <- Monitoring_df %>%
  group_by(Site, Year, avg_ssta, Location) %>%
  summarise(RCK_avg = median(RCK))

summary(df_RCK$RCK_avg)
hist(df_RCK$RCK_avg)
hist(df_RCK$RCK_avg)


RCK_plot1 <- ggplot(df_RCK, aes(avg_ssta, RCK_avg ,  color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  theme_classic()
RCK_plot1

##########################

df_SP <- Monitoring_df %>% 
  group_by(Site, Year, avg_ssta, Location) %>%
  summarise(SP_avg = median(SP))

summary(df_SP$SP_avg)
hist(df_SP$SP_avg)
hist(df_SP$SP_avg)


SP_plot1 <- ggplot(df_SP, aes(avg_ssta, SP_avg, color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  theme_classic()
SP_plot1

#########################

df_RB <- Monitoring_df %>% 
  group_by(Site, Year, avg_ssta, Location) %>%
  summarise(RB_avg = median (RB))

summary(df_RB$RB_avg)
hist(df_RB$RB_avg)
hist(df_RB$RB_avg)


RB_plot1 <- ggplot(df_RB, aes(avg_ssta, RB_avg, color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  theme_classic()
RB_plot1

#############################

df_sand <- Monitoring_df %>%
  group_by(Site, Year, avg_ssta, Location) %>%
  summarise(sand_avg = median(S))

summary(df_sand$sand_avg)
hist(df_sand$sand_avg)
hist(df_sand$sand_avg)


sand_plot1 <- ggplot(df_sand, aes(avg_ssta, sand_avg, color = Location)) +
  geom_point() +
  geom_smooth(method = glm) +
  theme_classic() 
sand_plot1

#######################################
#####  inspect regression plots ######

library(patchwork)

png(file='regression_plots.png',height=7000,width=9000,res=600)
(HC_plot1 | AL_plot1) / (SC_plot1 | SP_plot1) / (RCK_plot1 | sand_plot1)
dev.off()

####################################
# models

library(brms)
library(tidybayes)
library(bayesplot)
library(patchwork)
library(bayestestR)

options(mc.cores=parallel::detectCores())

df_HC$Year <- df_HC$Year-2012
summary(df_HC$Year)
table(df_HC$Year)
hist(df_HC$HC_avg/100)
summary(df_HC$HC_avg)

HC_ind_prior <- get_prior(HC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_HC, Location == "Indonesia"), family = "beta")

HC_mod_ind <- brm(HC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_HC, Location == "Indonesia"), family = "beta", prior = HC_ind_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000)

summary(HC_mod_ind)

p1 <- pp_check(HC_mod_ind)
p2 <- mcmc_plot(HC_mod_ind, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_HC_ind.png", height = 1500, width = 3000, res = 300)
p1+p2 + plot_annotation(
  title = 'hard coral - Indonesia')
dev.off()

HC_hon_prior <- get_prior(HC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_HC, Location == "Honduras"), family = "beta")

HC_mod_hon <- brm(HC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_HC, Location == "Honduras"), family = "beta", prior = HC_hon_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000)

summary(HC_mod_hon)

p3 <- pp_check(HC_mod_hon)
p4 <- mcmc_plot(HC_mod_hon, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_HC_hon.png", height = 1500, width = 3000, res = 300)
p3+p4+plot_annotation(
  title = 'hard coral - Honduras')
dev.off()
########################################################
# algae

df_AL <- df_AL[!is.na(df_AL$AL_avg),]
df_AL <- df_AL[!is.na(df_AL$avg_ssta),]
df_AL <- df_AL[!is.infinite(df_AL$AL_avg),]

hist(df_AL$AL_avg)
summary(df_AL$AL_avg/100)
df_AL$Year <- df_AL$Year-2012
summary(df_AL$Year)

AL_ind_prior <- get_prior(AL_avg/100~avg_ssta+Year + (1|Site), data = subset(df_AL, Location == "Indonesia"), family = "zero_inflated_beta")

AL_mod_ind <- brm(AL_avg/100~avg_ssta+Year + (1|Site), data = subset(df_AL, Location == "Indonesia"), family = "zero_inflated_beta", prior = AL_ind_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(AL_mod_ind)

p1 <- pp_check(AL_mod_ind)
p1
p2 <- mcmc_plot(AL_mod_ind, type = "trace", variable = c("b_avg_ssta", "b_Year"))
p2
png("mc_AL_ind.png", height = 1500, width = 3000, res = 300)
p1+p2 + plot_annotation(
  title = 'algae - Indonesia')
dev.off()

# honduras algae
AL_hon_prior <- get_prior(AL_avg/100~avg_ssta+Year + (1|Site), data = subset(df_AL, Location == "Honduras"), family = "beta")

AL_mod_hon <- brm(AL_avg/100~avg_ssta+Year + (1|Site), data = subset(df_AL, Location == "Honduras"), family = "beta", prior = AL_hon_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000)

summary(AL_mod_hon)

p3 <- pp_check(AL_mod_hon)
p4 <- mcmc_plot(AL_mod_hon, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_AL_hon.png", height = 1500, width = 3000, res = 300)
p3+p4+plot_annotation(
  title = 'algae - Honduras')
dev.off()

###########################################################################
# soft coral
df_SC <- df_SC[!is.na(df_SC$SC_avg),]
df_SC <- df_SC[!is.na(df_SC$avg_ssta),]
df_SC <- df_SC[!is.infinite(df_SC$SC_avg),]

hist(df_SC$SC_avg)
summary(df_SC$SC_avg)
df_SC$Year <- df_SC$Year-2012
summary(df_SC$Year)

SC_ind_prior <- get_prior(SC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SC, Location == "Indonesia"), family = "beta")

SC_mod_ind <- brm(SC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SC, Location == "Indonesia"), family = "beta", prior = SC_ind_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(SC_mod_ind)

p1 <- pp_check(SC_mod_ind)
p1
p2 <- mcmc_plot(SC_mod_ind, type = "trace", variable = c("b_avg_ssta", "b_Year"))
p2
png("mc_SC_ind.png", height = 1500, width = 3000, res = 300)
p1+p2 + plot_annotation(
  title = 'soft coral - Indonesia')
dev.off()

# honduras
SC_hon_prior <- get_prior(SC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SC, Location == "Honduras"), family = "zero_inflated_beta")

SC_mod_hon <- brm(SC_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SC, Location == "Honduras"), family = "zero_inflated_beta", prior = SC_hon_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(SC_mod_hon)

p3 <- pp_check(SC_mod_hon)
p4 <- mcmc_plot(SC_mod_hon, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_SC_hon.png", height = 1500, width = 3000, res = 300)
p3+p4+plot_annotation(
  title = 'soft coral - Honduras')
dev.off()
################################################
# sponge
df_SP <- df_SP[!is.na(df_SP$SP_avg),]
df_SP <- df_SP[!is.na(df_SP$avg_ssta),]
df_SP <- df_SP[!is.infinite(df_SP$SP_avg),]

hist(df_SP$SP_avg)

df_SP$Year <- df_SP$Year-2012
summary(df_SP$Year)

SP_ind_prior <- get_prior(SP_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SP, Location == "Indonesia"), family = "beta")

SP_mod_ind <- brm(SP_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SP, Location == "Indonesia"), family = "beta", prior = SP_ind_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(SP_mod_ind)
p1 <- pp_check(SP_mod_ind)
p1
p2 <- mcmc_plot(SP_mod_ind, type = "trace", variable = c("b_avg_ssta", "b_Year"))
p2
png("mc_SP_ind.png", height = 1500, width = 3000, res = 300)
p1+p2 + plot_annotation(
  title = 'sponge - Indonesia')
dev.off()

# honduras
SP_hon_prior <- get_prior(SP_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SP, Location == "Honduras"), family = "beta")

SP_mod_hon <- brm(SP_avg/100~avg_ssta+Year + (1|Site), data = subset(df_SP, Location == "Honduras"), family = "beta", prior = SP_hon_prior, chains = 4, cores = 4, iter = 2000, control = list(adapt_delta = 0.95))

summary(SP_mod_hon)

p3 <- pp_check(SP_mod_hon)
p4 <- mcmc_plot(SP_mod_hon, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_SP_hon.png", height = 1500, width = 3000, res = 300)
p3+p4+plot_annotation(
  title = 'sponge - Honduras')
dev.off()

######################################################################
# rock
df_RCK <- df_RCK[!is.na(df_RCK$RCK_avg),]
df_RCK <- df_RCK[!is.na(df_RCK$avg_ssta),]
df_RCK <- df_RCK[!is.infinite(df_RCK$RCK_avg),]

hist(df_RCK$RCK_avg)
summary(df_RCK$RCK_avg)
df_RCK$Year <- df_RCK$Year-2012
summary(df_RCK$Year)

RCK_ind_prior <- get_prior(RCK_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RCK, Location == "Indonesia"), family = "beta")

RCK_mod_ind <- brm(RCK_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RCK, Location == "Indonesia"), family = "beta", prior = RCK_ind_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(RCK_mod_ind)

p1 <- pp_check(RCK_mod_ind)
p1
p2 <- mcmc_plot(RCK_mod_ind, type = "trace", variable = c("b_avg_ssta", "b_Year"))
p2
png("mc_RCK_ind.png", height = 1500, width = 3000, res = 300)
p1+p2 + plot_annotation(
  title = 'rock - Indonesia')
dev.off()

# honduras

RCK_hon_prior <- get_prior(RCK_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RCK, Location == "Honduras"), family = "zero_inflated_beta")

RCK_mod_hon <- brm(RCK_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RCK, Location == "Honduras"), family = "zero_inflated_beta", prior = RCK_hon_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(RCK_mod_hon)

p3 <- pp_check(RCK_mod_hon)
p4 <- mcmc_plot(RCK_mod_hon, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_RCK_hon.png", height = 1500, width = 3000, res = 300)
p3+p4+plot_annotation(
  title = 'rock - Honduras')
dev.off()

##############################################
# rubble
df_RB <- df_RB[!is.na(df_RB$RB_avg),]
df_RB <- df_RB[!is.na(df_RB$avg_ssta),]
df_RB <- df_RB[!is.infinite(df_RB$RB_avg),]
df_RB$Year <- df_RB$Year-2012
summary(df_RB$Year)
hist(df_RB$RB_avg)
summary(df_RB$RB_avg)

RB_ind_prior <- get_prior(RB_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RB, Location == "Indonesia"), family = "beta")

RB_mod_ind <- brm(RB_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RB, Location == "Indonesia"), family = "beta", prior = RB_ind_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(RB_mod_ind)

p1 <- pp_check(RB_mod_ind)
p1
p2 <- mcmc_plot(RB_mod_ind, type = "trace", variable = c("b_avg_ssta", "b_Year"))
p2
png("mc_RB_ind.png", height = 1500, width = 3000, res = 300)
p1+p2 + plot_annotation(
  title = 'rubble - Indonesia')
dev.off()

# honduras

RB_hon_prior <- get_prior(RB_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RB, Location == "Honduras"), family = "zero_inflated_beta")

RB_mod_hon <- brm(RB_avg/100~avg_ssta+Year + (1|Site), data = subset(df_RB, Location == "Honduras"), family = "zero_inflated_beta", prior = RB_hon_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(RB_mod_hon)

p3 <- pp_check(RB_mod_hon)
p4 <- mcmc_plot(RB_mod_hon, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_RB_hon.png", height = 1500, width = 3000, res = 300)
p3+p4+plot_annotation(
  title = 'rubble - Honduras')
dev.off()

##############################################################################
# sand

df_sand <- df_sand[!is.na(df_sand$sand_avg),]
df_sand <- df_sand[!is.na(df_sand$avg_ssta),]
df_sand <- df_sand[!is.infinite(df_sand$sand_avg),]
df_sand$Year <- df_sand$Year-2012
summary(df_sand$Year)
hist(df_sand$sand_avg)
summary(df_sand$sand_avg)

sand_ind_prior <- get_prior(sand_avg/100~avg_ssta+Year + (1|Site), data = subset(df_sand, Location == "Indonesia"), family = "zero_inflated_beta")

sand_mod_ind <- brm(sand_avg/100~avg_ssta+Year + (1|Site), data = subset(df_sand, Location == "Indonesia"), family = "zero_inflated_beta", prior = sand_ind_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))

summary(sand_mod_ind)

p1 <- pp_check(sand_mod_ind)
p1
p2 <- mcmc_plot(sand_mod_ind, type = "trace", variable = c("b_avg_ssta", "b_Year"))
p2
png("mc_sand_ind.png", height = 1500, width = 3000, res = 300)
p1+p2 + plot_annotation(
  title = 'sand - Indonesia')
dev.off()

# Honduras

sand_hon_prior <- get_prior(sand_avg/100~avg_ssta+Year + (1|Site), data = subset(df_sand, Location == "Honduras"), family = "zero_inflated_beta")
sand_mod_hon <- brm(sand_avg/100~avg_ssta+Year + (1|Site), data = subset(df_sand, Location == "Honduras"), family = "zero_inflated_beta", prior = sand_hon_prior, chains = 4, cores = 4, iter = 4000, warmup = 3000, control = list(adapt_delta = 0.95))
summary(sand_mod_hon)
p3 <- pp_check(sand_mod_hon)
p4 <- mcmc_plot(sand_mod_hon, type = "trace", variable = c("b_avg_ssta", "b_Year"))
png("mc_sand_hon.png", height = 1500, width = 3000, res = 300)
p3+p4+plot_annotation(
  title = 'sand - Honduras')
dev.off()



###############################
# extract outputs
hc_output_ind <- summary(HC_mod_ind)
hc_output_ind <- hc_output_ind$fixed
hc_output_ind <- hc_output_ind[-1,]
hc_output_ind <- data.frame(hc_output_ind)
hc_output_hon <- summary(HC_mod_hon)
hc_output_hon <- hc_output_hon$fixed
hc_output_hon <- hc_output_hon[-1,]
hc_output_hon <- data.frame(hc_output_hon)
al_output_ind <- summary(AL_mod_ind)
al_output_ind <- al_output_ind$fixed
al_output_ind <- al_output_ind[-1,]
al_output_ind <- data.frame(al_output_ind)
al_output_hon <- summary(AL_mod_hon)
al_output_hon <- al_output_hon$fixed
al_output_hon <- al_output_hon[-1,]
al_output_hon <- data.frame(al_output_hon)
sc_output_ind <- summary(SC_mod_ind)
sc_output_ind <- sc_output_ind$fixed
sc_output_ind <- sc_output_ind[-1,]
sc_output_ind <- data.frame(sc_output_ind)
sc_output_hon <- summary(SC_mod_hon)
sc_output_hon <- sc_output_hon$fixed
sc_output_hon <- sc_output_hon[-1,]
sc_output_hon <- data.frame(sc_output_hon)
rb_output_ind <- summary(RB_mod_ind)
rb_output_ind <- rb_output_ind$fixed
rb_output_ind <- rb_output_ind[-1,]
rb_output_ind <- data.frame(rb_output_ind)
rb_output_hon <- summary(RB_mod_hon)
rb_output_hon <- rb_output_hon$fixed
rb_output_hon <- rb_output_hon[-1,]
rb_output_hon <- data.frame(rb_output_hon)
rck_output_ind <- summary(RCK_mod_ind)
rck_output_ind <- rck_output_ind$fixed
rck_output_ind <- rck_output_ind[-1,]
rck_output_ind <- data.frame(rck_output_ind)
rck_output_hon <- summary(RCK_mod_hon)
rck_output_hon <- rck_output_hon$fixed
rck_output_hon <- rck_output_hon[-1,]
rck_output_hon <- data.frame(rck_output_hon)
sp_output_ind <- summary(SP_mod_ind)
sp_output_ind <- sp_output_ind$fixed
sp_output_ind <- sp_output_ind[-1,]
sp_output_ind <- data.frame(sp_output_ind)
sp_output_hon <- summary(SP_mod_hon)
sp_output_hon <- sp_output_hon$fixed
sp_output_hon <- sp_output_hon[-1,]
sp_output_hon <- data.frame(sp_output_hon)
sand_output_ind <- summary(sand_mod_ind)
sand_output_ind <- sand_output_ind$fixed
sand_output_ind <- sand_output_ind[-1,]
sand_output_ind <- data.frame(sand_output_ind)
sand_output_hon <- summary(sand_mod_hon)
sand_output_hon <- sand_output_hon$fixed
sand_output_hon <- sand_output_hon[-1,]
sand_output_hon <- data.frame(sand_output_hon)

Response <- NA
Location <- NA
Mean <- NA
Upper <- NA
Lower <- NA

hc_output_ind_df <- data.frame(Response, Location, Mean, Upper, Lower)
hc_output_ind_df[nrow(hc_output_ind_df)+1,] <- NA
hc_output_ind_df$Response <- "Hard Coral"
hc_output_ind_df$Location <- "Indonesia"
hc_output_ind_df$Mean <- hc_output_ind[,1]
hc_output_ind_df$Lower <- hc_output_ind[,3]
hc_output_ind_df$Upper <- hc_output_ind[,4]
rownames(hc_output_ind_df) <- c("SSTA", "Year")
hc_output_ind_df$Predictor <- row.names(hc_output_ind_df)
hc_output_hon_df <- data.frame(Response, Location, Mean, Upper, Lower)
hc_output_hon_df[nrow(hc_output_hon_df)+1,] <- NA
hc_output_hon_df$Response <- "Hard Coral"
hc_output_hon_df$Location <- "Honduras"
hc_output_hon_df$Mean <- hc_output_hon[,1]
hc_output_hon_df$Lower <- hc_output_hon[,3]
hc_output_hon_df$Upper <- hc_output_hon[,4]
rownames(hc_output_hon_df) <- c("SSTA", "Year")
hc_output_hon_df$Predictor <- row.names(hc_output_hon_df)

####
al_output_ind_df <- data.frame(Response, Location, Mean, Upper, Lower)
al_output_ind_df[nrow(al_output_ind_df)+1,] <- NA
al_output_ind_df$Response <- "Algae"
al_output_ind_df$Location <- "Indonesia"
al_output_ind_df$Mean <- al_output_ind[,1]
al_output_ind_df$Lower <- al_output_ind[,2]
al_output_ind_df$Upper <- al_output_ind[,3]
rownames(al_output_ind_df) <- c("SSTA", "Year")
al_output_ind_df$Predictor <- row.names(al_output_ind_df)
al_output_hon_df <- data.frame(Response, Location, Mean, Upper, Lower)
al_output_hon_df[nrow(al_output_hon_df)+1,] <- NA
al_output_hon_df$Response <- "Algae"
al_output_hon_df$Location <- "Honduras"
al_output_hon_df$Mean <- al_output_hon[,1]
al_output_hon_df$Lower <- al_output_hon[,2]
al_output_hon_df$Upper <- al_output_hon[,3]
rownames(al_output_hon_df) <- c("SSTA", "Year")
al_output_hon_df$Predictor <- row.names(al_output_hon_df)
# soft coral
sc_output_ind_df <- data.frame(Response, Location, Mean, Upper, Lower)
sc_output_ind_df[nrow(sc_output_ind_df)+1,] <- NA
sc_output_ind_df$Response <- "Soft Coral"
sc_output_ind_df$Location <- "Indonesia"
sc_output_ind_df$Mean <- sc_output_ind[,1]
sc_output_ind_df$Lower <- sc_output_ind[,2]
sc_output_ind_df$Upper <- sc_output_ind[,3]
rownames(sc_output_ind_df) <- c("SSTA", "Year")
sc_output_ind_df$Predictor <- row.names(sc_output_ind_df)
sc_output_hon_df <- data.frame(Response, Location, Mean, Upper, Lower)
sc_output_hon_df[nrow(sc_output_hon_df)+1,] <- NA
sc_output_hon_df$Response <- "Soft Coral"
sc_output_hon_df$Location <- "Honduras"
sc_output_hon_df$Mean <- sc_output_hon[,1]
sc_output_hon_df$Lower <- sc_output_hon[,2]
sc_output_hon_df$Upper <- sc_output_hon[,3]
rownames(sc_output_hon_df) <- c("SSTA", "Year")
sc_output_hon_df$Predictor <- row.names(sc_output_hon_df)
# rubble
rb_output_ind_df <- data.frame(Response, Location, Mean, Upper, Lower)
rb_output_ind_df[nrow(rb_output_ind_df)+1,] <- NA
rb_output_ind_df$Response <- "Rubble"
rb_output_ind_df$Location <- "Indonesia"
rb_output_ind_df$Mean <- rb_output_ind[,1]
rb_output_ind_df$Lower <- rb_output_ind[,2]
rb_output_ind_df$Upper <- rb_output_ind[,3]
rownames(rb_output_ind_df) <- c("SSTA", "Year")
rb_output_ind_df$Predictor <- row.names(rb_output_ind_df)
rb_output_hon_df <- data.frame(Response, Location, Mean, Upper, Lower)
rb_output_hon_df[nrow(rb_output_hon_df)+1,] <- NA
rb_output_hon_df$Response <- "Rubble"
rb_output_hon_df$Location <- "Honduras"
rb_output_hon_df$Mean <- rb_output_hon[,1]
rb_output_hon_df$Lower <- rb_output_hon[,3]
rb_output_hon_df$Upper <- rb_output_hon[,4]
rownames(rb_output_hon_df) <- c("SSTA", "Year")
rb_output_hon_df$Predictor <- row.names(rb_output_hon_df)
# Rock
rck_output_ind_df <- data.frame(Response, Location, Mean, Upper, Lower)
rck_output_ind_df[nrow(rck_output_ind_df)+1,] <- NA
rck_output_ind_df$Response <- "Rock"
rck_output_ind_df$Location <- "Indonesia"
rck_output_ind_df$Mean <- rck_output_ind[,1]
rck_output_ind_df$Lower <- rck_output_ind[,3]
rck_output_ind_df$Upper <- rck_output_ind[,4]
rownames(rck_output_ind_df) <- c("SSTA", "Year")
rck_output_ind_df$Predictor <- row.names(rck_output_ind_df)




rck_output_hon_df <- data.frame(Response, Location, Mean, Upper, Lower)
rck_output_hon_df[nrow(rck_output_hon_df)+1,] <- NA
rck_output_hon_df$Response <- "Rock"
rck_output_hon_df$Location <- "Honduras"
rck_output_hon_df$Mean <- rck_output_hon[,1]
rck_output_hon_df$Lower <- rck_output_hon[,3]
rck_output_hon_df$Upper <- rck_output_hon[,4]
rownames(rck_output_hon_df) <- c("SSTA", "Year")
rck_output_hon_df$Predictor <- row.names(rck_output_hon_df)
# sponge
sp_output_ind_df <- data.frame(Response, Location, Mean, Upper, Lower)
sp_output_ind_df[nrow(sp_output_ind_df)+1,] <- NA
sp_output_ind_df$Response <- "Sponge"
sp_output_ind_df$Location <- "Indonesia"
sp_output_ind_df$Mean <- sp_output_ind[,1]
sp_output_ind_df$Lower <- sp_output_ind[,3]
sp_output_ind_df$Upper <- sp_output_ind[,4]
rownames(sp_output_ind_df) <- c("SSTA", "Year")
sp_output_ind_df$Predictor <- row.names(sp_output_ind_df)
sp_output_hon_df <- data.frame(Response, Location, Mean, Upper, Lower)
sp_output_hon_df[nrow(sp_output_hon_df)+1,] <- NA
sp_output_hon_df$Response <- "Sponge"
sp_output_hon_df$Location <- "Honduras"
sp_output_hon_df$Mean <- sp_output_hon[,1]
sp_output_hon_df$Lower <- sp_output_hon[,3]
sp_output_hon_df$Upper <- sp_output_hon[,4]
rownames(sp_output_hon_df) <- c("SSTA", "Year")
sp_output_hon_df$Predictor <- row.names(sp_output_hon_df)
# Sand
sand_output_ind_df <- data.frame(Response, Location, Mean, Upper, Lower)
sand_output_ind_df[nrow(sand_output_ind_df)+1,] <- NA
sand_output_ind_df$Response <- "Sand"
sand_output_ind_df$Location <- "Indonesia"
sand_output_ind_df$Mean <- sand_output_ind[,1]
sand_output_ind_df$Lower <- sand_output_ind[,3]
sand_output_ind_df$Upper <- sand_output_ind[,4]
rownames(sand_output_ind_df) <- c("SSTA", "Year")
sand_output_ind_df$Predictor <- row.names(sand_output_ind_df)
sand_output_hon_df <- data.frame(Response, Location, Mean, Upper, Lower)
sand_output_hon_df[nrow(sand_output_hon_df)+1,] <- NA
sand_output_hon_df$Response <- "Sand"
sand_output_hon_df$Location <- "Honduras"
sand_output_hon_df$Mean <- sand_output_hon[,1]
sand_output_hon_df$Lower <- sand_output_hon[,3]
sand_output_hon_df$Upper <- sand_output_hon[,4]
rownames(sand_output_hon_df) <- c("SSTA", "Year")
sand_output_hon_df$Predictor <- row.names(sand_output_hon_df)

coeffs_ind <- rbind(hc_output_ind_df, al_output_ind_df, sc_output_ind_df, rb_output_ind_df,  rck_output_ind_df, sp_output_ind_df, sand_output_ind_df)

coeffs_hon <- rbind(hc_output_hon_df,al_output_hon_df,sc_output_hon_df,rb_output_hon_df,rck_output_hon_df,sp_output_hon_df,sand_output_hon_df)


coeffs_combined <- rbind(coeffs_ind, coeffs_hon)
write.csv(coeffs_combined, "coeffs_combined.csv")
