use studentdb;
create user hr identified by 'hr';

DROP TABLE IF EXISTS student2;
CREATE TABLE student2
(
  name       VARCHAR(20) NOT NULL,
  GENDER        ENUM('F','M') NOT NULL,
  student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (student_id)
);

DROP TABLE IF EXISTS score2;
#@ _CREATE_TABLE_
CREATE TABLE score2
(
  student_id INT UNSIGNED NOT NULL,
  event_id   INT UNSIGNED NOT NULL,
  score      INT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES student2 (student_id)  ON DELETE CASCADE
) ;

INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Megan','F',1);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Joseph','M',2);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Kyle','M',3);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Katie','F',4);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Abby','F',5);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Nathan','M',6);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Liesl','F',7);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Ian','M',8);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Peter','M',10);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Michael','M',11);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Thomas','M',12);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Devri','F',13);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Ben','M',14);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Aubrey','F',15);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Rebecca','F',16);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Will','M',17);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Max','M',18);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Rianne','F',19);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Avery','F',20);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Lauren','F',21);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Becca','F',22);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Gregory','M',23);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Sarah','F',24);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Robbie','M',25);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Keaton','M',26);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Carter','M',27);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Teddy','M',28);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Gabrielle','F',29);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Grace','F',30);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Emily','F',31);
INSERT INTO STUDENT2(NAME,GENDER,STUDENT_ID) VALUES ('Colin','M',9);



INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (1,1,20);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (3,1,20);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (4,1,18);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (5,1,13);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (6,1,18);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (7,1,14);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (8,1,14);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (9,1,11);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (10,1,19);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (11,1,18);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (12,1,19);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (14,1,11);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (15,1,20);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (16,1,18);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (17,1,9);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (18,1,20);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (19,1,9);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (20,1,9);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (21,1,13);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (22,1,13);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (23,1,16);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (24,1,11);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (25,1,19);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (26,1,10);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (27,1,15);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (28,1,15);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (29,1,19);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (30,1,17);
INSERT INTO score2(STUDENT_ID,EVENT_ID,SCORE)  VALUES (31,1,11);



grant delete on studentdb.student2 to proxy_user;

/*connect to proxy_user*/
DELETE FROM studentdb.student2  WHERE student_id = 5;

insert into studentdb.student2(name,gender,student_id)  VALUES ('proxy','F',100);
UPDATE studentdb.student2 SET stdent_id = 101 where student_id =100;



ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

UPDATE mysql.user SET Grant_priv='Y', Super_priv='Y' WHERE User='root';
FLUSH PRIVILEGES;