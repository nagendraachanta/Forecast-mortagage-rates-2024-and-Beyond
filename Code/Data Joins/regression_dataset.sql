/*
CREATE VIEW regression_data1 AS
SELECT m0.record_date,mortgage_rate,consumer_goods_production,cpi,household_net_worth,housing_inventory,industrial_production,rates_3months,job_openings,money_supply,money_velocity,ppi
FROM

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
AVG(mortgage_rate) as mortgage_rate
FROM mortgage_rates GROUP BY record_date) AS m0

JOIN

(SELECT
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
consumer_goods_production
FROM consumer_goods_production) AS m1

ON m0.record_date = m1.record_date

JOIN

(SELECT
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
cpi
FROM cpi_index) AS m2

ON m0.record_date = m2.record_date

JOIN

(SELECT
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
household_net_worth
FROM household_net_worth) AS m3

ON m0.record_date = m3.record_date

JOIN

(SELECT
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
housing_inventory
FROM housing_inventory) AS m4

ON m0.record_date = m4.record_date

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

JOIN

(SELECT distinct
DATE_FORMAT(reported_date, '%Y-%m') AS record_date,
ppi_index AS ppi
FROM ppi_index) AS m10

ON m0.record_date = m10.record_date


CREATE TABLE regression_data_stage1 (
    record_date varchar(10) NOT NULL,
    mortgage_rate DECIMAL(10 , 2 ) NOT NULL,
    consumer_goods_production DECIMAL(10 , 4 ) NOT NULL,
    cpi DECIMAL(10 , 2 ) NOT NULL,
    household_net_worth DECIMAL(20 , 2 ) NOT NULL,
    housing_inventory DECIMAL(10 , 2 ) NOT NULL,
    industrial_production DECIMAL(10 , 4 ) NOT NULL,
    rates_3months DECIMAL(10 , 2 ) NOT NULL,
    job_openings DECIMAL(10 , 2 ) NOT NULL,
    money_supply DECIMAL(10 , 3 ) NOT NULL,
    money_velocity DECIMAL(10 , 3 ) NOT NULL,
    ppi DECIMAL(10 , 3 ) NOT NULL,
    PRIMARY KEY (record_date)
);

*/

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/regression_data.csv' 
INTO TABLE regression_data_stage1 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
