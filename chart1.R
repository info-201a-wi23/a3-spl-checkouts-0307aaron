dataset <- read.csv("A3 Dataset.csv", stringsAsFactors = FALSE)

C1 <- dataset %>% filter(MaterialType == "EBOOK" | MaterialType == "MOVIE" | MaterialType == "MAGAZINE")  %>% group_by(MaterialType) %>% count()

plot <- ggplot(C1, aes(x="", y=n, fill=MaterialType)) +
  geom_bar(width=1, stat="identity") +
  coord_polar("y", start=0) +
  theme_void() +
  theme(legend.position = "right") +
  labs(title = "Degree of Popularity Among Material Types", x = "Material Types", y = "Sum of Each Type", fill = "Material Types")



