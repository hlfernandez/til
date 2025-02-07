# Mapping gene identifiers in R

I have recently discovered a way of mapping gene identifiers in R through the [AnnotationDbi](https://bioconductor.org/packages/release/bioc/html/AnnotationDbi.html) bioconductor package. It's an easy way of using predefined mappings and use them inside R scripts.

Also, I created [this gist](https://gist.github.com/hlfernandez/39a61348d12240168ca3e0a469788a84.js) with a simple example that uses `mapIds` to provide a function that allows obtaining multiple mappings and building a dataframe with them. I created it because the `select` function does not allow to use `multiVals` and always returns all mappings (i.e. it may create 1:n mappings).

```R
library(org.Hs.eg.db)

#
# This function is a wrapper around AnnotationDbi::mapIds that allows for mapping multiple columns at once
# using "first" or "asNA" for the multiVals parameter.
# 
# The function also handles the behaviour of AnnotationDbi::mapIds when any of the keys are not found in 
# the database. By default, the function raises an error, which is not raises if at least one key is mapped.
#
multipleMapIds <- function(db, keys, keytype, multiVals, columns) {
    mapping_list <- lapply(columns, function(column) {
        tryCatch({
            AnnotationDbi::mapIds(db, keys = keys, column = column, keytype = keytype, multiVals = multiVals)
        }, error = function(e) {
            rep(NA, length(keys))
        })
    })
    
    mapping_df <- data.frame(keys)
    colnames(mapping_df) <- keytype
    
    for (i in seq_along(columns)) {
        mapping_df[[columns[i]]] <- as.vector(mapping_list[[i]])
    }
    
    return(mapping_df)
}

columns <- c("ENTREZID", "SYMBOL", "GENENAME")

ensembl_ids = c("ENSG00000207389", "ENSG00000264940", "ENSG00000261136", "ENSG00000290535")
(mapping <- multipleMapIds(org.Hs.eg.db, ensembl_ids, "ENSEMBL", "first", columns))
(mapping <- multipleMapIds(org.Hs.eg.db, ensembl_ids, "ENSEMBL", "asNA", columns))

ensembl_ids = c("ENSG00000290535")
(mapping <- multipleMapIds(org.Hs.eg.db, ensembl_ids, "ENSEMBL", "first", columns))
```

Finally, I also created [this Docker image](https://hub.docker.com/r/pegi3s/r_annotationdbi) that allows using this library and the main databases
