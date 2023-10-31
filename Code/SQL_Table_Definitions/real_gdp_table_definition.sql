CREATE TABLE real_gdp (
    reported_date DATE NOT NULL,
    real_gdp DECIMAL(20 , 3 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/GDPC1.csv' 
INTO TABLE real_gdp 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/GDPC1