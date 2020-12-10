
###Import

#library(dplyr)
library(tidyr)
library(magrittr)
library(ggplot2)
library(grid)
library(gridExtra)

###VISU

data=read.csv(file = "data/Film.csv",header=T)
head(data)
names(data)
str(data)
summary(data)

###Les données

data$Age <- factor(data$Age, levels = c("all", "7+", "13+", "16+", "18+"))

x<-matrix(1, ncol=1, nrow=nrow(data), byrow=FALSE)
data$total=x

#cours 2.html diapo 26

plot1=ggplot(data, aes(x=Age, y=Netflix))+
  geom_bar(stat="identity")+
  xlab("") + 
  ylab("") +
  ggtitle("Netflix")+
  theme(
    plot.title = element_text(color="red", size=13, face="bold"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major = element_line(colour = "grey"),
    panel.grid.minor = element_line(colour = "grey")
    )

plot2=ggplot(data, aes(x=Age, y=Hulu))+
  geom_bar(stat="identity")+
  xlab("") + 
  ylab("") +
  ggtitle("Hulu")+
  theme(
    plot.title = element_text(color="green", size=13, face="bold"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major = element_line(colour = "grey"),
    panel.grid.minor = element_line(colour = "grey")
    )

plot3=ggplot(data, aes(x=Age, y=Prime.Video))+
  geom_bar(stat="identity")+
  xlab("") + 
  ylab("") +
  ggtitle("Prime Vidéo")+
  theme(
    plot.title = element_text(color="purple", size=13, face="bold"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major = element_line(colour = "grey"),
    panel.grid.minor = element_line(colour = "grey")
    )

plot4=ggplot(data, aes(x=Age, y=Disney.))+
  geom_bar(stat="identity")+
  xlab("") + 
  ylab("") +
  ggtitle("Disney +")+
  theme(
    plot.title = element_text(color="blue", size=13, face="bold"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major = element_line(colour = "grey"),
    panel.grid.minor = element_line(colour = "grey")
    )


plot5=ggplot(data, aes(x=Age, y=total))+
  geom_bar(stat="identity")+
  xlab("") + 
  ylab("") +
  ggtitle("Sur toutes les platformes")+
  theme(
    panel.background = element_rect(fill = "white"),
    panel.grid.major = element_line(colour = "grey"),
    panel.grid.minor = element_line(colour = "grey")
  )



###orgniser le rendu : 
grid.arrange(plot1,plot2,plot3,plot4,plot5,ncol=2,nrow=3)

###test total : 

plot=ggplot(data, aes(x=Age, y=total))+
  geom_bar(stat="identity")
plot

