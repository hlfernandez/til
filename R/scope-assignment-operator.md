# Scope assignment operator (`<<-`)

I have just discovered the scope assignment operator in R (`<<-`) that allowed me to solve the following problem (for which I found an easier and more elegant solution using `split`, see the end of this page). 

The question is that I had a dataset like the following and I needed to compute the means for each level in the first column (A and B).

```R
(data <- rbind(c("A", 1.2), c("A", 1.1), c("B", 2.3), c("B", 2.4)))

#      [,1] [,2] 
# [1,] "A"  "1.2"
# [2,] "A"  "1.1"
# [3,] "B"  "2.3"
# [4,] "B"  "2.4"
```

I initially considered the following strategy: append each number to different arrays in a list using the level as key for that list. The list is called `aggregated`. However, doing this using `apply` does not work because the inner function does not have `aggregated` in its scope. After some searching I came across the scope assignment operator which allows using variables defined in higher levels.

```R
aggregated <- list()

invisible(apply(data, 1, function(x) aggregated[[ x[1] ]] <<- c(aggregated[[ x[1] ]], as.numeric(x[2]))))

(means <- lapply(aggregated, function(x) mean(x, na.rm = T)))

# $A                                                                                                                                                                                                                                                                                          
# [1] 1.15                                                                                                                                                                                                                                                                                    
#                                                                                                                                                                                                                                                                                             
# $B                                                                                                                                                                                                                                                                                          
# [1] 2.35
```

By the way, the `invisible` function is used to avoid printing the result of each function call in the `apply`.

As said previously, I found an easier and more elegant solution using `split`:

```R
aggregated <- split(data[,-1], as.factor(data[,1]))
```
