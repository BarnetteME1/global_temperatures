library(ggplot2)

gt_by_city <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByCity.csv')
gt_by_country <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByCountry.csv')
gt_by_major_city <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByMajorCity.csv')
gt_by_state <- read.csv('~/global_weather_R/sv_files/GlobalLandTemperaturesByState.csv')
gt <- read.csv('~/global_weather_R/sv_files/GlobalTemperatures.csv')
gt$dt <- strptime(x = as.character(gt$dt), format = "%Y-%m-%d")

ggplot(aes(dt, LandAverageTemperature), data = gt) + 
  geom_line() + 
  scale_x_datetime(limits = c(as.POSIXct.date(1750-01-01), as.POSIXct.date(1800-12-01)), format = "%Y-%m-%d")