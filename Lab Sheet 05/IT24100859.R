setwd("C:\\Users\\IT24100859\\Desktop\\IT24100859_LAB05")
getwd

#Question01
Delivery_Time <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = "",)

#2
hist(Delivery_Time$Delivery_Time_.minutes.,
     breaks = seq(20,70, length.out = 10),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time(minutes)",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")


#Question04
times <- Delivery_Time$Delivery_Time_.minutes.
breaks <- seq(20,70, length.out = 10)
freq  <- hist(times, breaks = breaks, right = FALSE, plot = FALSE)
cum_freq <- cumsum(freq$counts)
plot(breaks[-1], cum_freq, type = "o", col = "blue", lwd = 2, pch = 16,
     main = "cumulative Frequency Polygon(ogive)",
     xlab = "Delivery Time(minutes)",
     ylab = "cumulative Frequency")
grid()