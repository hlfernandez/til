# Create encrypted zip file

I want to create a zip archive, but with password protection, so that whoever tries to uncompress the zip file must know the right password. After an fast search, I find out the following [solution](http://xmodulo.com/how-to-create-encrypted-zip-file-on-linux.html):

```bash
$ zip --password <password> zip-with-password.zip file1.txt file2.txt
```
