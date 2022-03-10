/* exercício 1 - Retrieve everything from a table */
SELECT * FROM cd.facilities;

/* exercício 2 - Retrieve specific columns from a table */
SELECT name, membercost FROM cd.facilities;

/* exercício 3 - Control which rows are retrieved */
SELECT * FROM cd.facilities
WHERE membercost >0;

/* exercício 4 - Control which rows are retrieved - part 2 */
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost < monthlymaintenance/50 
	and membercost > 0


/* exercício 5 - Basic string searches */
/* exercício 6 - Matching against multiple possible values */
/* exercício 7 - Classify results into buckets */
/* exercício 8 - Working with dates */
/* exercício 9 - Removing duplicates, and ordering results */
/* exercício 10 - Combining results from multiple queries */
/* exercício 11 - Simple aggregation */
/* exercício 12 - More aggregation */