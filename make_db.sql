DROP DATABASE IF EXISTS tv_schedule;
CREATE DATABASE IF NOT EXISTS tv_schedule;
USE tv_schedule;

CREATE TABLE episodes (
    Episode_ID INT AUTO_INCREMENT PRIMARY KEY,
    Season INT,
    Episode INT,
    Episode_Title VARCHAR(255),
    Episode_Details TEXT,
    Video_Length VARCHAR(100),
    Genre VARCHAR(100)
);

CREATE TABLE programs (
    Program_ID INT AUTO_INCREMENT PRIMARY KEY,
    Program_Title VARCHAR(255) NOT NULL,
    Channels VARCHAR(100),
    Release_Date DATETIME,
    View_Count INT,
    Episode_ID INT,
    FOREIGN KEY (Episode_ID)
        REFERENCES episodes (Episode_ID)
);
