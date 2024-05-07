<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="80" src="/logos/hackerrank.png"></img></a>

# HackerRank OJ - SQL and Database <br> Basic and Advanced Join `15 problems`

## Population Census
Problem Link: https://hackerrank.com/challenges/asian-population/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    SUM(city.population)
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Asia'
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    SUM(city.population)
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Asia'
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    SUM(city.population)
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Asia'
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    SUM(city.population)
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Asia'
;
```

</details>
<br>

## African Cities
Problem Link: https://hackerrank.com/challenges/african-cities/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    city.name
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Africa'
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    city.name
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Africa'
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    city.name
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Africa'
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    city.name
FROM
    city
INNER JOIN
    country
ON
    city.countrycode = country.code
WHERE
    country.continent = 'Africa'
;
```

</details>
<br>

## Average Population of Each Continent
Problem Link: https://hackerrank.com/challenges/average-population-of-each-continent/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    country.continent,
    FLOOR(AVG(city.population))
FROM
    country,
    city
WHERE
    country.code = city.countrycode
GROUP BY
    country.continent
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    country.continent,
    FLOOR(AVG(city.population))
FROM
    country,
    city
WHERE
    country.code = city.countrycode
GROUP BY
    country.continent
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    country.continent,
    FLOOR(AVG(city.population))
FROM
    country,
    city
WHERE
    country.code = city.countrycode
GROUP BY
    country.continent
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    country.continent,
    FLOOR(AVG(city.population))
FROM
    country,
    city
WHERE
    country.code = city.countrycode
GROUP BY
    country.continent
;
```

</details>
<br>

## The Report
Problem Link: https://hackerrank.com/challenges/the-report/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    IF(grades.grade>=8, students.name, NULL),
    grades.grade,
    students.marks
FROM
    grades,
    students
WHERE
    students.MARKS BETWEEN grades.min_mark AND grades.max_mark
ORDER BY
    grades.grade DESC,
    students.name
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    CASE WHEN grades.grade < 8 THEN NULL ELSE students.name END,
    grades.grade,
    students.marks
FROM
    grades,
    students
WHERE
    students.MARKS BETWEEN grades.min_mark AND grades.max_mark
ORDER BY
    grades.grade DESC,
    students.name
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CASE WHEN grades.grade < 8 THEN NULL ELSE students.name END,
    grades.grade,
    students.marks
FROM
    grades,
    students
WHERE
    students.MARKS BETWEEN grades.min_mark AND grades.max_mark
ORDER BY
    grades.grade DESC,
    students.name
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    CASE WHEN grades.grade < 8 THEN NULL ELSE students.name END,
    grades.grade,
    students.marks
FROM
    grades,
    students
WHERE
    students.MARKS BETWEEN grades.min_mark AND grades.max_mark
ORDER BY
    grades.grade DESC,
    students.name
;
```

</details>
<br>

## Top Competitors
Problem Link: https://hackerrank.com/challenges/full-score/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    hackers.hacker_id,
    hackers.name
FROM
    hackers
INNER JOIN
    submissions
ON
    hackers.hacker_id = submissions.hacker_id
INNER JOIN
    challenges
ON
    submissions.challenge_id = challenges.challenge_id
INNER JOIN
    difficulty
ON
    challenges.difficulty_level = difficulty.difficulty_level
WHERE
    submissions.score = difficulty.score
GROUP BY
    hackers.hacker_id,
    hackers.name
HAVING
    COUNT(hackers.hacker_id) > 1
ORDER BY
    COUNT(hackers.hacker_id) DESC,
    hackers.hacker_id
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    hackers.hacker_id,
    hackers.name
FROM
    hackers
INNER JOIN
    submissions
ON
    hackers.hacker_id = submissions.hacker_id
INNER JOIN
    challenges
ON
    submissions.challenge_id = challenges.challenge_id
INNER JOIN
    difficulty
ON
    challenges.difficulty_level = difficulty.difficulty_level
WHERE
    submissions.score = difficulty.score
GROUP BY
    hackers.hacker_id,
    hackers.name
HAVING
    COUNT(hackers.hacker_id) > 1
ORDER BY
    COUNT(hackers.hacker_id) DESC,
    hackers.hacker_id
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    hackers.hacker_id,
    hackers.name
FROM
    hackers
INNER JOIN
    submissions
ON
    hackers.hacker_id = submissions.hacker_id
INNER JOIN
    challenges
ON
    submissions.challenge_id = challenges.challenge_id
INNER JOIN
    difficulty
ON
    challenges.difficulty_level = difficulty.difficulty_level
WHERE
    submissions.score = difficulty.score
GROUP BY
    hackers.hacker_id,
    hackers.name
HAVING
    COUNT(hackers.hacker_id) > 1
ORDER BY
    COUNT(hackers.hacker_id) DESC,
    hackers.hacker_id
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    hackers.hacker_id,
    hackers.name
FROM
    hackers
INNER JOIN
    submissions
ON
    hackers.hacker_id = submissions.hacker_id
INNER JOIN
    challenges
ON
    submissions.challenge_id = challenges.challenge_id
INNER JOIN
    difficulty
ON
    challenges.difficulty_level = difficulty.difficulty_level
WHERE
    submissions.score = difficulty.score
GROUP BY
    hackers.hacker_id,
    hackers.name
HAVING
    COUNT(hackers.hacker_id) > 1
ORDER BY
    COUNT(hackers.hacker_id) DESC,
    hackers.hacker_id
;
```

</details>
<br>

## Ollivander's Inventory
Problem Link: https://hackerrank.com/challenges/harry-potter-and-wands/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    W.id,
    P.age,
    W.coins_needed,
    W.power
FROM
    wands W
INNER JOIN
    wands_property P
ON
    W.code = P.code
WHERE
    P.is_evil = 0 AND
    W.coins_needed = (SELECT MIN(X.coins_needed)
                      FROM wands X
                      INNER JOIN wands_property Y
                      ON (X.code = Y.code)
                      WHERE X.power = W.power AND Y.age = P.age)
ORDER BY
    W.power DESC,
    P.age DESC
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    W.id,
    P.age,
    W.coins_needed,
    W.power
FROM
    wands W
INNER JOIN
    wands_property P
ON
    W.code = P.code
WHERE
    P.is_evil = 0 AND
    W.coins_needed = (SELECT MIN(X.coins_needed)
                      FROM wands X
                      INNER JOIN wands_property Y
                      ON (X.code = Y.code)
                      WHERE X.power = W.power AND Y.age = P.age)
ORDER BY
    W.power DESC,
    P.age DESC
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    W.id,
    P.age,
    W.coins_needed,
    W.power
FROM
    wands W
INNER JOIN
    wands_property P
ON
    W.code = P.code
WHERE
    P.is_evil = 0 AND
    W.coins_needed = (SELECT MIN(X.coins_needed)
                      FROM wands X
                      INNER JOIN wands_property Y
                      ON (X.code = Y.code)
                      WHERE X.power = W.power AND Y.age = P.age)
ORDER BY
    W.power DESC,
    P.age DESC
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    W.id,
    P.age,
    W.coins_needed,
    W.power
FROM
    wands W
INNER JOIN
    wands_property P
ON
    W.code = P.code
WHERE
    P.is_evil = 0 AND
    W.coins_needed = (SELECT MIN(X.coins_needed)
                      FROM wands X
                      INNER JOIN wands_property Y
                      ON (X.code = Y.code)
                      WHERE X.power = W.power AND Y.age = P.age)
ORDER BY
    W.power DESC,
    P.age DESC
;
```

</details>
<br>

## Challenges
Problem Link: https://hackerrank.com/challenges/challenges/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
--TODO
```

</details>
<br>

## Contest Leaderboard
Problem Link: https://hackerrank.com/challenges/contest-leaderboard/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    h.hacker_id,
    h.name,
    t1.total_score
FROM (
    SELECT
        hacker_id,
        SUM(max_score) total_score
    FROM (
        SELECT hacker_id, MAX(score) max_score
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) t2
    GROUP BY hacker_id
) t1
INNER JOIN
    Hackers h
ON
    h.hacker_id = t1.hacker_id
WHERE
    t1.total_score <> 0
ORDER BY
    total_score DESC,
    hacker_id
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    h.hacker_id,
    h.name,
    t1.total_score
FROM (
    SELECT
        hacker_id,
        SUM(max_score) total_score
    FROM (
        SELECT hacker_id, MAX(score) max_score
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) t2
    GROUP BY hacker_id
) t1
INNER JOIN
    Hackers h
ON
    h.hacker_id = t1.hacker_id
WHERE
    t1.total_score <> 0
ORDER BY
    total_score DESC,
    hacker_id
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    h.hacker_id,
    h.name,
    t1.total_score
FROM (
    SELECT
        hacker_id,
        SUM(max_score) total_score
    FROM (
        SELECT hacker_id, MAX(score) max_score
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) t2
    GROUP BY hacker_id
) t1
INNER JOIN
    Hackers h
ON
    h.hacker_id = t1.hacker_id
WHERE
    t1.total_score <> 0
ORDER BY
    total_score DESC,
    hacker_id
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    h.hacker_id,
    h.name,
    t1.total_score
FROM (
    SELECT
        hacker_id,
        SUM(max_score) total_score
    FROM (
        SELECT hacker_id, MAX(score) max_score
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) t2
    GROUP BY hacker_id
) t1
INNER JOIN
    Hackers h
ON
    h.hacker_id = t1.hacker_id
WHERE
    t1.total_score <> 0
ORDER BY
    total_score DESC,
    hacker_id
;
```

</details>
<br>

## SQL Project Planning
Problem Link: https://hackerrank.com/challenges/sql-projects/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    start_date,
    MIN(end_date)
FROM (
    SELECT start_date
    FROM projects
    WHERE start_date NOT IN (
        SELECT end_date
        FROM projects
    )
) a
INNER JOIN (
    SELECT end_date
    FROM projects
    WHERE end_date NOT IN (
        SELECT start_date
        FROM projects
    )
) b
ON
    start_date < end_date
GROUP BY
    start_date
ORDER BY
    MIN(end_date) - start_date,
    start_date
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    start_date,
    MIN(end_date)
FROM (
    SELECT start_date
    FROM projects
    WHERE start_date NOT IN (
        SELECT end_date
        FROM projects
    )
) a
INNER JOIN (
    SELECT end_date
    FROM projects
    WHERE end_date NOT IN (
        SELECT start_date
        FROM projects
    )
) b
ON
    start_date < end_date
GROUP BY
    start_date
ORDER BY
    MIN(end_date) - start_date,
    start_date
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
--TODO
```

</details>
<br>

## Placements
Problem Link: https://hackerrank.com/challenges/placements/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
Select
    students.name
FROM
    students
JOIN
    friends
ON
    students.id = friends.id
JOIN
    packages p1
ON
    students.id = p1.id
JOIN
    PACKAGES p2
ON
    friends.friend_id = p2.id
WHERE
    p2.salary > p1.salary
ORDER BY
    p2.salary
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
Select
    students.name
FROM
    students
JOIN
    friends
ON
    students.id = friends.id
JOIN
    packages p1
ON
    students.id = p1.id
JOIN
    PACKAGES p2
ON
    friends.friend_id = p2.id
WHERE
    p2.salary > p1.salary
ORDER BY
    p2.salary
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
Select
    students.name
FROM
    students
JOIN
    friends
ON
    students.id = friends.id
JOIN
    packages p1
ON
    students.id = p1.id
JOIN
    PACKAGES p2
ON
    friends.friend_id = p2.id
WHERE
    p2.salary > p1.salary
ORDER BY
    p2.salary
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
Select
    students.name
FROM
    students
JOIN
    friends
ON
    students.id = friends.id
JOIN
    packages p1
ON
    students.id = p1.id
JOIN
    PACKAGES p2
ON
    friends.friend_id = p2.id
WHERE
    p2.salary > p1.salary
ORDER BY
    p2.salary
;
```

</details>
<br>

## Symmetric Pairs
Problem Link: https://hackerrank.com/challenges/symmetric-pairs/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    X, Y
FROM
    functions F1
WHERE EXISTS (
    SELECT *
    FROM functions F2
    WHERE F2.Y = F1.X AND F2.X = F1.Y AND F2.X > F1.X
) AND (X != Y)
UNION
SELECT
    X, Y
FROM
    functions F1
WHERE
    X = Y AND ((
        SELECT COUNT(*)
        FROM functions
        WHERE X = F1.X AND Y = F1.X
        ) > 1
    )
ORDER BY
    X
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    X, Y
FROM
    functions F1
WHERE EXISTS (
    SELECT *
    FROM functions F2
    WHERE F2.Y = F1.X AND F2.X = F1.Y AND F2.X > F1.X
) AND (X != Y)
UNION
SELECT
    X, Y
FROM
    functions F1
WHERE
    X = Y AND ((
        SELECT COUNT(*)
        FROM functions
        WHERE X = F1.X AND Y = F1.X
        ) > 1
    )
ORDER BY
    X
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    X, Y
FROM
    functions F1
WHERE EXISTS (
    SELECT *
    FROM functions F2
    WHERE F2.Y = F1.X AND F2.X = F1.Y AND F2.X > F1.X
) AND (X != Y)
UNION
SELECT
    X, Y
FROM
    functions F1
WHERE
    X = Y AND ((
        SELECT COUNT(*)
        FROM functions
        WHERE X = F1.X AND Y = F1.X
        ) > 1
    )
ORDER BY
    X
;
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    X, Y
FROM
    functions F1
WHERE EXISTS (
    SELECT *
    FROM functions F2
    WHERE F2.Y = F1.X AND F2.X = F1.Y AND F2.X > F1.X
) AND (X != Y)
UNION
SELECT
    X, Y
FROM
    functions F1
WHERE
    X = Y AND ((
        SELECT COUNT(*)
        FROM functions
        WHERE X = F1.X AND Y = F1.X
        ) > 1
    )
ORDER BY
    X
;
```

</details>
<br>

## Interviews
Problem Link: https://hackerrank.com/challenges/interviews/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
--TODO
```

</details>
<br>

## 15 Days of Learning SQL
Problem Link: https://hackerrank.com/challenges/15-days-of-learning-sql/

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
--TODO
```

</details>
<br>

<a href="/hackerrank/solutions/basic-advanced-join.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
--TODO
```

</details>
<br>
