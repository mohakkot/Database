A = LOAD 'data/kids.txt' USING PigStorage(' ') AS (name: chararray, age: int);
B = LOAD 'data/purchases.txt' USING PigStorage(' ') AS (first:chararray, cake: chararray);
C = FILTER A BY age == 10 OR age == 11 OR age == 12;
D = JOIN C BY name, B BY first;
E = GROUP D BY cake;
F = FOREACH E GENERATE COUNT(D.cake) AS cnt, group;
SORT = ORDER F BY cnt DESC;
TOP = LIMIT SORT 1;
STORE TOP INTO 'bonus2';
