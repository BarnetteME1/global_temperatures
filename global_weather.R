#importing libraries

library(ggplot2)

gt_by_city <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByCity.csv')
gt_by_country <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByCountry.csv')
gt_by_major_city <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByMajorCity.csv')
gt_by_state <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByState.csv')
gt <- read.csv('~/global_weather_R/sv_files/GlobalTemperatures.csv')
gt$dt <- as.Date(gt$dt, format = "%Y-%m-%d")

#plotting global temperatures

ggplot(aes(x = dt, y = LandAverageTemperature), data = gt) + 
  geom_line() + 
  scale_x_date(date_breaks = '10 years', limits = as.Date(c("1750-01-01", "1800-01-01")))

#seeing if I can put temperatures on a map

by(gt_by_country$AverageTemperature, gt_by_country$Country, summary)
seq()

library(maps)
png('map_1europe.png')
map('world')
dev.off()