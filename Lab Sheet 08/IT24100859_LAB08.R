setwd("C:\\Users\\it24100859\\Desktop\\IT24100859_LAB08")

# Load data
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# Population mean and SD
popmn <- mean(data$Weight.kg)
popsd <- sd(data$Weight.kg)

print(popmn)
print(popsd)

# Draw 25 samples of size 6 (with replacement)
s_means <- c()
s_sds   <- c()

for(i in 1:25){
  samp <- sample(data$Weight.kg, 6, replace = TRUE)
  s_means[i] <- mean(samp)
  s_sds[i]   <- sd(samp)
}

# Create results table AFTER loop
sample_table <- data.frame(Sample = 1:25, Mean = s_means, SD = s_sds)
print(sample_table)

# Mean and SD of sample means
mean_of_sample_means <- mean(s_means)
sd_of_sample_means   <- sd(s_means)

mean_of_sample_means <- mean(s_means)
sd_of_sample_means   <- sd(s_means)

print(paste("Mean of Sample Means:", mean_of_sample_means))
print(paste("Standard Deviation of Sample Means:", sd_of_sample_means))