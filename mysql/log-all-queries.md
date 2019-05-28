# Log all queries

Recently, I needed to log all queries in order to debug an application failing due to malformed database queries.

I came across [this stackoverflow post](https://stackoverflow.com/questions/303994/log-all-queries-in-mysql) with different solutions, among which the simplest was the following:

```
SET global log_output = 'FILE';
SET global general_log_file='/tmp/mysql.log';
SET global general_log = 1;
```

Without needing to restart, it will start logging all queries to the specified file. 

And then, to turn off the logging, simply run:
```
SET global general_log = 0;
```
