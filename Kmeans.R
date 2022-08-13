# Library required for fviz_cluster function
# install.packages("factoextra")
library(factoextra)

# Loading dataset
players_data = read.csv("FPL_20_21.csv",sep = "," )
#?read.csv

df = players_data[c( "Goals_Scored", "Saves")][1:50,]

# Omitting any NA values
df <- na.omit(df)

# Scaling dataset
# df <- scale(df)

km <- kmeans(df, centers = 3)

# Visualize the clusters
fviz_cluster(km, data = df)

# output to be present as PNG file
png(file = "KMeansExample.png")

# saving the file
dev.off()