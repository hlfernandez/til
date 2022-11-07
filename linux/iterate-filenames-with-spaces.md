### Iterate file names with spaces

From time to time I need to iterate over the files in a given directory with something like this:
```
for file in $(ls testdir/*.txt); do 
    echo "${file}"; 
done
```

The above command can be experimented with these files (`mkdir testdir && for i in 1 2 3 4 5; do touch "testdir/file $i.txt"; done`) and one can see that it "fails" to produce one line for each file. It actually does not fail, but it is splitting the `ls` output by the character(s) specified by the `IFS` (internal field separator), which include the space as well as the line break.

So far, I used to do two things:
- List files with `find` and use `-exec somecommand {}`, where `{}` is each one of the listed files and works fine with file names with spaces.
- Send the `ls` output into a file and iterate over the file.
    
But this can be improved by changing the `IFS` as [this blog post](https://www.cyberciti.biz/tips/handling-filenames-with-spaces-in-bash.html) shows. So we can simply set the `IFS` to the string we want (line break), process the list with the `for` loop, and set it back to the original value:

```
OLD_IFS=${IFS}
IFS=$(echo -en "\n\b")
for file in $(ls testdir/*.txt); do 
    echo "${file}"; 
done
IFS=${OLD_IFS}
```

As simple as that! ;-)
