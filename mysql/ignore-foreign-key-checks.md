# Ignore foreign key checks

I needed to ignore the foreign key checks to drop a table and recreate it from scratch (to add some fields and re-introduce the previous foreign keys so that everything works).

This can be simply done by using `SET foreign_key_checks` as follows:
```
SET foreign_key_checks = 0;
-- Drop table statements here
-- drop table ...
SET foreign_key_checks = 1;
```
