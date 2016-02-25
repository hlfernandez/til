# Merge two last commits

I want to [merge the two last commits](http://stackoverflow.com/questions/2563632/how-can-i-merge-two-commits-into-one). For example, I have the following history and I want to merge `Second` with `First` to get a single commit:

```bash
$git log --pretty=oneline
675686ea98510fd41e27c0b2b1b15edf9a14a2af Second
c8805bb9a3baf28e60c56a61fed672a07de6b34c First
```
Then, the fastest way is to do:

```bash
git reset --soft "HEAD^"
git commit --amend
```

So I get:
```bash
$git log --pretty=oneline
a45be665645b2bc8f59a9d584425c58fd4ce5ed6 First
```
