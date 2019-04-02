# See table sizes

I was curious about the way of finding table sizes and the first useful command I found was `show table status from dreimt \G`. 

After a while, I realized that one can look at the `information_schema` table in order to calculate the table sizes and get (an estimate of) the row counts. The [following query](https://stackoverflow.com/a/46143816) shows this information for all tables in a given schema:

```
SELECT 
    TABLE_NAME AS "Table", 
    TABLE_ROWS AS "Row count",
    ROUND(((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024),2) AS "Size (MB)"
FROM information_schema.TABLES 
WHERE TABLE_SCHEMA = "schema"
ORDER BY (DATA_LENGTH + INDEX_LENGTH) DESC;
```

And more directly, the following query shows the row count for a given table in a given schema:
```
SELECT
    table_rows "Row Count"
FROM
    information_schema.tables
WHERE
    table_name="table"
AND
    table_schema="schema";
```

However, as the [MySQL reference manual](https://dev.mysql.com/doc/refman/8.0/en/tables-table.html) specifies, it is important to note that the row cont is **just an approximation of the actual value**:
> TABLE_ROWS
> 
> The number of rows. Some storage engines, such as MyISAM, store the exact count. For other storage engines, such as InnoDB, this value is an approximation, and may vary from the actual value by as much as 40% to 50%. In such cases, use SELECT COUNT(*) to obtain an accurate count.
>
> TABLE_ROWS is NULL for INFORMATION_SCHEMA tables.
>
> For InnoDB tables, the row count is only a rough estimate used in SQL optimization. (This is also true if the InnoDB table is partitioned.)
