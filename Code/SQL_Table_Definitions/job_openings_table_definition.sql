CREATE TABLE job_openings (
    reported_date DATE NOT NULL,
    job_openings DECIMAL(20 , 2 ) NOT NULL,
    PRIMARY KEY (reported_date)
);

LOAD DATA LOCAL INFILE 'c:/Users/themi.THEMIYAWS/Desktop/mgt-6203-source-data/JTSJOL.csv' 
INTO TABLE job_openings 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#https://fred.stlouisfed.org/series/JTSJOL