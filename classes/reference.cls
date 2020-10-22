%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% j-mcavoy resume class
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[0v1]
\LoadClass[10pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{xifthen}% provides \isempty test

\pagestyle{empty} % Suppress page numbers

\newcommand\Contact[5]
{
    \section{#1} % Name
    \subsection{Relation}
    #2
    \subsection Company
    #3
    \subsubsection{Email}
    \href{mailto:#4}{#4}
    \subsubsection{Phone}
    #5
}
