library(ggplot2)
survey_data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Price = c(50, 70, 60, 45, 55),
  Rating = c(4.2, 3.8, 4.0, 4.5, 3.9),
  Age_Group = c("25-35", "35-45", "18-25", "45-55", "25-35")
)
ggplot(survey_data, aes(x = Price)) +
  stat_ecdf(geom = "step", color = "blue") +
  labs(title = "ECDF for Product Prices", x = "Price ($)", y = "ECDF")
ggplot(survey_data, aes(x = Rating)) +
  stat_ecdf(geom = "step", color = "red") +
  labs(title = "ECDF for Product Ratings", x = "Rating", y = "ECDF")
