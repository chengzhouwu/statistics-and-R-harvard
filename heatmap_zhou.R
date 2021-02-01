# transfer row to column then do heatmap
zhendata <- read.csv("orgnized data.csv", header = FALSE)
zhendata <- as.data.frame(t(zhendata))
head(zhendata)
row.names(zhendata) <- zhendata$V1

zhendata <- zhendata[,2:135]

zhenmatrix <- data.matrix(zhendata)


zhendataheatmap <- heatmap(zhenmatrix, Rowv=NA, Colv=NA, 
                           col = cm.colors(256), scale="column", margins=c(5,10))
print(zhendataheatmap)
## general heatmap
zhendata <- read.csv("orgnized data.csv")
row.names(zhendata) <- zhendata$Protein.Group.
zhendata <- zhendata[, 2:161]
zhenmatrix <- as.matrix(zhendata)
heatmap(zhenmatrix,Rowv=NA, Colv=NA, 
        col = cm.colors(256), scale="row")

#example1
nba <- read.csv("http://datasets.flowingdata.com/ppg2008.csv", sep=",")
nba <- nba[order(nba$PTS),]
row.names(nba) <- nba$Name
nba <- nba[,2:20]
nba_matrix <- data.matrix(nba)
nba_heatmap <- heatmap(nba_matrix, Rowv=NA, Colv=NA, 
                       col = cm.colors(256), scale="column", margins=c(5,10))

##example2
mtcars
data <- as.matrix(mtcars)
heatmap(a)
heatmap(data, scale="column")
heatmap(data, Colv = NA, Rowv = NA, scale="column")

## heatmap in cluster
## zhen's data
#prepare data
rm(list = ls())
dataset <- read.csv("orgnized data1.csv")
library(dplyr)
#sd(dataset[4, 2:161])
dataset1 <- dataset %>% mutate(stDev = apply(.[(2:161)],1,sd)) #caculate the sd by column
head(dataset1[,c(158:162)]) #check the new data
#dataset2 <- dataset1 %>%
dataset2 <- dataset1[order(dataset1[,162],decreasing=T),]
#head(dataset2[,c(158:162)])



library(pheatmap)
exp_ds <- dataset2[c(1:1000), c(2:161)]
#cell_list=c(rep('cell_1',80), rep('cell_2',80))
#annotation_c <- data.frame(cell_list)
#rownames(annotation_c) <- colnames(exp_ds)

pheatmap(exp_ds, 
         cluster_rows = T,
         cluster_cols = T,
         #annotation_col =annotation_c, 
         #annotation_legend=TRUE, 
         show_rownames = T,
         show_colnames = T,
         scale = "row", 
         color =colorRampPalette(c("#8854d0", "#ffffff","#fa8231"))(100)
)

# example1 of cluster heatmap  
























































