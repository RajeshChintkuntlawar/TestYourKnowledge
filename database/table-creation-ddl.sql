--drop schema testyourknowledgelevel cascade;
CREATE SCHEMA testyourknowledgelevel;

set schema 'testyourknowledgelevel';

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

CREATE TABLE roles
(
role_id SERIAL,
user_role VARCHAR(50) not null,
CONSTRAINT roles_pkey PRIMARY KEY (role_id)
);

CREATE TABLE quiz
(
quiz_id SERIAL,
quiz_subject_area VARCHAR(100) not null,
quiz_description VARCHAR(50) not null,
quiz_creator_id int not null,
CONSTRAINT quiz_pkey PRIMARY KEY (quiz_id)
);

CREATE TABLE question_complexity
(
question_complexity_id SERIAL,
question_complexity_level_description VARCHAR(50) UNIQUE ,
CONSTRAINT complexity_pkey PRIMARY KEY (question_complexity_id)
);

CREATE TABLE questions
(
question_id SERIAL,
question_text VARCHAR(255) UNIQUE not null,
question_complexity_id int not null,
quiz_id int  not null,
CONSTRAINT question_pkey PRIMARY KEY (question_id)
);

CREATE TABLE answers
(
answer_id SERIAL,
answer_option_text VARCHAR(255) not null,
answer_option_validity_flag VARCHAR(1) DEFAULT 'N',
question_id int not null,
CONSTRAINT answer_pkey PRIMARY KEY (answer_id, question_id)
);

ALTER TABLE users ADD FOREIGN KEY (role_id) REFERENCES roles (role_id);
ALTER TABLE quiz ADD FOREIGN KEY (quiz_creator_id) REFERENCES users (user_id);
ALTER TABLE questions ADD FOREIGN KEY (question_complexity_id) REFERENCES question_complexity (question_complexity_id);
ALTER TABLE questions ADD FOREIGN KEY (quiz_id) REFERENCES quiz (quiz_id);
ALTER TABLE answers ADD FOREIGN KEY (question_id) REFERENCES questions (question_id) ON DELETE CASCADE;
