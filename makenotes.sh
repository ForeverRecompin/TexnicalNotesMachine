##############################
###### Get basic inputs ######
##############################
read -p "Enter Title: " Title
read -p "Enter Author: " Author
read -p "Enter Email: " Email


##############################
######## Structuring #########
##############################
# This folder houses all tex files
mkdir -p tex
# This folder is for organizational purposes
mkdir -p content

##############################
## Set up the main tex file ##
##############################
Main_Tex_Filename=`echo "print('${Title// /_}'.lower())" | python`
touch tex/$Main_Tex_Filename.tex
echo "
% Meta
\documentclass{scrartcl}
\input{tex/style.tex}
% Content
\title{$Title}
\author{
  $Author\\\\
  \href{mailto:$Email}{$Email}
}
\date{$(date -I)}
\begin{document}
\maketitle
\clearpage
\tableofcontents
\addtocontents{toc}{\protect\hypertarget{toc}{}}
\clearpage
% Add tex files like so:
% \input{tex/filename.tex}
\section{\dots}
\dots
% Add links like so:
% Go to \hyperlink{toc}{Table of Contents}.
\end{document}" > tex/$Main_Tex_Filename.tex


##############################
######### Add styles #########
##############################
touch tex/style.tex
cat style.txt > tex/style.tex


##############################
#### Set up the Makefile #####
##############################
touch Makefile
echo -e "
all:
\tpdflatex tex/$Main_Tex_Filename.tex
clean:
\trm *.log
\trm *.aux
\trm *.toc
\trm *.out
\trm *~
\trm *.toc" > Makefile

# TODO:
# 1. Licensing feature
# 2. More styles
