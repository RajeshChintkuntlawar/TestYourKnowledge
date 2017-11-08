set schema 'testyourknowledgelevel';

INSERT INTO roles(
	role_id, user_role)
	VALUES (1, 'sme'),
	 (2, 'user');

INSERT INTO users(
	user_name, password, last_name, first_name, email_id, role_id)
    values
('rajesh', 'test', 'chintkuntlawar', 'rajesh', 'rajesh.chintkuntlawar@capitalone.com',  1),
('imrana', 'test', 'islam', 'imrana', 'imrana.islam@capitalone.com',  1),
('brunda', 'test', 'prakash', 'brunda', 'brunda.prakash@capitalone.com',  1),
('matt', 'test', 'dolan', 'matt', 'matt.dolan@capitalone.com', 2),
('devi', 'test', 'gadipati', 'devi', 'devi.gadipati@capitalone.com', 2);

INSERT INTO quiz_type(
    quiz_type_title, quiz_type_description)
	VALUES ('Java', 'Technology'),
    ('Movies', 'Entertainment'),
    ('Football', 'Sports'),
    ('American', 'Food');

INSERT INTO complexity( complexity_level_description)
	VALUES ('easy'),('moderate'),('hard');
    
INSERT INTO question(question_text, question_complexity_id, quiz_type_id)
	VALUES ('Which of these keywords is used to make a class?',10,13),
    ('Which of the following is a valid declaration of an object of class Box?', 10,13),
    ('Which of these statement is incorrect?',11,13),
    ('Which of the following statements is correct?',11,13),
    ('What is the stored in the object obj in following lines of code? box obj;',12,13),
    ('Which of these operators is used to allocate memory for an object?',12,13);
    
INSERT INTO answer(
	answer_id, answer_option_text, answer_option_validity_flag, question_id)
	VALUES (1, 'class', 'Y', 19),
    (2, 'claass', 'N', 19),
    (3, 'function', 'N', 19),
    (4, 'None of the above mentioned', 'N', 19),
    (1, 'Box obj = new Box();', 'Y', 20),
    (2, 'Box obj = new Box;', 'N', 20),
    (3, 'obj = new Box();', 'N', 20),
    (4, 'new Box obj;', 'N', 20),
    (1, 'Applets do not require a main() method at all.', 'N', 21),
    (2, 'Every class must contain a main() method.', 'Y', 21),
    (3, 'There can be only one main() method in a program.', 'N', 21),
    (4, 'main() method must be made public.', 'N', 21),
    (1, 'Public method is accessible only to subclasses of its parent class', 'N', 22),
    (2, 'Public method can only be called by object of its class.', 'N', 22),
    (3, 'Public method is accessible to all other classes in the hierarchy', 'Y', 22),
    (4, 'Public method can be accessed by calling object of the public class.', 'N', 22),
    (1, 'Memory address of allocated memory of object.', 'N', 23),
    (2, 'NULL', 'Y', 23),
    (3, 'Any arbitrary pointer', 'N', 23),
    (4, 'Garbage', 'N', 23),
    (1, 'malloc', 'N', 24),
    (2, 'alloc', 'N', 24),
    (3, 'new', 'Y', 24),
    (4, 'give', 'N', 24);
