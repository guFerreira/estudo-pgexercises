/* exercício 1 - Retrieve everything from a table */
SELECT * FROM cd.facilities;

/* exercício 2 - Retrieve specific columns from a table */
SELECT name, membercost FROM cd.facilities;

/* exercício 3 - Control which rows are retrieved */
SELECT * FROM cd.facilities
WHERE membercost >0;