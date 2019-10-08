# Latex-PhD-class
This is a repository containing a latex class I used for my phd thesis at _Université Pierre et Marie Curie in Paris_. 
It contains a structure using makefile and latexmk, so only the modified parts will be compiled each time. There are several modes both for compiling (accessible as options for the make command) and for latex class (accessible by specifing the options in the `\documentclass` command.

In the following we are going to expand the information above and to explain the use of various class options in detail.

## Compilation with makefile

The makefile contains the instruction to compile the whole thesis or a single chapter. It makes use of the latexmk command (you can install it, in an Ubuntu/Debian environment with the command
```bash
sudo apt-get install latexmk
```

Indeed, the several make options are:

* all
* view
* continuos
* clear
* clearall
* force
* rebuild


Command               | Description
-------------         | -------------
`make all` or `make`  | Compiles the default TARGET tex file.
Content Cell  | Content Cell

In a terminal one can give the following command
```
make 
```


