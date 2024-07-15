\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bscs}[2024/07/09 BSCS Project Report Class]

% Set document class options
\LoadClass[12pt, a4paper]{report}

% Set margins and spacing
\usepackage[top=1in, bottom=1in, left=1in, right=1in]{geometry}
\usepackage{setspace}
\onehalfspacing

% Set font
\usepackage{times}

% Additional packages
\usepackage{graphicx}

% Custom title page
\renewcommand{\maketitle}{
    \begin{titlepage}
        \centering
        \begin{minipage}[t]{0.3\textwidth}
            \centering
            \includegraphics[width=\textwidth]{ibAs.png}
        \end{minipage}
        \hfill
        \begin{minipage}[t]{0.3\textwidth}
            \centering
            \includegraphics[width=\textwidth]{iba.png}
        \end{minipage}
        
        \vspace*{2em}
        \underline{\LARGE \textbf{\@title}}\\[2em]
        This BS Project report is submitted to the Department of Computer Science as partial fulfillment of Bachelor of Science in Computer Science degree\\[1em]
        \textit{Github link}\\[4em]
        by\\[1em]
        \textbf{\@author}\\[4em]
        Advised by\\[1em]
        \textbf{Advisors' Names}\\
        Designation\\
        Department of Computer Science\\
        School of Mathematics and Computer Science (SMCS)\\
        Institute of Business Administration (IBA) Karachi\\[4em]
        \vfill
        Season Semester Year\\
        Institute of Business Administration (IBA) Karachi Pakistan
    \end{titlepage}
}

% Custom section formatting
\usepackage{titlesec}
\titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\large\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}

% Acknowledgement environment
\newenvironment{acknowledgement}
{
    \section*{Acknowledgement}
    \addcontentsline{toc}{section}{Acknowledgement}
}
{
    \vspace{2em}
}

% Abstract environment
\newenvironment{abstract}
{
    \section*{Abstract}
    \addcontentsline{toc}{section}{Abstract}
}
{
    \vspace{2em}
}

% Keywords environment
\newenvironment{keywords}
{
    \noindent\textbf{Keywords: }
}
{
    \vspace{2em}
}

% List of Abbreviations environment
\newenvironment{abbreviations}
{
    \section*{List of Abbreviations}
    \addcontentsline{toc}{section}{List of Abbreviations}
    \begin{tabbing}
        \hspace{3cm}\=\hspace{5cm}\=\kill
}
{
    \end{tabbing}
    \vspace{2em}
}

% Bibliography style
\bibliographystyle{chicago}

% Commands for front matter and main matter
\newcommand{\frontmatter}{%
    \pagenumbering{roman}
}

\newcommand{\mainmatter}{%
    \cleardoublepage
    \pagenumbering{arabic}
}

\endinput
