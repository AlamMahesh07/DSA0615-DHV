library(ggplot2)
survey_data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Price = c(50, 70, 60, 45, 55),
  Rating = c(4.2, 3.8, 4.0, 4.5, 3.9),
  Age_Group = c("25-35", "35-45", "18-25", "45-55", "25-35")
)
library(e1071)
skew_price <- skewness(survey_data$Price)
skew_rating <- skewness(survey_data$Rating)
cat("Skewness for Price: ", skew_price, "\n")
cat("Skewness for Rating: ", skew_rating, "\n")
if (abs(skew_price) > abs(skew_rating)) {
  ggplot(survey_data, aes(x = Price)) +
    geom_histogram(aes(y = ..density..), bins = 5, fill = "lightblue", color = "black") +
    geom_density(color = "darkblue") +
    labs(title = paste("Highly Skewed Distribution of Price (Skewness:", round(skew_price, 2), ")"),
         x = "Price ($)", y = "Density")
} else {
  ggplot(survey_data, aes(x = Rating)) +
    geom_histogram(aes(y = ..density..), bins = 5, fill = "lightcoral", color = "black") +
    geom_density(color = "darkred") +
    labs(title = paste("Highly Skewed Distribution of Rating (Skewness:", round(skew_rating, 2), ")"),
         x = "Rating", y = "Density")
}
