set schema 'testyourknowledgelevel';

CREATE TABLE complexity
(
complexity_id SERIAL,
complexity_level_description VARCHAR(50) UNIQUE ,
CONSTRAINT complexity_pkey PRIMARY KEY (complexity_id)
);

CREATE TABLE answer
(
answer_id int not null,
answer_option_text VARCHAR(255) not null,
answer_option_validity_flag VARCHAR(1) not null,
question_id int not null,
CONSTRAINT answer_pkey PRIMARY KEY (answer_id, question_id)
);

CREATE TABLE quiz_type
(
quiz_type_id SERIAL,
quiz_type_title VARCHAR(100) not null,
quiz_type_description VARCHAR(50) not null,
CONSTRAINT quiz_pkey PRIMARY KEY (quiz_type_id)
);

CREATE TABLE question
(
question_id SERIAL,
question_text VARCHAR(255) UNIQUE not null,
question_complexity_id int not null,
quiz_type_id int  not null,
CONSTRAINT question_pkey PRIMARY KEY (question_id)
);

CREATE TABLE roles
(
role_id int not null,
user_role VARCHAR(50) not null,
CONSTRAINT roles_pkey PRIMARY KEY (role_id)
);

CREATE TABLE users
(
user_id SERIAL,
user_name VARCHAR(50) UNIQUE not null,
password VARCHAR(50) not null,
last_name VARCHAR(50) not null,
first_name VARCHAR(50) not null,
email_id VARCHAR(50) UNIQUE,
role_id int not null,
CONSTRAINT users_pkey PRIMARY KEY (user_id)
);

ALTER TABLE answer ADD FOREIGN KEY (question_id) REFERENCES question (question_id);

ALTER TABLE question ADD FOREIGN KEY (question_complexity_id) REFERENCES complexity (complexity_id);

ALTER TABLE question ADD FOREIGN KEY (quiz_type_id) REFERENCES quiz_type (quiz_type_id);

ALTER TABLE users ADD FOREIGN KEY (role_id) REFERENCES roles (role_id);
