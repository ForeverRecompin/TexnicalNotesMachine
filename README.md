# [TexnicalNotesMachine](https://github.com/ForeverRecompin/TexnicalNotesMachine)
This repository is to speed up note taking with LaTeX. I'm still new to the LaTeX ecosystem and there may be better ways to do what I'm doing.

[![forthebadge](http://forthebadge.com/images/badges/made-with-crayons.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/compatibility-emacs.svg)](http://forthebadge.com)
- - -

## Usage
```
$ sh makenotes.sh

# This should be done twice for Table of Contents to work
$ make
$ make 

# Clean up like so (pdflatex generates various intermediate files)
$ make clean
```
- - -

## How To
- Theorem
```
\begin{theorem}
  <<Theorem...>>
\end{theorem}
```
- Problem/Solution template
  - Standard format
  ```
  \problem{NAME OF PROBLEM}
    <<statements of problem>>
  \solution
    <<solution>>
  ```
  - Multi-part question format
  ```
  \problem{NAME OF PROBLEM}
    \begin{enumerate}
      \item <<Part (a) problem statement>>
      \item <<Part (b) problem statement>>
    \end{enumerate}
  \solution
    \part
      <<Solution to part (a)>>
    \part
      <<Solution to part (b)>>
  ```
- Right arrow (eg. A -> B)
```
A \arrow ~B
```