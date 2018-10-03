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

df1 <- data.frame(col1 = c(1,2,3,10), col2 = c("a","b","c", "z"))
df2 <- data.frame(col1 = c(1,3,4,5,9), col2 = c("f","d","c", "g", "e"))

dfs <- list(df1, df2)
t1 <- compareDataframes(dfs, "col1")
t2 <- compareDataframes(dfs, "col2")
