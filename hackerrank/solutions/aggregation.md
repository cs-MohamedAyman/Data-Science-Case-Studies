<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="80" src="/logos/hackerrank.png"></img></a>

# HackerRank OJ - SQL and Database <br> Aggregation `15 problems`

## Revising Aggregations - The Count Function
Problem Link: https://hackerrank.com/challenges/revising-aggregations-the-count-function/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    count(*)
FROM
    city
WHERE
    population > 100000
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    count(*)
FROM
    city
WHERE
    population > 100000
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    count(*)
FROM
    city
WHERE
    population > 100000
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    count(*)
FROM
    city
WHERE
    population > 100000
;
```

</details>
<br>

## Revising Aggregations - The Sum Function
Problem Link: https://hackerrank.com/challenges/revising-aggregations-sum/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

## Revising Aggregations - Averages
Problem Link: https://hackerrank.com/challenges/revising-aggregations-the-average-function/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    AVG(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    AVG(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    AVG(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    AVG(population)
FROM
    city
WHERE
    district = 'California'
;
```

</details>
<br>

## Average Population
Problem Link: https://hackerrank.com/challenges/average-population/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(AVG(population), 0)
FROM
    city
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(AVG(population), 0)
FROM
    city
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    ROUND(AVG(population), 0)
FROM
    city
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(AVG(population), 0)
FROM
    city
;
```

</details>
<br>

## Japan Population
Problem Link: https://hackerrank.com/challenges/japan-population/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    countrycode = 'JPN'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    countrycode = 'JPN'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    countrycode = 'JPN'
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    SUM(population)
FROM
    city
WHERE
    countrycode = 'JPN'
;
```

</details>
<br>

## Population Density Difference
Problem Link: https://hackerrank.com/challenges/population-density-difference/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    MAX(population) - MIN(population)
FROM
    city
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    MAX(population) - MIN(population)
FROM
    city
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    MAX(population) - MIN(population)
FROM
    city
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    MAX(population) - MIN(population)
FROM
    city
;
```

</details>
<br>

## The Blunder
Problem Link: https://hackerrank.com/challenges/the-blunder/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    CEIL(AVG(CAST(salary AS FLOAT))
       - AVG(CAST(REPLACE(salary, 0, '') AS FLOAT))
    )
FROM
    employees
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    CAST(
        CEILING(AVG(CAST(salary AS FLOAT))
              - AVG(CAST(REPLACE(salary, 0, '') AS FLOAT))
        ) AS INT
    )
FROM
    employees
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(
        CEILING(AVG(CAST(salary AS FLOAT))
              - AVG(CAST(REPLACE(salary, 0, '') AS FLOAT))
        ) AS INT
    )
FROM
    employees
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    CEIL(AVG(CAST(salary AS FLOAT))
       - AVG(CAST(REPLACE(salary, 0, '') AS FLOAT))
    )
FROM
    employees
;
```

</details>
<br>

## Top Earners
Problem Link: https://hackerrank.com/challenges/earnings-of-employees/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    MAX(salary * months),
    COUNT(*)
FROM
    employee
WHERE
    (salary * months) = (
        SELECT MAX(salary * months)
        FROM employee
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    MAX(salary * months),
    COUNT(*)
FROM
    employee
WHERE
    (salary * months) = (
        SELECT MAX(salary * months)
        FROM employee
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    MAX(salary * months),
    COUNT(*)
FROM
    employee
WHERE
    (salary * months) = (
        SELECT MAX(salary * months)
        FROM employee
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    MAX(salary * months),
    COUNT(*)
FROM
    employee
WHERE
    (salary * months) = (
        SELECT MAX(salary * months)
        FROM employee
    )
;
```

</details>
<br>

## Weather Observation Station 2
Problem Link: https://hackerrank.com/challenges/weather-observation-station-2/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(SUM(lat_n), 2),
    ROUND(SUM(long_w), 2)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(SUM(lat_n), 2),
    ROUND(SUM(long_w), 2)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CONCAT(CAST(CONVERT(DECIMAL(10, 2), SUM(lat_n)) AS nvarchar), " ",
           CAST(CONVERT(DECIMAL(10, 2), SUM(long_w)) AS nvarchar)
    )
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(SUM(lat_n), 2),
    ROUND(SUM(long_w), 2)
FROM
    station
;
```

</details>
<br>

## Weather Observation Station 13
Problem Link: https://hackerrank.com/challenges/weather-observation-station-13/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(SUM(lat_n), 4)
FROM
    station
WHERE
    lat_n BETWEEN 38.7880 AND 137.2345
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(SUM(lat_n), 4)
FROM
    station
WHERE
    lat_n BETWEEN 38.7880 AND 137.2345
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4), SUM(lat_n)) AS nvarchar)
FROM
    station
WHERE
    lat_n BETWEEN 38.7880 AND 137.2345
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(SUM(lat_n), 4)
FROM
    station
WHERE
    lat_n BETWEEN 38.7880 AND 137.2345
;
```

</details>
<br>

## Weather Observation Station 14
Problem Link: https://hackerrank.com/challenges/weather-observation-station-14/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(MAX(lat_n), 4)
FROM
    station
WHERE
    lat_n < 137.2345
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(MAX(lat_n), 4)
FROM
    station
WHERE
    lat_n < 137.2345
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4), MAX(lat_n)) AS nvarchar)
FROM
    station
WHERE
    lat_n < 137.2345
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(MAX(lat_n), 4)
FROM
    station
WHERE
    lat_n < 137.2345
;
```

</details>
<br>

## Weather Observation Station 15
Problem Link: https://hackerrank.com/challenges/weather-observation-station-15/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT MAX(lat_n)
        FROM station
        WHERE lat_n < 137.2345
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT MAX(lat_n)
        FROM station
        WHERE lat_n < 137.2345
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4), long_w) AS nvarchar)
FROM
    station
WHERE
    lat_n = (
        SELECT MAX(lat_n)
        FROM station
        WHERE lat_n < 137.2345
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT MAX(lat_n)
        FROM station
        WHERE lat_n < 137.2345
    )
;
```

</details>
<br>

## Weather Observation Station 16
Problem Link: https://hackerrank.com/challenges/weather-observation-station-16/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(MIN(lat_n), 4)
FROM
    station
WHERE
    lat_n > 38.7780
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(MIN(lat_n), 4)
FROM
    station
WHERE
    lat_n > 38.7780
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4), MIN(lat_n)) AS nvarchar)
FROM
    station
WHERE
    lat_n > 38.7780
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(MIN(lat_n), 4)
FROM
    station
WHERE
    lat_n > 38.7780
;
```

</details>
<br>

## Weather Observation Station 17
Problem Link: https://hackerrank.com/challenges/weather-observation-station-17/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT MIN(lat_n)
        FROM station
        WHERE lat_n > 38.7780
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT MIN(lat_n)
        FROM station
        WHERE lat_n > 38.7780
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4), long_w) AS nvarchar)
FROM
    station
WHERE
    lat_n = (
        SELECT MIN(lat_n)
        FROM station
        WHERE lat_n > 38.7780
    )
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT MIN(lat_n)
        FROM station
        WHERE lat_n > 38.7780
    )
;
```

</details>
<br>

## Weather Observation Station 18
Problem Link: https://hackerrank.com/challenges/weather-observation-station-18/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(ABS(MAX(lat_n)  - MIN(lat_n))
        + ABS(MAX(long_w) - MIN(long_w)), 4)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(ABS(MAX(lat_n)  - MIN(lat_n))
        + ABS(MAX(long_w) - MIN(long_w)), 4)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4),
        ABS(MAX(lat_n)  - MIN(lat_n))
      + ABS(MAX(long_w) - MIN(long_w))
    ) AS nvarchar)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(ABS(MAX(lat_n)  - MIN(lat_n))
        + ABS(MAX(long_w) - MIN(long_w)), 4)
FROM
    station
;
```

</details>
<br>

## Weather Observation Station 19
Problem Link: https://hackerrank.com/challenges/weather-observation-station-19/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(SQRT(POWER(MAX(lat_n)  - MIN(lat_n),  2)
             + POWER(MAX(long_w) - MIN(long_w), 2)
        ), 4)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(SQRT(POWER(MAX(lat_n)  - MIN(lat_n),  2)
             + POWER(MAX(long_w) - MIN(long_w), 2)
        ), 4)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4),
        SQRT(POWER(MAX(lat_n)  - MIN(lat_n),  2)
           + POWER(MAX(long_w) - MIN(long_w), 2))
    ) AS nvarchar)
FROM
    station
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(SQRT(POWER(MAX(lat_n)  - MIN(lat_n),  2)
             + POWER(MAX(long_w) - MIN(long_w), 2)
        ), 4)
FROM
    station
;
```

</details>
<br>

## Weather Observation Station 20
Problem Link: https://hackerrank.com/challenges/weather-observation-station-20/

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    ROUND(lat_n, 4)
FROM
    station s
WHERE (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n < s.lat_n
) = (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n > s.lat_n
)
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    ROUND(lat_n, 4)
FROM
    station s
WHERE (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n < s.lat_n
) = (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n > s.lat_n
)
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CAST(CONVERT(DECIMAL(10, 4), lat_n) AS nvarchar)
FROM
    station s
WHERE (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n < s.lat_n
) = (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n > s.lat_n
)
;
```

</details>
<br>

<a href="/hackerrank/solutions/aggregation.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    ROUND(lat_n, 4)
FROM
    station s
WHERE (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n < s.lat_n
) = (
    SELECT count(lat_n)
    FROM station
    WHERE lat_n > s.lat_n
)
;
```

</details>
<br>
