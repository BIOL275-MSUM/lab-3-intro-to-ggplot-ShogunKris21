library(tidyverse)
library(auk)                        
birds <- ebird_taxonomy %>%          
  as_tibble() %>%                     
  filter(category == "species")       

birds

distinct(birds, order)
count(birds, order)

ggplot(data = birds) +
  geom_bar(mapping = aes(x = order))

ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B") +
  labs(x = "Order", y = "Frequency (number of species)") +
  scale_y_continuous(limits = c(0, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )
