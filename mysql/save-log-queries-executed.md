# Save the last queries executed in a log

Recently, we were debugging an application and we needed to save the last queries being executed. We found [this post](https://stackoverflow.com/a/678310/1821422) at Stack Overflow that explains how to do it, which basically consists in activating the global log with:

```mysql
SET GLOBAL log_output = 'TABLE';
SET GLOBAL general_log = 'ON';
```

And then looking at the `mysql.general_log`.

Also, when trying to remove all rows from this table, I experienced the following error: `#1556 - You can't use locks with log tables`. It can be solved as [this post](https://stackoverflow.com/a/23570614/1821422) explains:

```sql
SET GLOBAL general_log = 'OFF';
RENAME TABLE general_log TO general_log_temp;
DELETE FROM `general_log_temp` WHERE `event_time` < DATE(NOW());
RENAME TABLE general_log_temp TO general_log;
SET GLOBAL general_log = 'ON';
```
