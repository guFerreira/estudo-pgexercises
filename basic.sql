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
	and membercost > 0;


/* exercício 5 - Basic string searches */
SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';

/* o LIKE serve pra verificar se é um string, e o que vai ser procurado
* fica entre %palavra que eu procuro%
*/


/* exercício 6 - Matching against multiple possible values */
SELECT * FROM cd.facilities
WHERE facid IN (1,5);

/* utilizar IN quando tiver mais de uma consulta relacionado a um
* determinado campo
*/


/* exercício 7 - Classify results into buckets */
SELECT Name,
	CASE WHEN (monthlymaintenance > 100)
		THEN 'expensive'
	ELSE
		'cheap'
	END AS cost
FROM cd.facilities;
/* colocar o CASE para fazer uma verificação entre o select e o from pra 
* definir o determinado valor que vai ser inserido na tabela e 
* o nome dessa tabela é definido pelo " AS cost"
*/


/* exercício 8 - Working with dates */
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';
/* data no formato do timestamp xxxx-xx-xx xx:xx:xx */

/* exercício 9 - Removing duplicates, and ordering results */
SELECT DISTINCT surname 
FROM cd.members
ORDER BY surname LIMIT 10;
/* DISTINCT serve para remover os sobrenomes iguais
* order by ordena em forma alfabetica os sobrenomes 
* e o LIMIT limita a quantidade de valores na tabela de retorno
*/

/* exercício 10 - Combining results from multiple queries */
SELECT surname
FROM cd.members
UNION SELECT name
	FROM cd.facilities;

/* o UNION serve pra combinar duas consultas*/


/* exercício 11 - Simple aggregation */
SELECT max(joindate) as latest 
FROM cd.members;

/* uso o max(joindate) pra pegar a maior data 
 * de entrada da tabela members e usa o "as" pra definir
 * o nome da coluna que vai ser exibido
 */


/* exercício 12 - More aggregation */

SELECT firstname, surname, joindate
FROM cd.members
WHERE joindate = (SELECT max(joindate)
				 	FROM cd.members);

/* Utilizo uma subquery que busca o último valor das datas
* como parâmetro na clausula where da consulta principal
*/

