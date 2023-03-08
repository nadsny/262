fish_info= function(fish) {
common= names(which.max(summary(as.factor(fish_data$x))))
rarest= names(which.min(summary(as.factor(fish_data$x)))) 
total= nrow(fish_data)
results<- c(common, rarest, total)
return(results) 
}