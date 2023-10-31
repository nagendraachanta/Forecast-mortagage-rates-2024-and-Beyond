SELECT m0.record_date,mortgage_rate,consumer_goods_production,cpi,household_net_worth,industrial_production,rates_3months,job_openings,money_supply,money_velocity
FROM

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
AVG(mortgage_rate) as mortgage_rate
FROM mortgage_rates GROUP BY record_date) AS m0

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
consumer_goods_production
FROM consumer_goods_production) AS m1

ON m0.record_date = m1.record_date

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
cpi
FROM cpi_index) AS m2

ON m0.record_date = m2.record_date

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
household_net_worth
FROM household_net_worth) AS m3

ON m0.record_date = m3.record_date

JOIN 

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
industrial_production
FROM industrial_production) AS m5 

ON m0.record_date = m5.record_date

JOIN 

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
rates_3months
FROM interest_rates_3months) AS m6

ON m0.record_date = m6.record_date

JOIN 

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
job_openings
FROM job_openings) AS m7

ON m0.record_date = m7.record_date

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
AVG(money_supply) as money_supply
FROM money_supply GROUP BY record_date) AS m8

ON m0.record_date = m8.record_date

JOIN 

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
money_velocity 
FROM money_velocity) AS m9

ON m0.record_date = m9.record_date