CREATE TABLE consumer_goods_production (
    reported_date DATE NOT NULL,
    consumer_goods_production DECIMAL(20 , 4 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/IPCONGD.csv' 
INTO TABLE consumer_goods_production 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/IPCONGD