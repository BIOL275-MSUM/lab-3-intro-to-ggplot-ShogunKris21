
# "load packages" ---------------------------------------------------------
library(tidyverse)

# Firefly Data ------------------------------------------------------------

Spermatophore_data <- read.csv ("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")

Spermatophore_data

distinct(Spermatophore_data, spermatophoreMass)

count(Spermatophore_data, spermatophoreMass)

ggplot(data = Spermatophore_data)

ggplot(data = Spermatophore_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), bins = 50)


ggplot(data = Spermatophore_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.015,
          fill = "#C5351B", color = "black") +
  labs(x = "spermatophoreMass", y = "Count") +
  scale_y_continuous(breaks = seq(0, 13, 2), limits = c(0, 15), 
                     expand = expansion(mult = 0)) +
  scale_x_continuous(breaks = seq(0.03, 0.19, 0.016)) +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
  )


