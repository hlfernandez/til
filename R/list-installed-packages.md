# List installed packages and versions

I want to list the installed packages and their versions in R and I found [this code](https://www.r-bloggers.com/2015/06/list-of-user-installed-r-packages-and-their-versions/) to do it:

```R
ip = as.data.frame(installed.packages()[,c(1,3:4)])
ip = ip[is.na(ip$Priority),1:2,drop=FALSE]
ip
```

F