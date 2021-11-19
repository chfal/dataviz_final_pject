
library(tidyverse)
mental_health <- read_csv("mental_health.csv")

mental_health$Question = as.factor(mental_health$Question)
                        
levels(mental_health$Question)

columns = c("YearStart","YearEnd","LocationAbbr")

mental_health <- mental_health %>%
  filter(Question == "Recent mentally unhealthy days among adults aged >= 18 years") %>%
  select(columns)

pneumonia <- read_csv("pneumonia.csv")

# ideas for graphs: line graph of x - time, y - counts of Pneumonia, Covid, Flu

# pneumonia vs. covid-19 by state (on a map)

# line graph of correlation between covid and flu - color by case count?