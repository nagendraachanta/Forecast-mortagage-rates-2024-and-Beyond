if (!requireNamespace("corrplot")) {
  install.packages("corrplot")
}
library(corrplot)

if(!requireNamespace("leaps")) {
  install.packages("leaps")
}
library(leaps)

# Specify the file path to your CSV file
file_path <- "C:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/mortgage_dataset1.csv"

# Read the CSV file using read.csv() function
data <- read.csv(file_path)
corr_data <- data[,-1]

summary(data)

boxplot(data$mortgage_rate, 
        main = "Mortgage Rates",               
        ylab = "Rate",         
        col = "skyblue",                   
        border = "black",              
        horizontal = FALSE  
)


correlation_matrix <- cor(corr_data, use = "complete.obs")
print(correlation_matrix)
corrplot(correlation_matrix, method = "color")

model <- lm(mortgage_rate ~., data = corr_data)
summary(model)

subset_model <- regsubsets(mortgage_rate ~ ., data = corr_data, method = "exhaustive")
summary(subset_model)

