CREATE TABLE teachers (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    personal_number VARCHAR(30) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    department VARCHAR(20) NOT NULL,
    speciality VARCHAR(50) NOT NULL,
    phone SMALLINT NOT NULL
);

CREATE TABLE subjects (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    code VARCHAR(30) NOT NULL,
    title VARCHAR(50) NOT NULL,
    sumOfHours SMALLINT NOT NULL,
    speciality VARCHAR(50) NOT NULL,
    semester SMALLINT NOT NULL,
);

CREATE TABLE study_groups (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    code VARCHAR(30) NOT NULL,
    title VARCHAR(50) NOT NULL,
    countOfPersons SMALLINT NOT NULL,
    speciality VARCHAR(50) NOT NULL,
    surname_head VARCHAR(50) NOT NULL,
);

/* Teachers */

INSERT INTO teachers ( personal_number, surname, position, department, speciality, phone) 
VALUES('221Л', 'Фролов', 'Доцент', 'ЭВМ', 'АСОИ, ЭВМ', 487);

INSERT INTO teachers ( personal_number, surname, position, department, speciality, phone) 
VALUES('222Л', 'Костин', 'Доцент', 'ЭВМ', 'ЭВМ', 543);

INSERT INTO teachers ( personal_number, surname, position, department, speciality, phone) 
VALUES('225Л', 'Бойко', 'Профессор', 'АСУ', 'АСОИ, ЭВМ', 112);

INSERT INTO teachers ( personal_number, surname, position, department, speciality, phone) 
VALUES('430Л', 'Глазов', 'Ассистент', 'ТФ', 'СД', 421);

INSERT INTO teachers ( personal_number, surname, position, department, speciality, phone) 
VALUES('110Л', 'Петров', 'Ассистент', 'Экономики', 'Международная экономика', 324);

/* /Teachers */

/* Subjects */
INSERT INTO subjects ( code, title, sumOfHours, speciality, semester) 
    VALUES('12П', 'Мини ЭВМ', 36, 'ЭВМ', 1);

INSERT INTO subjects ( code, title, sumOfHours, speciality, semester) 
    VALUES('14П', 'ПЭВМ', 72, 'ЭВМ', 2);

INSERT INTO subjects ( code, title, sumOfHours, speciality, semester) 
    VALUES('17П', 'СУБД ПК', 48, 'АСОИ', 4);

INSERT INTO subjects ( code, title, sumOfHours, speciality, semester) 
    VALUES('18П', 'ВКСС', 52, 'АСОИ', 6);

INSERT INTO subjects ( code, title, sumOfHours, speciality, semester) 
    VALUES('34П', 'Физика', 30, 'СД', 6);

INSERT INTO subjects ( code, title, sumOfHours, speciality, semester) 
    VALUES('22П', 'Аудит', 24, 'Бухучета', 3);
/* /Subjects */