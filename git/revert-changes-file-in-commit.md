# Revert changes to file in a specific commit

I wanted to revert the changes made made on a file in a specific commit because I accidentally added it to that commit and then added other commits on top.

I came across [this](https://stackoverflow.com/a/32528151/1821422) solution, which consists in editing the specific commit in an interactive rebase and using `git show -- badfile.txt | git apply -R` to revert the changes.