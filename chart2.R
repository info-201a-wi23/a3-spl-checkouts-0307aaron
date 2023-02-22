dataset <- read.csv("A3 Dataset.csv")
C2 <- dataset %>% group_by(CheckoutType) %>% count()
plot_1 <- ggplot(C2, aes(x = CheckoutType, y = n, fill = CheckoutType)) + 
  geom_histogram(stat = "identity") +
  labs(title = "Degree of Popularity among Checkout Types", x = "Checkout Types", y = "Sum of Each Type") +
  scale_y_continuous(labels = label_number_si())


