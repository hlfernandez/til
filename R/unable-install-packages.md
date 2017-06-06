# Unable to install packages using install.packages

More often than not, I am unable to install packages in R using install.packages. After googling a litle bit, it seems to be a problem in the connection with the mirror.

Finally, I found [this](https://stackoverflow.com/questions/25599943/unable-to-install-packages-in-latest-version-of-rstudio-and-r-version-3-1-1) Stack Overflow post with useful suggestions. The first one is:

```R
install.packages('package_name', dependencies=TRUE, repos='http://cran.rstudio.com/')
```

And the second one is:
```R
options(repos='http://cran.rstudio.com/')
```

Both worked for me and I since then I have been able to install packages without problems.