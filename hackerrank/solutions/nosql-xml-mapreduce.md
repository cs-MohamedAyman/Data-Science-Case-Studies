<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="80" src="/logos/hackerrank.png"></img></a>

# HackerRank OJ - SQL and Database <br> NoSQL - XML, Mapreduce `15 problems`

## Map Reduce Advanced - Count number of friends
Problem Link: https://hackerrank.com/challenges/map-reduce-advanced-count-number-of-friends/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
from collections import OrderedDict

class MapReduce:
    def __init__(self):
        self.intermediate = OrderedDict()
        self.result = []

    def emitIntermediate(self, key, value):
           self.intermediate.setdefault(key, [])
        self.intermediate[key].append(value)

    def emit(self, value):
        self.result.append(value)

    def execute(self, data, mapper, reducer):
        for record in data:
            mapper(record)
        for key in self.intermediate:
            reducer(key, self.intermediate[key])
        self.result.sort()
        for item in self.result:
            print("{\"key\":\""+item[0]+"\",\"value\":\"" + str(item[1]) + "\"}")

mapReducer = MapReduce()

def mapper(record):
    a = record.split()
    mapReducer.emitIntermediate(a[0], a[1])
    mapReducer.emitIntermediate(a[1], a[0])

def reducer(key, list_of_values):
    mapReducer.emit((key, len(list_of_values)))
```

</details>
<br>

## Map Reduce Advanced - Relational Join
Problem Link: https://hackerrank.com/challenges/map-reduce-advanced-relational-join/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
from collections import OrderedDict

class MapReduce:
    def __init__(self):
        self.intermediate = OrderedDict()
        self.result = []

    def emitIntermediate(self, key, value):
           self.intermediate.setdefault(key, [])
        self.intermediate[key].append(value)

    def emit(self, value):
        self.result.append(value)

    def execute(self, data, mapper, reducer):
        for record in data:
            mapper(record)
        for key in self.intermediate:
            reducer(key, self.intermediate[key])
        self.result.sort()
        for item in self.result:
            print(item)

mapReducer = MapReduce()

def mapper(record):
    a = record.strip().split(',')
    if a[0] == 'Department':
        mapReducer.emitIntermediate(a[1], a[2])
    if a[0] == 'Employee':
        mapReducer.emitIntermediate(a[2], '$'+a[1])

def reducer(key, list_of_values):
    a = sorted(list_of_values)
    name = a[0][1:]
    for e in a[1:]:
        mapReducer.emit((key,name, e))
```

</details>
<br>

## Map Reduce Advanced - Matrix Multiplication
Problem Link: https://hackerrank.com/challenges/map-reduce-advanced-matrix-multiplication/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
import sys
from collections import OrderedDict
import itertools

class MapReduce:
    def __init__(self):
        self.intermediate = OrderedDict()
        self.result = []

    def emitIntermediate(self, key, value):
        self.intermediate.setdefault(key, [])
        self.intermediate[key].append(value)

    def emit(self, value):
        self.result[value[0]][value[1]] = value[2]

    def execute(self, matrix1, matrix2, mapper, reducer):
        n = len(matrix1)
        m = len(matrix2[0])
        for i in range(0, n):
            self.result.append([0] * m)
        mapper(matrix1, matrix2)
        for key in self.intermediate:
            reducer(key, self.intermediate[key])
        for i in range(0, n):
            row = ""
            for j in range(0, m):
                row += str(self.result[i][j]) + " "
            print(row)

mapReducer = None

def mapper(matrix1, matrix2):
    n = len(matrix1)
    k = len(matrix1[0])
    m = len(matrix2[0])
    for i in range(n):
        for j in range(m):
            for p in range(k):
                mapReducer.emitIntermediate((i, j), (matrix1[i][p], matrix2[p][j]))

def reducer(key, list_of_values):
    mapReducer.emit((key[0], key[1], sum(itertools.starmap(lambda x, y: x * y, list_of_values))))
```

</details>
<br>

## Querying XML Datastores with XPath - 1
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-1/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 2
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-1-1/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 3
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-3/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 4
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-4/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 5
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-1-4/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 6
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-6/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 7
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-7/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 8
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-8/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 9
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-9/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 10
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-10/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>

## Querying XML Datastores with XPath - 11
Problem Link: https://hackerrank.com/challenges/querying-xml-datastores-with-xpath-11/problem

<a href="/hackerrank/solutions/nosql-xml-mapreduce.md"><img align="right" width="50" src="https://github.com/cs-MohamedAyman/cs-MohamedAyman/blob/master/repos-logos/python.png"></img></a>
<details>
    <summary>Python Solution</summary>

```python
#TODO
```

</details>
<br>
