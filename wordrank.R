setwd("D:/school/daoshi/daoshi_old/R学习/ggplot2/wordrank")
library(openxlsx)
library(ggplot2)
library(reshape2)
top15_0 = read.xlsx("top15.xlsx")
top15 = melt(top15_0,id=c("rank"),variable.name = "mon",value.name = "word")


#done!
ggplot(top15, aes(mon, -rank)) + 
  geom_point(color="white") + 
  geom_label(aes(label=word,fill=mon), #geom_text annotate
             color='white', fontface='bold', size=4) +
  theme_classic() +
  scale_y_continuous(limits=c(-15,-1), breaks=c(-1,-3,-5,-7,-9,-11,-13,-15), 
                     labels=c("1","3","5", "7","9","11","13","15"))+
  theme(legend.position="",plot.title = element_text(size=18,hjust = 0.5), 
        axis.title.y=element_text(margin=margin(0,10,0,0))) + 
  labs(title="title") + 
  xlab("x-title") + 
  ylab("Ranking")


x = c(1:5)
y = c(6:10)
data = data.frame(x=x,y=y)
ggplot(data,aes(x,y))+geom_point(color="black")
ggplot(data,aes(x,y))+geom_point(color="black")+geom_label(label=data$x,color="black",x=x+0.2)
ggplot(data,aes(x,y))+geom_point(color="black")+
  geom_text(aes(label=data$x),color="black",x=data$x+0.1,check_overlap = TRUE)

ggplot(top15, aes(mon, rank)) + 
  geom_point(color="white")+
  geom_label(aes(label=word,fill=mon),color="white")

#...
ggplot(top15, aes(mon, rank)) + 
  geom_point(color="white") + 
  geom_label(aes(label=top15$word,fill=top15$mon), 
             color='white', fontface='bold', size=4) +
  theme_classic() +
  theme(legend.position="",plot.title = element_text(size=18,hjust = 0.5), 
        axis.title.y=element_text(margin=margin(0,10,0,0))) + 
  labs(title="title") + 
  xlab("x-title") + 
  ylab("Ranking")


 