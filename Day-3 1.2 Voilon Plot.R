library(ggplot2)
library(reshape2)
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  Wind_Speed = c(15, 12, 18, 20, 16)
weather_melt_violin <- melt(weather_data, id.vars = "Date")
ggplot(weather_melt_violin, aes(x = variable, y = value, fill = variable)) +
  geom_violin() +
  labs(title = "Weather Data Violin Plot", x = "Variable", y = "Value")
