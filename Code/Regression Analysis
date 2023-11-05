corr_data<- read.csv("/Users/patel/OneDrive/Desktop/mortgage_dataset4.csv")
head(corr_data)

lm(formula = mortgage_rate ~ consumer_goods_production + cpi + household_net_worth + industrial_production + rates_3months + job_openings + money_supply + money_velocity + X3monthForcast + X6monthForecast, data = Corr_data)

corr_data$12monthForecast <- as.numeric(as.character(corr_data$12monthForecast))

model<-lm(formula = mortgage_rate ~ consumer_goods_production + cpi + household_net_worth + industrial_production + rates_3months + job_openings + money_supply + money_velocity + X3monthForcast + X6monthForecast, data = Corr_data)

summary(model)
