\echo "1.1"
SELECT * FROM teachers;

\echo "1.2"
SELECT * FROM study_groups WHERE speciality = 'ЭВМ';

\echo "1.3"
SELECT codeTeacher, numberOfAudience FROM teacher_subject_group WHERE codeSubject = '18П';

\echo "1.4"
SELECT DISTINCT subjects.title, subjects.code FROM teacher_subject_group
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
        WHERE teachers.surname = 'Костин';