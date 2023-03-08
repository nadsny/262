
##power of wind turbine is calculated: 
## Power = 0.5 * Coefficient of performance (%) * air density * pi * (blade length)^2 *(wind speed)^3
##  

compute_wind_power <- function (blade_length, wind_speed, CP=0.45, pi= 22/7) {
  power = 0.5 * CP * pi * (blade_length)^2 * (wind_speed)^3
  
  return(power)
}