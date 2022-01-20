#Load packages
library(tidyverse)
library(palmerpenguins)

#10.A
penguins
#10.B
ggplot(data = penguins)
#10.C
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm))

#11.A
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species))
#11.B
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island))

#13.A/B
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island))+
  (facet_grid(~species))
#13.C
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island))+
  (facet_grid(island~species))
