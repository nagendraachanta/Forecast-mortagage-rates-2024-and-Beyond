CREATE TABLE total_public_debt (
    reported_date DATE NOT NULL,
    total_public_debt DECIMAL(10 , 2 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/GFDEBTN.csv' 
INTO TABLE total_public_debt 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/GFDEBTN