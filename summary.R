# summary_information.R
# Aaron He
# A3

# load necessary library: dplyr
library(dplyr)

# load dataframe "np_data"
dataset <- read.csv("A3 Dataset.csv")

# SUMMARY INFORMATION
# Create 5 summary information to be rendered in the our Markdown report
# what we want to report:
# 1st data
summary_num_row <- nrow(dataset)
# 2nd data
summary_num_column <- ncol(dataset)
# 3rd data
avg_ck_num <- mean(dataset$Checkouts)
# 4th data
sum_ebook <- dataset %>% filter(MaterialType == "EBOOK") %>% nrow()
# 5data
uniq_M_type <- length(unique(dataset$MaterialType))