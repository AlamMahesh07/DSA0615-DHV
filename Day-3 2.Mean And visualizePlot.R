library(ggplot2)
library(reshape2)
financial_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Stock_Price = c(100, 102, 98, 105, 108),
  Volume_Traded = c(2.5, 3.0, 2.2, 2.8, 3.5),
  Market_Cap = c(500, 510, 490, 525, 540)
)
mean_stock_price <- mean(financial_data$Stock_Price)
mean_volume_traded <- mean(financial_data$Volume_Traded)
mean_market_cap <- mean(financial_data$Market_Cap)
cat("Mean Stock Price: ", mean_stock_price, "\n")
cat("Mean Volume Traded: ", mean_volume_traded, "\n")
cat("Mean Market Cap: ", mean_market_cap, "\n")
financial_melt <- melt(financial_data, id.vars = "Date")
ggplot(financial_melt, aes(x = Date, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Financial Market Data", x = "Date", y = "Value") +
  scale_fill_brewer(palette = "Set1")
