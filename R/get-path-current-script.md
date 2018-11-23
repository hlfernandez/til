# Get the path of the current script

Here is the problem: I wanted to obtain the current path of the script bein called with `Rscript`. 

It turns out that the `commandArgs` function has a parameter named `trailingOnly` that gives us execution information when set to `FALSE`.

For instance, a script with the following line:

```R
(script.args <- commandArgs(trailingOnly = FALSE))
```

Will print something like:
```
[1] "/usr/lib/R/bin/exec/R"                          
[2] "--slave"                                        
[3] "--no-restore"                                   
[4] "--file=/tmp/test/test.R"
```

Where the fourth element is the path of the script file. Thus, all we have todo is to extract the file path from this parameter:
```R
script.args <- commandArgs(trailingOnly = FALSE)
file.arg.name <- "--file="
script.name <- sub(file.arg.name, "", script.args[grep(file.arg.name, script.args)])
script.basename <- dirname(script.name)
print(script.basename)
```
