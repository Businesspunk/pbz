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

\echo "1.5"
SELECT study_groups.code FROM teacher_subject_group
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
        WHERE teachers.surname = 'Фролов' LIMIT 1;

\echo "1.6"
SELECT * FROM subjects WHERE speciality = 'АСОИ';

\echo "1.7"
SELECT * FROM teachers WHERE speciality LIKE '%АСОИ%';

\echo "1.8"
SELECT DISTINCT teachers.surname FROM teacher_subject_group
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
        WHERE teacher_subject_group.numberOfAudience = 210;

\echo "1.9"
SELECT subjects.title as subject_title, study_groups.title as group_title FROM teacher_subject_group
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
        WHERE teacher_subject_group.numberOfAudience BETWEEN 100 AND 200;

\echo "1.10"

\echo "1.11"
SELECT sum(countOfPersons) FROM study_groups WHERE speciality = 'ЭВМ';

\echo "1.12"
SELECT DISTINCT teachers.personal_number FROM teacher_subject_group
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
        WHERE study_groups.speciality = 'ЭВМ';

\echo "1.13"
SELECT DISTINCT subjects.code FROM teacher_subject_group
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code;

\echo "1.14"
SELECT DISTINCT teachers.surname FROM teacher_subject_group
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
    WHERE teacher_subject_group.codeSubject IN 
        ( SELECT codeSubject FROM teacher_subject_group WHERE codeTeacher IN 
            ( SELECT codeTeacher FROM teacher_subject_group WHERE codeSubject = '14П')
        );

\echo "1.15"
SELECT DISTINCT subjects FROM teacher_subject_group
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
        WHERE subjects.code NOT IN 
            ( SELECT codeSubject FROM teacher_subject_group 
                WHERE teacher_subject_group.codeTeacher = '221Л' 
            );

\echo "1.16"
SELECT DISTINCT subjects FROM teacher_subject_group
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
        WHERE subjects.code NOT IN 
            ( SELECT codeSubject FROM teacher_subject_group 
                JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
                    WHERE study_groups.title = 'М-6' 
            );

\echo "1.17"
SELECT DISTINCT teachers FROM teacher_subject_group
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
        WHERE teachers.position = 'Доцент' AND ( study_groups.code = '3Г' OR study_groups.code = '8Г' ); 

\echo "1.18"
SELECT subjects.code, teachers.personal_number, study_groups.code FROM teacher_subject_group
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
        WHERE teachers.department = 'ЭВМ' AND teachers.speciality LIKE '%АСОИ%';

\echo "1.19"
SELECT DISTINCT study_groups.code FROM teacher_subject_group
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
        WHERE teachers.speciality LIKE CONCAT('%',study_groups.speciality ,'%');

\echo "1.20"
SELECT DISTINCT teachers.personal_number FROM teacher_subject_group
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
        WHERE teachers.speciality LIKE CONCAT('%',study_groups.speciality ,'%')
            AND teachers.department = 'ЭВМ';

\echo "1.21"
SELECT DISTINCT study_groups.speciality FROM teacher_subject_group
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN teachers ON teacher_subject_group.codeTeacher = teachers.personal_number
        WHERE teachers.department = 'АСУ';

\echo "1.22"
SELECT subjects.code FROM teacher_subject_group
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
        WHERE study_groups.title = 'АС-8';

\echo "1.23"
SELECT study_groups.code FROM teacher_subject_group
    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
        WHERE subjects.code IN 
            (
                SELECT subjects.code FROM teacher_subject_group
                    JOIN study_groups ON teacher_subject_group.codeGroup = study_groups.code
                    JOIN subjects ON teacher_subject_group.codeSubject = subjects.code
                        WHERE study_groups.title = 'АС-8';
            );