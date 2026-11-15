install.packages("readxl")
library(readxl)
library(tidyr)
library(ggplot2)

data <- read_excel

str("datatoko_dataset.xlsx")
datatoko_dataset
summary(datatoko_dataset)

par(mfrow = c(2, 2))
plot(x = datatoko_dataset$Tahun, y = datatoko_dataset$Gula, type = "o", 
     col = "blue", xlab = "Tahun", ylab = "Jumlah", main = "Penjualan Gula")

plot(x = datatoko_dataset$Tahun, y = datatoko_dataset$Minyak, type = "o", 
     col = "red", xlab = "Tahun", ylab = "Jumlah", main = "Penjualan Minyak")

plot(x = datatoko_dataset$Tahun, y = datatoko_dataset$Sabun, type = "o", 
     col = "green", xlab = "Tahun", ylab = "Jumlah", main = "Penjualan Sabun")

plot(x = datatoko_dataset$Tahun, y = datatoko_dataset$Gula, type = "o", 
     col = "blue", ylim = c(40, 200), xlab = "Tahun", ylab = "Jumlah", 
     main = "Gabungan Penjualan")
lines(x = datatoko_dataset$Tahun, y = datatoko_dataset$Minyak, type = "o", col = "red")
lines(x = datatoko_dataset$Tahun, y = datatoko_dataset$Sabun, type = "o", col = "green")
legend("topleft", legend = c("Gula", "Minyak", "Sabun"), 
       col = c("blue", "red", "green"), lty = 1, pch = 1, cex = 0.7)

