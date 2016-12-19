Starting in this repo's working directory after clone:

```
$ cd ..
$ mkdir junk-commits
$ cd junk-commits
$ git init
$ git add origin <your github repo URL>
$ ruby ../commit-generator/generate 1
```

* `1` = seconds delay between commits
