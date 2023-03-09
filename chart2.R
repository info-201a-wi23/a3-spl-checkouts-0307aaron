dataset <- read.csv("A3 Dataset.csv")

dataset<- dataset %>% mutate(Date = paste0(CheckoutYear, "-", CheckoutMonth, "-01"))

dataset$Date <- as.Date(dataset$Date, format = "%Y-%m-%d")

C2 <- dataset %>% filter(Date >= as.Date("2020-01-01") & Date<= as.Date("2020-6-30")) %>% filter(CheckoutType == "Horizon" | CheckoutType == "OverDrive") %>%  group_by(CheckoutType, Date) %>% count()

plot_1 <- ggplot(C2, aes(x = Date, y = n, fill = CheckoutType)) + 
  geom_histogram(stat = "identity", position = "dodge") +
  labs(title = "Degree of Popularity among Checkout Types", x = "Checkout Types", y = "Sum of Each Type") +
  scale_y_continuous(labels = label_number_si())


