library(tidyverse)
library(fishualize)
library(patchwork)

# working directory 

monitoring_wd <- "C:/Users/40274182/OneDrive - Queen's University Belfast/PhD/Chapters/Monitoring_data/Working_data_sets/Output"

setwd(monitoring_wd)

coeffs <- read.csv("coeffs_combined.csv")

p1 <- ggplot(subset(coeffs, Location == "Indonesia"), aes(x=Mean, y=Predictor, color=Response)) +
  geom_vline(aes(xintercept = 0), size = .25, linetype = "dashed") +
  geom_errorbarh(aes(xmax = Upper, xmin =Lower), size = 1.2, height = 0.3, position = position_dodge(width = 0.5)) +
  geom_point(size = 3, position = position_dodge(width=0.5)) +
  #scale_color_discrete(breaks=c("Sponge", "Soft Coral", "Sand", "Rubble", "Rock", "Hard Coral", "Algae")) +
  scale_color_fish_d(option = "Centropyge_loricula", breaks=c("Sponge", "Soft Coral", "Sand", "Rubble", "Rock", "Hard Coral", "Algae")) +
  ggtitle("Indonesia") +
  theme_classic() +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=18, color="black"), axis.text.x = element_text(size=18, color="black")) +
  labs(y= "Predictor", x="Model coefficient") 


p2 <- ggplot(subset(coeffs, Location == "Honduras"), aes(x=Mean, y=Predictor, color=Response)) +
  geom_vline(aes(xintercept = 0), size = .25, linetype = "dashed") +
  geom_errorbarh(aes(xmax = Upper, xmin =Lower), size = 1.2, height = 0.3, position = position_dodge(width = 0.5)) +
  geom_point(size = 3, position = position_dodge(width=0.5)) +
  #scale_color_discrete(breaks=c("Sponge", "Soft Coral", "Sand", "Rubble", "Rock", "Hard Coral", "Algae")) +
  scale_color_fish_d(option = "Centropyge_loricula", breaks=c("Sponge", "Soft Coral", "Sand", "Rubble", "Rock", "Hard Coral", "Algae")) +
  ggtitle("Honduras") +
  theme_classic() +
  theme(axis.title.x = element_text(size = 22, color = "black"), axis.title.y = element_text(size = 22, color = "black"), text=element_text(size=16)) +
  theme(axis.text.y = element_text(size=18, color="black"), axis.text.x = element_text(size=18, color="black")) +
  labs(y= "Predictor", x="Model coefficient") 


png(file=file.path(monitoring_wd, 'Figure_3.png'),height=3000,width=7000,res=400)
p1 + p2 + plot_layout(guides = "collect")
dev.off()