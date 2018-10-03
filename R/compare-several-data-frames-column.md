# Compare a common column in several data frames

Here is the problem: I wanted to obtain a presence/absence table to compare a common column in several data frames. For instance, having the following two data frames:

```R
> df1
  col1 col2
1    1    a
2    2    b
3    3    c
4   10    z
> df2
  col1 col2
1    1    f
2    3    d
3    4    c
4    5    g
5    9    e

```

I would like to obtain the following table for `col1`:
```
col1     1     2
1  TRUE  TRUE
2  TRUE FALSE
3  TRUE  TRUE
10  TRUE FALSE
4 FALSE  TRUE
5 FALSE  TRUE
9 FALSE  TRUE
```

Or the following table for `col2`:
```R
col2     1     2
a  TRUE FALSE
b  TRUE FALSE
c  TRUE  TRUE
z  TRUE FALSE
f FALSE  TRUE
d FALSE  TRUE
g FALSE  TRUE
e FALSE  TRUE
```

So here is the function I created for this comparison:
```R
# This function receives a list of dataframes and the column to compare them
compareDataframes <- function(dataframes, column) {
    rows <- unique(unlist(sapply(dataframes, function(x) as.character(x[,column]))))

    table <- rows
    for(i in 1:length(dataframes)) {
        table <- cbind(table,
            unlist(lapply(rows, function(x) is.element(x, dataframes[[i]][,column])))
        )
    }

    frecuencies <- apply(table, 1, function(x) sum(as.logical(x[2:length(x)])))
    table <- cbind(table, frecuencies)
    table <- cbind(table, frecuencies/length(dataframes))
    colnames(table) <- c(column, 1:length(dataframes), "frequency", "frequency.relative")
        
    return(as.data.frame(table))
}
```

And here it is a small example to test it:
```R
df1 <- data.frame(col1 = c(1,2,3,10), col2 = c("a","b","c", "z"))
df2 <- data.frame(col1 = c(1,3,4,5,9), col2 = c("f","d","c", "g", "e"))

dfs <- list(df1, df2)

t1 <- compareDataframes(dfs, "col1")
t2 <- compareDataframes(dfs, "col2")

print(t1)
print(t2)
```

The script also creates two additional columns with the absolute and relative frequencies of each row values, so the output will be the following:
```R
> print(t1)
  col1     1     2 frequency frequency.relative
1    1  TRUE  TRUE         2                  1
2    2  TRUE FALSE         1                0.5
3    3  TRUE  TRUE         2                  1
4   10  TRUE FALSE         1                0.5
5    4 FALSE  TRUE         1                0.5
6    5 FALSE  TRUE         1                0.5
7    9 FALSE  TRUE         1                0.5
> print(t2)
  col2     1     2 frequency frequency.relative
1    a  TRUE FALSE         1                0.5
2    b  TRUE FALSE         1                0.5
3    c  TRUE  TRUE         2                  1
4    z  TRUE FALSE         1                0.5
5    f FALSE  TRUE         1                0.5
6    d FALSE  TRUE         1                0.5
7    g FALSE  TRUE         1                0.5
8    e FALSE  TRUE         1                0.5
```