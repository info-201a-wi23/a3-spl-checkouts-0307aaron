dataset <- read.csv("A3 Dataset.csv")
C3 <- dataset %>% group_by(MaterialType) %>% filter(MaterialType == "BOOK" | MaterialType == "EBOOK") %>% summarize(total = sum(Checkouts))
plot_2 <- ggplot(C3) + geom_point(aes(x = MaterialType, y = total, color = MaterialType)) +
  labs(title = "Difference of Checkouts between Book and Ebook Material Types", x = "Book and Ebook Type", y = "Checkouts")
