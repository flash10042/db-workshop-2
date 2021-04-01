CREATE TABLE tbl_location (
    regionID SERIAL PRIMARY KEY,
    regionName VARCHAR(255) NOT NULL,
    areaName VARCHAR(255) NOT NULL,
    terrName VARCHAR(255) NOT NULL,
    terrType VARCHAR(255),
    UNIQUE (regionName, areaName, terrName)
);


CREATE TABLE tbl_institution (
    instID SERIAL PRIMARY KEY,
    instName VARCHAR(255) UNIQUE NOT NULL,
    instType VARCHAR(255),
    instLocID INTEGER REFERENCES tbl_location (regionID),
    instParent VARCHAR(255)
);


CREATE TABLE tbl_person (
    outID VARCHAR(255) PRIMARY KEY,
    birth INTEGER,
    sex VARCHAR(255),
    studyStatus VARCHAR(255),
    registrationLocID INTEGER REFERENCES tbl_location (regionID),
    classProfile VARCHAR(255),
    classLang VARCHAR(255),
    studyInstID INTEGER REFERENCES tbl_institution (instID)
);


CREATE TABLE tbl_exam (
    examID SERIAL PRIMARY KEY,
    outID VARCHAR(255) REFERENCES tbl_person (outID) NOT NULL,
    subjectName VARCHAR(255) NOT NULL,
    examYear INTEGER NOT NULL,
    testLang VARCHAR(255),
    testStatus VARCHAR(255),
    dpaLevel VARCHAR(255),
    ball100 NUMERIC,
    ball12 NUMERIC,
    ball NUMERIC,
    adaptScale INTEGER,
    testInstID INTEGER REFERENCES tbl_institution (instID),
    UNIQUE (outID, subjectName, examYear)
);