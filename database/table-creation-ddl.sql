
CREATE TABLE Complexity
(
complexityid SERIAL,
name VARCHAR(50) UNIQUE ,
CONSTRAINT Complexity_pkey PRIMARY KEY (complexityid)
);

CREATE TABLE Answer
(
answerid SERIAL,
answertext VARCHAR(255),
correctflag VARCHAR(2),
questionid INTEGER,
CONSTRAINT Answer_pkey PRIMARY KEY (answerid)
);

CREATE TABLE Quiz
(
quizid SERIAL,
title VARCHAR(100),
category VARCHAR(50),
CONSTRAINT Quiz_pkey PRIMARY KEY (quizid)
);

CREATE TABLE Question
(
questionid SERIAL,
questiontext VARCHAR(255) UNIQUE ,
complexityid INTEGER,
quizid INTEGER,
CONSTRAINT Question_pkey PRIMARY KEY (questionid)
);

CREATE TABLE Roles
(
roleid SERIAL,
userrole VARCHAR(50),
CONSTRAINT Roles_pkey PRIMARY KEY (roleid)
);

CREATE TABLE Users
(
userid SERIAL,
username VARCHAR(50) UNIQUE ,
password VARCHAR(50)
lastname VARCHAR(50),
firstname VARCHAR(50),
email VARCHAR(50) UNIQUE ,
roleid INTEGER,
CONSTRAINT Users_pkey PRIMARY KEY (userid)
);

ALTER TABLE Answer ADD FOREIGN KEY (questionid) REFERENCES Question (questionid);

ALTER TABLE Question ADD FOREIGN KEY (complexityid) REFERENCES Complexity (complexityid);

ALTER TABLE Question ADD FOREIGN KEY (quizid) REFERENCES Quiz (quizid);

ALTER TABLE Users ADD FOREIGN KEY (roleid) REFERENCES Roles (roleid);


