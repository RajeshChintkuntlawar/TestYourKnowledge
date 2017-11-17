set schema 'testyourknowledgelevel';

INSERT INTO roles(user_role)
	VALUES ('sme'),
	 ('user');

INSERT INTO testyourknowledgelevel.users(
	user_name, password, last_name, first_name, email_id, role_id)
    values
('rajesh', crypt('test',gen_salt('md5')), 'Chintkuntlawar', 'Rajesh', 'rajesh.chintkuntlawar@capitalone.com',  1),
('imrana', crypt('test',gen_salt('md5')), 'Islam', 'Imrana', 'imrana.islam@capitalone.com',  1),
('brunda', crypt('test',gen_salt('md5')), 'Prakash', 'Brunda', 'brunda.prakash@capitalone.com',  1),
('matt', crypt('test',gen_salt('md5')), 'Dolan', 'Matt', 'matt.dolan@capitalone.com', 2),
('devi', crypt('test',gen_salt('md5')), 'Gadipati', 'Devi', 'devi.gadipati@capitalone.com', 2);

INSERT INTO quiz(
    quiz_subject_area, quiz_description,quiz_creator_id)
	VALUES ('Technology','Core Java Functionality',1),
    ('Entertainment','Movies',2),
    ('Sports','Football',2),
    ('Food','American Cuisine',3),
    ('Food','Italian Cuisine',3);

INSERT INTO question_complexity(question_complexity_level_description)
	VALUES ('Easy'),('Moderate'),('Hard');
    
INSERT INTO questions(question_text, question_complexity_id, quiz_id)
	VALUES ('Which of these keywords is used to make a class?',1,1),
    ('Which of the following is a valid declaration of an object of class Box?', 1,1),
    ('Which of these statement is incorrect?',2,1),
    ('Which of the following statements is correct?',2,1),
    ('What is the stored in the object obj in following lines of code? box obj;',3,1),
    ('Which of these operators is used to allocate memory for an object?',3,1);
    
INSERT INTO answers(
	answer_option_text, answer_option_validity_flag, question_id)
	VALUES ('class', 'Y', 1),
    ('claass', 'N', 1),
    ('function', 'N', 1),
    ('None of the above mentioned', 'N', 1),
    ('Box obj = new Box();', 'Y', 2),
    ('Box obj = new Box;', 'N', 2),
    ('obj = new Box();', 'N', 2),
    ('new Box obj;', 'N', 2),
    ('Applets do not require a main() method at all.', 'N', 3),
    ('Every class must contain a main() method.', 'Y', 3),
    ('There can be only one main() method in a program.', 'N', 3),
    ('main() method must be made public.', 'N', 3),
    ('Public method is accessible only to subclasses of its parent class', 'N', 4),
    ('Public method can only be called by object of its class.', 'N', 4),
    ('Public method is accessible to all other classes in the hierarchy', 'Y', 4),
    ('Public method can be accessed by calling object of the public class.', 'N', 4),
    ('Memory address of allocated memory of object.', 'N', 5),
    ('NULL', 'Y', 5),
    ('Any arbitrary pointer', 'N', 5),
    ('Garbage', 'N', 5),
    ('malloc', 'N', 6),
    ('alloc', 'N', 6),
    ('new', 'Y', 6),
    ('give', 'N', 6);
