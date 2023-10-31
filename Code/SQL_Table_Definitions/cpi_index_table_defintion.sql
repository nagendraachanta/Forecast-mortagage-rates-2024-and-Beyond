CREATE TABLE cpi_index (
    reported_date DATE NOT NULL,
    cpi DECIMAL(20 , 2 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/CPIAUCSL.csv' 
INTO TABLE cpi_index 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/CPIAUCSL