CREATE TABLE User (
    UID INT(64) NOT NULL PRIMARY KEY,
    userName VARCHAR(15) NOT NULL,
    dateOfBirth DATE,
    gender VARCHAR(15),
    dpLink TEXT,
    isDoctor BOOLEAN,
    registeredDate DATETIME
);

CREATE TABLE GoogleAccount (
   UID INT(64) NOT NULL PRIMARY KEY,
   email TEXT NOT NULL,
   googleId TEXT NOT NULL,
   refreshToken TEXT,
   accessToken TEXT 
);

CREATE TABLE Doctor (
    UID INT(64) NOT NULL PRIMARY KEY,
    slmcNo TEXT NOT NULL,
    specalization INT(32)
);

CREATE TABLE Specialization (
    SID INT(32) NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE ChronicCondition (
    CID INT(32) NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Questions (
    QID INT(64) NOT NULL PRIMARY KEY,
    askedBy INT(64) NOT NULL,
    isAnonymas BOOLEAN,
    date DATETIME,
    chronicCondition INT(32),
    visibility INT(2),
    status INT(2),
    selectedAnswer INT(64)
);

CREATE TABLE Answer (
    AID INT(64) NOT NULL PRIMARY KEY,
    QID INT(64) NOT NULL,
    answerdBy INT(64) NOT NULL,
    date DATETIME
);

CREATE TABLE Rating (
    RID INT(64) NOT NULL PRIMARY KEY,
    stars TINYINT(1),
    ratedBy INT(64),
    date DATETIME,
    QID INT(64),
    AID INT(64)
);