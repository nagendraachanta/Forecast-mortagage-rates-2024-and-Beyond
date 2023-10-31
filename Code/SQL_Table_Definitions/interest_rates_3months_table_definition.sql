CREATE TABLE interest_rates_3months (
    reported_date DATE NOT NULL,
    rates_3months DECIMAL(10 , 2 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/IR3TIB01USM156N.csv' 
INTO TABLE interest_rates_3months 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/IR3TIB01USM156N