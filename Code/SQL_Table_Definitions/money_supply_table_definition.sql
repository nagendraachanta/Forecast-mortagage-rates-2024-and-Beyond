CREATE TABLE money_supply (
    reported_date DATE NOT NULL,
    money_supply DECIMAL(20 , 2 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/WM2NS.csv' 
INTO TABLE money_supply 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/WM2NS