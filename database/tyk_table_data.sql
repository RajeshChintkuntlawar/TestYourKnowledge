set schema 'testyourknowledge';

INSERT INTO Complexity (name) values
('easy'),
('moderate'),
('hard');

INSERT INTO Roles (name) values
('admin'),
('user');

INSERT INTO users ( username, lastname, firstname, email, roleid)  values
('RajeshC', 'Chintkuntlawar', 'Rajesh', 'rajesh.chintkuntlawar@capitalone.com',  1),
('MattD', 'Dolan', 'Matt', 'matt.dolan@capitalone.com', 2);

INSERT INTO Quiz (title, category) values
('File Extensions', 'Computer');

INSERT INTO Question (questiontext, complexityid, quizid) values
('The extension .MOV refers usually to what kind of file?', 1, 1),
('The extension .BAK refers usually to what kind of file?', 1, 1);

INSERT INTO Answer (answertext, correctflag, questionid) values
('Audio file', 'N' , 1),
('MS Office Document', 'N' , 1),
('Animation/movie file', 'Y' , 1),
('Image file', 'N' , 1),
('Audio file', 'N' , 2),
('Backup file', 'Y' , 2),
('Animation/Movie file', 'N' , 2),
('MS Encarta document', 'N' , 2);
