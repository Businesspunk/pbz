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
    semester SMALLINT NOT NULL
);

CREATE TABLE study_groups (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    code VARCHAR(30) NOT NULL,
    title VARCHAR(50) NOT NULL,
    countOfPersons SMALLINT NOT NULL,
    speciality VARCHAR(50) NOT NULL,
    surnameHead VARCHAR(50) NOT NULL
);

CREATE TABLE teacher_subject_group (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    codeGroup VARCHAR(30) NOT NULL,
    codeSubject VARCHAR(30) NOT NULL,
    codeTeacher VARCHAR(30) NOT NULL,
    numberOfAudience SMALLINT NOT NULL
);

/* -- Seeding database -- */

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

/* Groups */
INSERT INTO study_groups ( code, title, countOfPersons, speciality, surnameHead )
    VALUES('8Г', 'Э-12', 18, 'ЭВМ', 'Иванова');

INSERT INTO study_groups ( code, title, countOfPersons, speciality, surnameHead )
    VALUES('7Г', 'Э-15', 22, 'ЭВМ', 'Сеткин');

INSERT INTO study_groups ( code, title, countOfPersons, speciality, surnameHead )
    VALUES('4Г', 'АС-9', 24, 'АСОИ', 'Балабанов');

INSERT INTO study_groups ( code, title, countOfPersons, speciality, surnameHead )
    VALUES('3Г', 'АС-8', 20, 'АСОИ', 'Чижов');

INSERT INTO study_groups ( code, title, countOfPersons, speciality, surnameHead )
    VALUES('17Г', 'С-14', 29, 'СД', 'Амросов');

INSERT INTO study_groups ( code, title, countOfPersons, speciality, surnameHead )
    VALUES('12Г', 'М-6', 16, 'Международная экономика', 'Трубин');

INSERT INTO study_groups ( code, title, countOfPersons, speciality, surnameHead )
    VALUES('10Г', 'Б-4', 21, 'Бухучет', 'Зязюткин');
/* /Groups */

/* Group-Subject-Teacher */


INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('8Г', '12П', '222Л', 112);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('8Г', '14П', '221Л', 220);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('8Г', '17П', '222Л', 112);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('7Г', '14П', '221Л', 220);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('7Г', '17П', '222Л', 241);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('7Г', '18П', '225Л', 210);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('4Г', '12П', '222Л', 112);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('4Г', '18П', '225Л', 210);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('3Г', '12П', '222Л', 112);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('3Г', '17П', '221Л', 241);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('3Г', '18П', '225Л', 210);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('17Г', '12П', '222Л', 112);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('17Г', '22П', '110Л', 220);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('17Г', '34П', '430Л', 118);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('12Г', '12П', '222Л', 112);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('12Г', '22П', '110Л', 210);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('10Г', '12П', '222Л', 210);

INSERT INTO teacher_subject_group ( codeGroup, codeSubject, codeTeacher, numberOfAudience )
    VALUES('10Г', '22П', '110Л', 210);

/* /Group-Subject-Teacher */