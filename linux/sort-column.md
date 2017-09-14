### Sort with multiple keys

A coleague and I found a script that was using sort with `-k2,2 -k1,1` to produce an output sorted by the second (primary key) and first (secondary key) columns. We wonder why the script uses that instead of `-k2 -k1`. The `--help` output of my computer was not helpful, so I had to search the internet. It turns out that [this](https://ss64.com/bash/sort.html) specification of the sort command says the following:

```bash
  -k POS1[,POS2]
     The recommended, POSIX, option for specifying a sort field.  The
     field consists of the part of the line between POS1 and POS2 (or
     the end of the line, if POS2 is omitted), _inclusive_.  Fields and
     character positions are numbered starting with 1.  So to sort on
     the second field, you'd use `-k 2,2' See below for more examples.
```

The argument -k1,1d means "create a key starting at column one and ending at column one in dictionary order"

 245
down vote
	
Also, this stackoverflow helped https://stackoverflow.com/questions/357560/sorting-multiple-keys-with-unix-sort

Take care though:

If you want to sort the file primarily by field 3, and secondarily by field 2 you don't want this:

sort -k 3 -k 2 < inputfile

you want this instead:

sort -k 3,3 -k 2,2 < inputfile

The first one sorts the file by the string from the beginning of field 3 to the end of line (which is potentially unique).

-k, --key=POS1[,POS2]     start a key at POS1 (origin 1), end it at POS2
                          (default end of line)


Considering this example:

c	c	a	a
c	a	b	e
d	a	b	d
a	a	c	c
c	d	a	a
c	b	a	a

sort -k2 data.xt 
d       a       b       d
c       a       b       e
a       a       c       c
c       b       a       a
c       c       a       a
c       d       a       a

sort -k2,2 data.xt 
a       a       c       c
c       a       b       e
d       a       b       d
c       b       a       a
c       c       a       a
c       d       a       a


sort -k2,3 data.xt 
c       a       b       e
d       a       b       d
a       a       c       c
c       b       a       a
c       c       a       a
c       d       a       a
hlfernandez@hlfernandez-mountain:~/Tmp/sort-example$ sort -k2,4 data.xt  (equivalent to sort -k2)
d       a       b       d
c       a       b       e
a       a       c       c
c       b       a       a
c       c       a       a
c       d       a       a

