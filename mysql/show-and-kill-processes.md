# Show and kill processes

Recently, a MySQL database was responding too slow to some queries so I wanted to find out if there were other processes running there. This lead me to discover the `SHOW FULL processlist;` command. If you do not use the `FULL` keyword, only the first 100 characters of each statement are shown in the `Info` field.

Interestingly, I also discovered that the `;` character used as statement terminator is a shorthand for the `\g` command. Moreover, the `\G` command does the same as `;` and `\g` (send command to MySQL server) but displays the results vertically. There is a [nice answer](https://stackoverflow.com/a/40030346) explaining this at Stack Overflow.

Finally, it is possible to kill MySQL processes with `KILL <pid>;`.
