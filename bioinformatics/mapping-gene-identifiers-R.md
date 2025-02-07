# Mapping gene identifiers in R

I have recently discovered a way of mapping gene identifiers in R through the [AnnotationDbi](https://bioconductor.org/packages/release/bioc/html/AnnotationDbi.html) bioconductor package. It's an easy way of using predefined mappings and use them inside R scripts.

Also, I created the following gist with a simple example that uses `mapIds` to provide a function that allows obtaining multiple mappings and building a dataframe with them. I created it because the `select` function does not allow to use `multiVals` and always returns all mappings (i.e. it may create 1:n mappings).

<script src="https://gist.github.com/hlfernandez/39a61348d12240168ca3e0a469788a84.js"></script>

Finally, I also created [this Docker image](https://hub.docker.com/r/pegi3s/r_annotationdbi) that allows using this library and the main databases
