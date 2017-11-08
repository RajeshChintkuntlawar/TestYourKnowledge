set schema 'testyourknowledgelevel';

INSERT INTO roles(
	role_id, user_role)
	VALUES (1, 'sme'),
	 (2, 'user');

INSERT INTO users(
	user_name, password, last_name, first_name, email_id, role_id)
    values
('rajesh', 'test', 'Chintkuntlawar', 'Rajesh', 'rajesh.chintkuntlawar@capitalone.com',  1),
('imrana', 'test', 'Islam', 'Imrana', 'imrana.islam@capitalone.com',  1),
('brunda', 'test', 'Prakash', 'Brunda', 'brunda.prakash@capitalone.com',  1),
('matt', 'test', 'Dolan', 'Matt', 'matt.dolan@capitalone.com', 2),
('devi', 'test', 'Gadipati', 'Devi', 'devi.gadipati@capitalone.com', 2);

INSERT INTO quiz_type(
    quiz_subject_area, quiz_description)
	VALUES ('Technology','Core Java Functionality'),
    ('Entertainment','Movies'),
    ('Sports','Football'),
    ('Food','American Cuisine'),
    ('Food','Italian Cuisine');

INSERT INTO question_complexity(question_complexity_level_description)
	VALUES ('Easy'),('Moderate'),('Hard');
    
INSERT INTO questions(question_text, question_complexity_id, quiz_type_id)
	VALUES ('Which of these keywords is used to make a class?',1,1),
    ('Which of the following is a valid declaration of an object of class Box?', 1,1),
    ('Which of these statement is incorrect?',2,1),
    ('Which of the following statements is correct?',2,1),
    ('What is the stored in the object obj in following lines of code? box obj;',3,1),
    ('Which of these operators is used to allocate memory for an object?',3,1);
    
INSERT INTO answers(
	answer_id, answer_option_text, answer_option_validity_flag, question_id)
	VALUES (1, 'class', 'Y', 1),
    (2, 'claass', 'N', 1),
    (3, 'function', 'N', 1),
    (4, 'None of the above mentioned', 'N', 1),
    (1, 'Box obj = new Box();', 'Y', 2),
    (2, 'Box obj = new Box;', 'N', 2),
    (3, 'obj = new Box();', 'N', 2),
    (4, 'new Box obj;', 'N', 2),
    (1, 'Applets do not require a main() method at all.', 'N', 3),
    (2, 'Every class must contain a main() method.', 'Y', 3),
    (3, 'There can be only one main() method in a program.', 'N', 3),
    (4, 'main() method must be made public.', 'N', 3),
    (1, 'Public method is accessible only to subclasses of its parent class', 'N', 4),
    (2, 'Public method can only be called by object of its class.', 'N', 4),
    (3, 'Public method is accessible to all other classes in the hierarchy', 'Y', 4),
    (4, 'Public method can be accessed by calling object of the public class.', 'N', 4),
    (1, 'Memory address of allocated memory of object.', 'N', 5),
    (2, 'NULL', 'Y', 5),
    (3, 'Any arbitrary pointer', 'N', 5),
    (4, 'Garbage', 'N', 5),
    (1, 'malloc', 'N', 6),
    (2, 'alloc', 'N', 6),
    (3, 'new', 'Y', 6),
    (4, 'give', 'N', 6);
