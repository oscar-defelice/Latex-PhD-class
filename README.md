# Latex-PhD-class
This is a repository containing a latex class I used for my phd thesis at _Université Pierre et Marie Curie in Paris_. 
It contains a structure using makefile and latexmk, so only the modified parts will be compiled each time. There are several modes both for compiling (accessible as options for the make command) and for latex class (accessible by specifing the options in the `\documentclass` command.

In the following we are going to expand the information above and to explain the use of various class options in detail.
## How to Use
### Requirements

A full TeX distribution is assumed.  [Various distributions for different operating systems (Windows, Mac, \*nix) are available](http://tex.stackexchange.com/q/55437) but TeX Live is recommended.
You can [install TeX from upstream](http://tex.stackexchange.com/q/1092) (recommended; most up-to-date) or use `sudo apt-get install texlive-full` if you really want that.  (It's generally a few years behind.)

### Basic Usage

At a command prompt, run
```bash
$ make TARGET = path_to_file/{your-file}.tex
```
This should result in the creation of ``{your-file}.pdf`` and a locked copy ``locked.{your-file}.pdf``

## Compilation with makefile

The makefile contains the instruction to compile the whole thesis or a single chapter. It makes use of the latexmk command (you can install it, in an Ubuntu/Debian environment with the command
```bash
sudo apt-get install latexmk
```
### Make Options

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
`make view`           | Compiles and shows the produced pdf file.
`make continuous`     | Compiles live and updates the produced pdf file.
`make clear`          | Compiles and removes the auxiliary files.
`make clearall`       | Compiles and removes auxiliary files and all images and not-locked pdf.

### Compile command

In a terminal one can give the following command
```bash
make 
```

### Configuration file

The hidden file `.latexmkrc` contains the configurations for the working of make command.

#### Ubuntu/Debian vs OSX use.

As it is, the whole structure works on Linux systems with evince installed.
If you wanna change the pdf viewer, you have to change the line 
```perl
$pdf_previewer = 'start evince %O locked.%S';
```
to 

```perl
$pdf_previewer = 'start your_pdf_viewer %O locked.%S';
```

To work in Mac OSX, you can simply write

```perl
$pdf_previewer = 'start open %O locked.%S';
```

## Credit
### LaTeX
LaTeX is a fantastic typesetting program that a lot of people use these days, especially the math and computer science people in academia.

You can find out more about it here: [LaTeX Project](http://www.latex-project.org)



