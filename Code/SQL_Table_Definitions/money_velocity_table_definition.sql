CREATE TABLE money_velocity (
    reported_date DATE NOT NULL,
    money_velocity DECIMAL(20 , 3 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/M2V.csv' 
INTO TABLE money_velocity 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/M2V