select m0.record_date, mortgage_rate, consumer_goods_production,cpi,household_net_worth,housing_inventory,industrial_production,rates_3months,job_openings,money_supply,money_velocity,ppi,real_gdp,total_public_debt,treasury_yield_ten_year,unemployment_rate

from 

regression_data_stage1 AS m0

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
real_gdp
FROM real_gdp) AS m1

ON m0.record_date = m1.record_date

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
total_public_debt
FROM total_public_debt) AS m2

ON m0.record_date = m2.record_date

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
treasury_yield_ten_year
FROM treasury_yield_ten_year) AS m3

ON m0.record_date = m3.record_date

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
unemployment_rate
FROM unemployment_rate) AS m4

ON m0.record_date = m4.record_date

