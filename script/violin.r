#install.packages("ggpubr")
## Install
#if(!require(devtools)) install.packages("devtools")
#devtools::install_github("kassambara/ggpubr")
library("ggpubr")
data("ToothGrowth")
head(ToothGrowth)
# Violin plots with box plots inside
# :::::::::::::::::::::::::::::::::::::::::::::::::::
# Change fill color by groups: dose
# add boxplot with white fill color
ggviolin(df, x = "dose", y = "len", fill = "dose",
         palette = c("#00AFBB", "#E7B800", "#FC4E07"),
         add = "boxplot", add.params = list(fill = "white"))+
  stat_compare_means(comparisons = my_comparisons, label = "p.signif")+ # Add significance levels
  stat_compare_means(label.y = 50) 
