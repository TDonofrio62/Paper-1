#### Preamble ####
# Purpose: Clean Toronto Shooting Occurences Dataset
# Author: Thomas D'Onofrio
# Date: 30 January 2021
# Contact: thomas.donofrio@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(janitor)

#### Clean Data ####

shooting_occurences <- shooting_data %>% 
  janitor::clean_names() %>% #clean names to make more simple and readable
  select(-c(index,category)) %>% #get rid of unnecessary variables
  rename(num_shootings=count) #change name to more informative name

write_csv(shooting_occurences, "inputs/data/shooting_occurences.csv")