mortgage_dataset1 <- read.csv("C:/Users/palla/Georgia Tech/MG 6203/Project/Data/mortgage_dataset1.csv", header=TRUE)
View(mortgage_dataset1)

#EDA
sum(is.na(mortgage_dataset1))
#There is no missing value
head(mortgage_dataset1)
# histogram to see distribution# Check the data type of the column
class(mortgage_dataset1$cpi)




library(ggplot2)
ggplot(mortgage_dataset1, aes(x = cpi)) + geom_histogram()

# Sample data (replace this with your dataset)
data <- data.frame(
  Age = rnorm(100),
  Income = rnorm(100, mean = 50000, sd = 10000),
  Score = rnorm(100, mean = 75, sd = 10)
)

# Create histograms for all parameters
par(mfrow = c(1, ncol(mortgage_dataset1)-1))  # Create a grid for plots

for (col in colnames(mortgage_dataset1)[-1]) {
  par(mfrow = c(1, 1))
  hist(mortgage_dataset1[[col]], main = col, xlab = col, col = "blue", border = "black")
}


library(ggplot2)

ggplot(mortgage_dataset1, aes(cpi), mortgage_rate, colour = class) + 
  geom_point()