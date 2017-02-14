# Convert data frame columns

I want to convert all data frame columns to a specific type and create a new data frame. The following code converts all columns of data frame `X` to numeric and creates a new data frame:

```R
as.data.frame(lapply(X, as.numeric))
```

For example:
```R
X <- data.frame(cbind(c("1","2"), c("2","3")))
X.numeric <- as.data.frame(lapply(X, as.numeric))
```