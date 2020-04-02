t<-read.csv("D://yang.csv")
library(ggplot2)
library(ggthemes)
p<-ggplot(t,aes(x=date,y=num,group=location,color=location))
p+geom_line(size=1.2)+theme_bw()+theme(
  panel.grid = element_blank(),
  panel.background = element_blank(),
title=element_blank())+
geom_point(size=1.5)+
scale_color_manual(labels=c("china","hubei","non-hubei"),values =c("#800000","#FF7F50","#D2691E"))+
geom_text(aes(label=num), position="dodge",color="black")
