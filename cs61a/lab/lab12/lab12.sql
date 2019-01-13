.read fa18data.sql

-- Q2
CREATE TABLE obedience AS
  SELECT seven,denero FROM students;

-- Q3
CREATE TABLE smallest_int AS
  SELECT time,smallest FROM students
         WHERE smallest > 13 order by smallest limit 20;

-- Q4
CREATE TABLE matchmaker AS
  SELECT student1.pet, student1.song, student1.color, student2.color FROM
         students AS student1, students AS student2 WHERE student1.pet = student2.pet
         AND student1.song = student2.song AND student1.time < student2.time;
