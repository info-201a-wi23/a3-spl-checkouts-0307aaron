dataset <- read.csv("A3 Dataset.csv", stringsAsFactors = FALSE)

dataset<- dataset %>% mutate(Date = paste0(CheckoutYear, "-", CheckoutMonth, "-01"))

dataset$Date <- as.Date(dataset$Date, format = "%Y-%m-%d")

C1 <- dataset %>% filter(MaterialType %in% c("EBOOK","MOVIE", "MAGAZINE"))  %>% filter(Date >= as.Date("2019-01-01") & Date<= as.Date("2019-6-30")) %>% group_by(Date) %>% summarize(sum_materialtype = n())


plot <- ggplot(C1, aes(x = Date, y = sum_materialtype, color = sum_materialtype))+
  geom_line() +
  theme_classic() +
  scale_x_date(date_breaks = "1 month", date_labels = "%Y-%m") +
  labs(title = "Degree of Popularity Among three Material Types", x = "Date", y = "Sum of Three Material Types")

