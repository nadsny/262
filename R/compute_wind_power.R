
##power of wind turbine is calculated: 
## Power = 0.5 * Coefficient of performance (%) * air density * pi * (blade length)^2 *(wind speed)^3
## Kinetic energy will be calculated following the forumla KE = 1/2 (moment of inertia*rotational speed)
## we don't have the rotational speed but for this simplification we will say the wind speed works!

## @blade_length is the length of the blades of the wind turbine, in meters
## @wind_speed is the speed of the wind that is blowing to turn the turbines
## @mass is the total mass of the rotating blades
## @CP is the "coefficient of performance" or efficiency of the wind turbine
## power will be in watts and KE will be in Joules

compute_wind_power <- function (blade_length, wind_speed, CP=0.45, pi= 22/7, mass=2360) {
  
  ## if blade_length <= 0 or wind_speed is <0, stops the function as it's illogical
  if(blade_length <= 0){
    stop("Please check your Blade Length and Try Again")
  }
  
  wind = ifelse(wind_speed < 0, stop("Please check your Wind Speed and Try Again"), wind_speed)
  
  
  power = 0.5 * CP * pi * (blade_length)^2 * (wind)^3 ##calculate power
  
  inertia <- ((blade_length^2)*mass) ##caculate moment of inertia
  
  
   KE <- (0.5*inertia*wind^2) ## calculate kinetic energy
  
  results <- c(KE, power) ## make a vector containing KE and power
  
  return(results) ##return vector
  
}

