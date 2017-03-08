% Setup
\ProvidesClass{myCV}[03/07/2017 by Bufan Wang]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}
\RequirePackage{titlesec}

\RequirePackage{helvet} %helvetica

%we want that the default font family is sans serif
\renewcommand{\rmdefault}{\sfdefault}


% Packages
\RequirePackage{geometry} %page layout
\RequirePackage{tabularx}
\RequirePackage{xcolor} %coloured text baby

\definecolor{royal-blue}{HTML}{4169E1}
\definecolor{cool-gray}{HTML}{090909}
\definecolor{calm-black}{HTML}{222222}
\color{calm-black}


% Newcommands
\newcommand{\fullname}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand{\firstname}[1]{\def\@firstname{#1}}
\newcommand{\lastname}[1]{\def\@lastname{#1}}

\newcommand{\profession}[1]{\def\@profession{#1}}
\newcommand{\address}[1]{\def\@address{#1}}

\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\website}[1]{\def\@website{#1}}
\newcommand{\phone}[1]{\def\@phone{#1}}
\newcommand{\github}[1]{\def\@github{#1}}

\newcommand{\sizetext}[2]{\fontsize{#1}{#2}\selectfont}

% Large Scale Macros
\newcommand{\makeheader}{
\begin{center}
{\sizetext{32pt}{1em}
	\@firstname
	{\textcolor{royal-blue}\@lastname}
}\\
{\sizetext{12pt}{20em}\textcolor{royal-blue}{\textsc{\@profession}}}\\
\textcolor{cool-gray}{\textit{\@address}}\\
\begin{tabular}{c | c | c | c }
\@email &
\@phone &
\@github &
\@website\\
\end{tabular}
\end{center}
}


%Format
\titlespacing\section{0mm}{3mm}{3mm}
\titleformat{\section}
{\sizetext{14pt}{1em}\scshape\raggedright\bfseries}
{}{0em}
{}

\newcommand{\mysection}[1]{\section{\textcolor{royal-blue}{#1} \hrulefill}}

\titlespacing\subsection{0mm}{3mm}{0mm}
\titleformat{\subsection}
  {\sizetext{12pt}{1em}\scshape\raggedright\bfseries}
  {}{0em}
  {}
  

\newenvironment{desc}{
\begin{itemize}
\setlength\itemsep{-1mm}}
{\end{itemize}}



\newcommand{\datedsubsection}[2]{
  \subsection[#1]{#1 \hfill #2}
}


