# TCL : Transaction Control Langugae
/*
-- A single unit of work in a database is formed after 
   the consecutive execution of commands is known as a transaction
-- TCL commands help to manage the transactions that take place 
   in a database.
-- Ensure the database never contains the result of partial operations.
*/

# TCL Commands:
-- TRANSACTION
-- COMMIT  
-- ROLLBACK
-- SAVEPOINT

select * from students;
start transaction;
INSERT INTO students VALUES (4, 'Ac', 53, 'MySQL', 'M');
INSERT INTO students VALUES (5, 'Bb', 33, 'MySQL', 'f');
INSERT INTO students VALUES (6, 'cc', 25, 'MySQL', 'M');
rollback;     --  stops transaction , undo data changes within transaction 

start transaction;
INSERT INTO students VALUES (4, 'Ac', 53, 'MySQL', 'M');
INSERT INTO students VALUES (5, 'Bb', 33, 'MySQL', 'f');
INSERT INTO students VALUES (6, 'cc', 25, 'MySQL', 'M');
commit;    -- stop transcations , make the data changes within transcations permanent  

start transaction;
INSERT INTO students VALUES (7, 'Aac', 53, 'MySQL', 'M');
INSERT INTO students VALUES (8, 'Bd', 33, 'MySQL', 'f');
INSERT INTO students VALUES (9, 'cz', 25, 'MySQL', 'M');
savepoint s1;
INSERT INTO students VALUES (10, 'tez', 53, 'MySQL', 'M');
INSERT INTO students VALUES (11, 'jaz', 33, 'MySQL', 'f');
savepoint s2;
INSERT INTO students VALUES (12, 'lez', 53, 'MySQL', 'M');
rollback to s1;  -- ends the transcations , 



















START TRANSACTION;


