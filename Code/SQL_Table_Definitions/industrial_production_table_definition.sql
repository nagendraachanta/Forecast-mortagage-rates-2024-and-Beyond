CREATE TABLE industrial_production (
    reported_date DATE NOT NULL,
    industrial_production DECIMAL(20 , 5 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/INDPRO.csv' 
INTO TABLE industrial_production 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/INDPRO