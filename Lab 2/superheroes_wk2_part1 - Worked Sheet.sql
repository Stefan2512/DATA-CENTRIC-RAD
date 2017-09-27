use superheroes


SHOW TABLES;

+-----------------------+
| Tables_in_superheroes |
+-----------------------+
| superhero_no_pk       |
| superhero_table       |
+-----------------------+
INSERT INTO 






INSERT INTO `superhero_table` VALUES ('Penguin','Gotham City','Danny','DeVitto','1955-01-14',44.57);

Query OK, 1 row affected (0.01 sec)
 describe superhero_table
    -> ;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| name            | varchar(20) | NO   | PRI | NULL    |       |
| city            | varchar(20) | NO   | PRI | NULL    |       |
| real_first_name | varchar(20) | YES  |     | NULL    |       |
| real_surname    | varchar(20) | YES  |     | NULL    |       |
| dob             | date        | YES  |     | NULL    |       |
| powers          | double(5,2) | YES  |     | 77.88   |       |
+-----------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

SELECT * FROM superhero_table;
+----------------+-------------+-----------------+--------------+------------+--------+
| name           | city        | real_first_name | real_surname | dob        | powers |
+----------------+-------------+-----------------+--------------+------------+--------+
| Batgirl        | Gotham City | Barbara         | Gordon       | 1995-12-07 |  98.05 |
| Batman         | Gotham City | Bruce           | Wayne        | 1960-11-12 |  97.45 |
| Batman         | Metropolis  | Bruce           | Wayne        | 1960-11-12 |  76.88 |
| Penguin        | Gotham City | Danny           | DeVitto      | 1955-01-14 |  44.57 |
| Radioactiveman | Springfield | NULL            | NULL         | 2000-07-04 |  76.88 |
| Spiderman      | Metropolis  | Bruce           | Clark        | 1980-01-27 |   7.00 |
| Spiderman      | New York    | Peter           | Parker       | 1980-01-01 |  76.88 |
| Superman       | Metropolis  | Clark           | Kent         | 1980-11-22 |  99.00 |
+----------------+-------------+-----------------+--------------+------------+--------+
8 rows in set (0.00 sec)


INSERT INTO `superhero_table` (name, city, powers) VALUES ('Joker', 'New York', 77.00);
SELECT * FROM superhero_table;
+----------------+-------------+-----------------+--------------+------------+--------+
| name           | city        | real_first_name | real_surname | dob        | powers |
+----------------+-------------+-----------------+--------------+------------+--------+
| Batgirl        | Gotham City | Barbara         | Gordon       | 1995-12-07 |  98.05 |
| Batman         | Gotham City | Bruce           | Wayne        | 1960-11-12 |  97.45 |
| Batman         | Metropolis  | Bruce           | Wayne        | 1960-11-12 |  76.88 |
| Joker          | New York    | NULL            | NULL         | NULL       |  77.00 |
| Penguin        | Gotham City | Danny           | DeVitto      | 1955-01-14 |  44.57 |
| Radioactiveman | Springfield | NULL            | NULL         | 2000-07-04 |  76.88 |
| Spiderman      | Metropolis  | Bruce           | Clark        | 1980-01-27 |   7.00 |
| Spiderman      | New York    | Peter           | Parker       | 1980-01-01 |  76.88 |
| Superman       | Metropolis  | Clark           | Kent         | 1980-11-22 |  99.00 |
+----------------+-------------+-----------------+--------------+------------+--------+


UPDATE 'superhero_table' SET real_first_name = "UNKNOWN", real_surname = "UNKNOWN" WHERE real_first_name IS NULL AND real_surname IS NULL;
