<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="80" src="/logos/hackerrank.png"></img></a>

# HackerRank OJ - SQL and Database <br> Advanced Select `10 problems`

## Type of Triangle
Problem Link: https://hackerrank.com/challenges/what-type-of-triangle/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    CASE WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
         WHEN A = B AND B = C THEN 'Equilateral'
         WHEN A = B OR B = C OR A = C THEN 'Isosceles'
         ELSE 'Scalene'
    END
FROM
    triangles
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    CASE WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
         WHEN A = B AND B = C THEN 'Equilateral'
         WHEN A = B OR B = C OR A = C THEN 'Isosceles'
         ELSE 'Scalene'
    END
FROM
    triangles
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CASE WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
         WHEN A = B AND B = C THEN 'Equilateral'
         WHEN A = B OR B = C OR A = C THEN 'Isosceles'
         ELSE 'Scalene'
    END
FROM
    triangles
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    CASE WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
         WHEN A = B AND B = C THEN 'Equilateral'
         WHEN A = B OR B = C OR A = C THEN 'Isosceles'
         ELSE 'Scalene'
    END
FROM
    triangles
;
```

</details>
<br>

## The PADS
Problem Link: https://hackerrank.com/challenges/the-pads/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    CONCAT(name, '(', SUBSTR(OCCUPATION, 1, 1), ')') N
FROM
    occupations
ORDER BY
    N
;
SELECT
    CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.')
FROM
    occupations
GROUP BY
    occupation
ORDER BY
    COUNT(occupation),
    occupation
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    CONCAT(CONCAT(name, '('),
           CONCAT(SUBSTR(OCCUPATION, 1, 1), ')')
    ) N
FROM
    occupations
ORDER BY
    N
;
SELECT
    CONCAT(CONCAT('There are a total of ', COUNT(occupation)),
           CONCAT(CONCAT(' ', LOWER(occupation)), 's.')
    )
FROM
    occupations
GROUP BY
    occupation
ORDER BY
    COUNT(occupation),
    occupation
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    CONCAT(CONCAT(name, '('),
           CONCAT(SUBSTRING(OCCUPATION, 1, 1), ')')
    ) N
FROM
    occupations
ORDER BY
    N
;
SELECT
    CONCAT(CONCAT('There are a total of ', COUNT(occupation)),
           CONCAT(CONCAT(' ', LOWER(occupation)), 's.')
    )
FROM
    occupations
GROUP BY
    occupation
ORDER BY
    COUNT(occupation),
    occupation
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    CONCAT(CONCAT(name, '('),
           CONCAT(SUBSTRING(OCCUPATION, 1, 1), ')')
    ) N
FROM
    occupations
ORDER BY
    N
;
SELECT
    CONCAT(CONCAT('There are a total of ', COUNT(occupation)),
           CONCAT(CONCAT(' ', LOWER(occupation)), 's.')
    )
FROM
    occupations
GROUP BY
    occupation
ORDER BY
    COUNT(occupation),
    occupation
;
```

</details>
<br>

## Occupations
Problem Link: https://hackerrank.com/challenges/occupations/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SET @d=0, @a=0, @p=0, @s=0;
SELECT
    MIN(doctor),
    MIN(professor),
    MIN(singer),
    MIN(actor)
FROM (
    SELECT IF(occupation='Actor', NAME, NULL) AS actor,
           IF(occupation='Doctor', NAME, NULL) AS doctor,
           IF(occupation='Professor', NAME, NULL) AS professor,
           IF(occupation='Singer' ,NAME, NULL) AS singer,
           CASE occupation
               WHEN 'Actor'     THEN @a:=@a+1
               WHEN 'Doctor'    THEN @d:=@d+1
               WHEN 'Professor' THEN @p:=@p+1
               WHEN 'Singer'    THEN @s:=@s+1
           END idn
    FROM occupations
    ORDER BY name
) temp
GROUP BY
    temp.idn
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    doctor,
    professor,
    singer,
    actor
FROM (
    SELECT
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) as rn,
        name,
        occupation
    FROM
        occupations
)
PIVOT (MAX(name) FOR OCCUPATION IN ('Doctor' as doctor,
                                    'Professor' as professor,
                                    'Singer' as singer,
                                    'Actor' as actor)
)
ORDER BY
    rn
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    MIN(CASE WHEN occupation = 'Doctor'    THEN name ELSE NULL END) doctor,
    MIN(CASE WHEN occupation = 'Professor' THEN name ELSE NULL END) professor,
    MIN(CASE WHEN occupation = 'Singer'    THEN name ELSE NULL END) singer,
    MIN(CASE WHEN occupation = 'Actor'     THEN name ELSE NULL END) actor
FROM (
  SELECT a.Occupation,
         a.Name,
         (SELECT COUNT(*)
          FROM Occupations b
          WHERE a.Occupation = b.Occupation AND a.Name > b.Name
         ) rank
  FROM occupations a
) c
GROUP BY
    c.rank
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    MIN(CASE WHEN occupation = 'Doctor'    THEN name ELSE NULL END) doctor,
    MIN(CASE WHEN occupation = 'Professor' THEN name ELSE NULL END) professor,
    MIN(CASE WHEN occupation = 'Singer'    THEN name ELSE NULL END) singer,
    MIN(CASE WHEN occupation = 'Actor'     THEN name ELSE NULL END) actor
FROM (
  SELECT a.Occupation,
         a.Name,
         (SELECT COUNT(*)
          FROM Occupations b
          WHERE a.Occupation = b.Occupation AND a.Name > b.Name
         ) rank
  FROM occupations a
) c
GROUP BY
    c.rank
;
```

</details>
<br>

## Binary Tree Nodes
Problem Link: https://hackerrank.com/challenges/binary-search-tree-1/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    N,
    CASE WHEN P IS NULL
         THEN 'Root'
         WHEN(SELECT COUNT(*)
              FROM BST
              WHERE P = A.N) > 0
         THEN 'Inner'
         ELSE 'Leaf'
    END
FROM
    BST A
ORDER BY
    N
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    N,
    CASE WHEN P IS NULL
         THEN 'Root'
         WHEN(SELECT COUNT(*)
              FROM BST
              WHERE P = A.N) > 0
         THEN 'Inner'
         ELSE 'Leaf'
    END
FROM
    BST A
ORDER BY
    N
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    N,
    CASE WHEN P IS NULL
         THEN 'Root'
         WHEN(SELECT COUNT(*)
              FROM BST
              WHERE P = A.N) > 0
         THEN 'Inner'
         ELSE 'Leaf'
    END
FROM
    BST A
ORDER BY
    N
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    N,
    CASE WHEN P IS NULL
         THEN 'Root'
         WHEN(SELECT COUNT(*)
              FROM BST
              WHERE P = A.N) > 0
         THEN 'Inner'
         ELSE 'Leaf'
    END
FROM
    BST A
ORDER BY
    N
;
```

</details>
<br>

## New Companies
Problem Link: https://hackerrank.com/challenges/the-company/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    COMPANY_CODE,
    FOUNDER,
    (SELECT COUNT(DISTINCT LEAD_MANAGER_CODE)
     FROM   LEAD_MANAGER
    WHERE   COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE)
     FROM   SENIOR_MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT MANAGER_CODE)
     FROM   MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT EMPLOYEE_CODE)
     FROM   EMPLOYEE
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    )
FROM
    COMPANY C
ORDER BY
    COMPANY_CODE
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    COMPANY_CODE,
    FOUNDER,
    (SELECT COUNT(DISTINCT LEAD_MANAGER_CODE)
     FROM   LEAD_MANAGER
    WHERE   COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE)
     FROM   SENIOR_MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT MANAGER_CODE)
     FROM   MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT EMPLOYEE_CODE)
     FROM   EMPLOYEE
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    )
FROM
    COMPANY C
ORDER BY
    COMPANY_CODE
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
SELECT
    COMPANY_CODE,
    FOUNDER,
    (SELECT COUNT(DISTINCT LEAD_MANAGER_CODE)
     FROM   LEAD_MANAGER
    WHERE   COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE)
     FROM   SENIOR_MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT MANAGER_CODE)
     FROM   MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT EMPLOYEE_CODE)
     FROM   EMPLOYEE
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    )
FROM
    COMPANY C
ORDER BY
    COMPANY_CODE
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
SELECT
    COMPANY_CODE,
    FOUNDER,
    (SELECT COUNT(DISTINCT LEAD_MANAGER_CODE)
     FROM   LEAD_MANAGER
    WHERE   COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE)
     FROM   SENIOR_MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT MANAGER_CODE)
     FROM   MANAGER
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    ),
    (SELECT COUNT(DISTINCT EMPLOYEE_CODE)
     FROM   EMPLOYEE
     WHERE  COMPANY_CODE = C.COMPANY_CODE
    )
FROM
    COMPANY C
ORDER BY
    COMPANY_CODE
;
```

</details>
<br>

## Draw The Triangle 1
Problem Link: https://hackerrank.com/challenges/draw-the-triangle-1/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SELECT
    REPEAT('* ', @NUMBER := @NUMBER - 1)
FROM
    information_schema.tables,
    (SELECT @NUMBER:=21) t
LIMIT
    20
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    RPAD('*', (21-LEVEL)*2, ' *')
FROM
    DUAL
CONNECT BY LEVEL <= 20
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
-- TODO
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
-- TODO
```

</details>
<br>

## Draw The Triangle 2
Problem Link: https://hackerrank.com/challenges/draw-the-triangle-2/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
SET @TEMP:=0;
SELECT
    REPEAT('* ', @TEMP:= @TEMP + 1)
FROM
    INFORMATION_SCHEMA.TABLES
WHERE
    @TEMP < 20;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
SELECT
    RPAD('*', LEVEL*2, ' *')
FROM
    DUAL
CONNECT BY LEVEL <= 20
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
-- TODO
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
-- TODO
```

</details>
<br>

## Print Prime Numbers
Problem Link: https://hackerrank.com/challenges/print-prime-numbers/

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/mysql-database.png"></img></a>
<details>
    <summary>MySQL Solution</summary>

```sql
-- TODO
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/oracle-database.png"></img></a>
<details>
    <summary>Oracle Solution</summary>

```sql
-- TODO
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/sql-server-database.png"></img></a>
<details>
    <summary>MS SQL Server Solution</summary>

```sql
declare @i int, @k int, @ok bit, @result varchar(8000)
set @i = 2
set @result = ltrim(str(@i))
set @i = 3
while @i <= 1000
begin
    set @k = 2
    set @ok  = 1
    while @k <= sqrt(@i)
    begin
        if @i % @k = 0
        begin
            set @ok = 0;
            break
        end
        set @k += 1
    end
    if @ok = 1
        set @result += '&' + ltrim(str(@i))
    set @i += 1
end
print @result
;
```

</details>
<br>

<a href="/hackerrank/solutions/advanced-select.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/logos/postgresql-database.png"></img></a>
<details>
    <summary>PostgreSQL Solution</summary>

```sql
declare @i int, @k int, @ok bit, @result varchar(8000)
set @i = 2
set @result = ltrim(str(@i))
set @i = 3
while @i <= 1000
begin
    set @k = 2
    set @ok  = 1
    while @k <= sqrt(@i)
    begin
        if @i % @k = 0
        begin
            set @ok = 0;
            break
        end
        set @k += 1
    end
    if @ok = 1
        set @result += '&' + ltrim(str(@i))
    set @i += 1
end
print @result
;
```

</details>
<br>
