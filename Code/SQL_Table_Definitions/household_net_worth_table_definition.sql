CREATE TABLE household_net_worth (
    reported_date DATE NOT NULL,
    household_net_worth DECIMAL(20 , 2 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/BOGZ1FL192090005Q.csv' 
INTO TABLE household_net_worth 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/BOGZ1FL192090005Q