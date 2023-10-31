CREATE TABLE ppi_index (
    reported_date DATE NOT NULL,
    ppi_index DECIMAL(20 , 4 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/PPIACO.csv' 
INTO TABLE ppi_index 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/PPIACO