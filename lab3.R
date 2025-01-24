library(tidyverse)
library(palmerpenguins)
pgs <- penguins %>% drop_na
head(pgs)

pgs %>% 
  group_by(species) %>% 
  summarize(avg_bill_length = mean(bill_length_mm),
            avg_bill_depth = mean(bill_depth_mm))

pgs %>% 
  ggplot() +
  geom_point(aes(x = bill_length_mm, y = bill_depth_mm, color = species),
             size = 3, alpha = 0.6) +
  labs(x = "Bill Length (mm)",
       y = "Bill Depth (mm)",
       color = "Species")