# sqlite---Learn-how-to-configure-simple-sqllite-db

Used to learn SQLite

## install

```
brew install sqlite
```

## Go into prompt

```
sqlite3
```

## Create a table with some keys

Note that these tables are all in memory and not saved to disk

```
create table images(name varchar(25), image varchar(25));
insert into images values ('fish', 'fldkjasfljl;sdkj');
select * from images;
```

Result:

```
sqlite> create table images(name varchar(25), image varchar(25));
sqlite> select * from images;
sqlite> insert into images values ('fish', 'fldkjasfljl;sdkj');
sqlite> select * from images;
fish|fldkjasfljl;sdkj
```

## db to file and back

```
.save /Users/jeromelefebvre/GitHub/sqlite---Learn-how-to-configure-simple-sqllite-db/databases/images.sqlite3
```

```
.restore /Users/jeromelefebvre/GitHub/sqlite---Learn-how-to-configure-simple-sqllite-db/databases/images.sqlite3
```

## TablePlus configurations

Specify the location of the file and that is it.

## Create a table with a key

```SQL
CREATE TABLE "画像" (
    "漢字" varchar NOT NULL DEFAULT '',
    "読み方" varchar NOT NULL DEFAULT '',
    "使い分け" varchar NOT NULL DEFAULT '',
    PRIMARY KEY (漢字)
);
```

## A query to describe the schema of a table

```SQL
SELECT name AS [column name],
    TYPE AS [data type],
    CASE
        "notnull"
        WHEN 1 THEN 'NO'
        ELSE 'YES'
    END AS [is nullable],
    dflt_value as [column default],
    name AS [foreign key]
FROM pragma_table_xinfo ("画像");
```

## delete all rows
```SQL
delete from 画像 where 漢字 like '%';
```

## Import from CSV

```
.mode csv
.import "/Users/jeromelefebvre/GitHub/sqlite---Learn-how-to-configure-simple-sqllite-db/Basic counters2.csv" 画像
```
