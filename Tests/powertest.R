library(devtools)
library(testthat)
library(tidyverse)

testdata <- compute_wind_power(blade_length = 20, wind_speed = 30)

# ensures that KE > power
result_1 <- expect_true((testdata[1]-testdata[2]) >0)

# KE > 0
result_2 <- expect_true((testdata[1]) >0)

# power > 0
result_3 <- expect_true((testdata[2]) >0)


