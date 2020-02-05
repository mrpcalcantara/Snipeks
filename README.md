Snipeks

These are the Xcode code snippets that I find useful to use instead of just typing the same thing over and over. 


( Looking at you **weak/strong dance** !)


### Work in progress.

## Importing/Exporting Snippets

### Importing to Xcode

Run the importSnippets.sh script to import all the .codesnippet files to the Xcode directory

```
./importSnippets.sh
```

### Exporting from Xcode

Run the exportXcodeSnippets.sh script to export all the .codesnippet files from the Xcode directory to the current folder

```
./exportXcodeSnippets.sh
```


## Snippets ( so far )

- Retaining weak self: **ws**

 
```
[weak self]
```
 
- Checking that self still exists: **gs**

```
guard let self = self else { return }
```

- Doing the weak/strong self dance: **gsdance**

```
[weak self] <# Variables #> in
        guard let self = self else { return }
```

## Contact

[E-mail me.](mailto:mrpcalcantara@gmail.com)
