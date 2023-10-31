CREATE TABLE treasury_yield_ten_year (
    reported_date DATE NOT NULL,
    treasury_yield_ten_year DECIMAL(20 , 2 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/BOGZ1FL073161113Q.csv' 
INTO TABLE treasury_yield_ten_year 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/BOGZ1FL073161113Q