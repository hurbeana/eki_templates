\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ekitemplate}[2019/05/01 EKI Template v1.0]

\LoadClass{article}

\RequirePackage{fancyhdr}
\RequirePackage{extramarks}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{tikz}
\RequirePackage[edges]{forest}
\RequirePackage[plain]{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage[utf8]{inputenc} % Umlaute
\RequirePackage{ulem} % underline with wordwrap \uline
\RequirePackage{etoolbox}
\RequirePackage{prooftrees} 
\RequirePackage{tikz}
\RequirePackage{tikz-qtree}
%\usetikzlibrary{graphdrawing.trees}
\RequirePackage{tabularx, caption}
\RequirePackage{ragged2e}
\RequirePackage{tcolorbox}
\RequirePackage{pifont}
\RequirePackage{enumitem}
\RequirePackage{subcaption}
\RequirePackage{fancyvrb}

\usetikzlibrary{automata,positioning}

% ///////////////////////
% Basic Document Settings
% ///////////////////////

\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.25in

% tablestuff
\def\arraystretch{1.5}
\newcolumntype{L}{>{\RaggedRight} X}

% pagestyle headers and footers
\pagestyle{fancy}
\lhead{\hmwkAuthorName, \hmwkMatrikel}
\chead{\hmwkClass: \hmwkTitle}
\rhead{\firstxmark}
\lfoot{\lastxmark}
\cfoot{\thepage}

% renew equation counter
\AtBeginEnvironment{align}{\setcounter{equation}{0}}

% paragraph config
\setlength{\parskip}{\baselineskip}%
\setlength\parindent{0pt}

% spacing between lines
\linespread{1.1}

% Tcolorbox
\definecolor{frame}{RGB}{214, 214, 239}
\definecolor{back}{RGB}{234, 234, 247}
\tcbset{colback=back,colframe=frame,coltitle=blue,boxrule=0mm,boxsep=6pt,left=2pt,right=2pt,top=0pt,bottom=0pt}

% ///////////////////////
% Create Problem Sections
% ///////////////////////

\newcommand{\enterProblemHeader}[1]{
    \nobreak\extramarks{}{Continuation on the next page\ldots}\nobreak{}
    \nobreak\extramarks{Exercise \arabic{#1} (Continuation)}{Continuation on the next page\ldots}\nobreak{}
}

\newcommand{\exitProblemHeader}[1]{
    \nobreak\extramarks{Exercise \arabic{#1} (Continuation)}{Continuation on the next page\ldots}\nobreak{}
    \stepcounter{#1}
    \nobreak\extramarks{Exercise \arabic{#1}}{}\nobreak{}
}



\setcounter{secnumdepth}{0}
\newcounter{partCounter}
\newcounter{homeworkProblemCounter}

% ///////////////////////////////////
% Initialize the problem counter here
% ///////////////////////////////////
\setcounter{homeworkProblemCounter}{1}
\nobreak\extramarks{Exercise \arabic{homeworkProblemCounter}}{}\nobreak{}

% ////////////////////////////
% Homework Problem Environment
% ////////////////////////////
% This environment takes an optional argument. When given, it will adjust the
% problem counter. This is useful for when the problems given for your
% assignment aren't sequential. See the last 3 problems of this template for an
% example.
%
\newenvironment{homeworkProblem}[1][-1]{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \section{Exercise \arabic{homeworkProblemCounter}}
    \setcounter{partCounter}{1}
    \enterProblemHeader{homeworkProblemCounter}
}{
    \exitProblemHeader{homeworkProblemCounter}
}

% ////////////
% renewcommand
% ////////////
\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}
\renewcommand{\labelitemi}{$\circ$}

% //////////
% Title Page
% //////////

\title{
    \vspace{2in}
    \textmd{\textbf{\hmwkClass:\ \hmwkTitle}}\\
    \normalsize\vspace{0.1in}\small{\hmwkDueDate}\\
    \vspace{0.1in}\large{\textit{\hmwkClassInstructor\ \hmwkClassTime}}
    \vspace{3in}
}

\author{\textbf{\hmwkAuthorName, \hmwkMatrikel}}
\date{}

\renewcommand{\part}[1]{\textbf{
    \\[\baselineskip]
    \large Part
    \alph{partCounter}
    }\stepcounter{partCounter}}

% ///////////////////////
% Various Helper Commands
% ///////////////////////

\newcommand{\splitter}{\noindent\rule{\textwidth}{1pt}}

% Useful for algorithms
\newcommand{\alg}[1]{\textsc{\bfseries \footnotesize #1}}

% For derivatives
\newcommand{\deriv}[1]{\frac{\mathrm{d}}{\mathrm{d}x} (#1)}

% For partial derivatives
\newcommand{\pderiv}[2]{\frac{\partial}{\partial #1} (#2)}

% Integral dx
\newcommand{\dx}{\mathrm{d}x}

% Alias for the Solution section header
\newcommand{\solution}{\textbf{\large \\Solution}}

% Probability commands: Expectation, Variance, Covariance, Bias
\newcommand{\calI}{{\cal I}}
\newcommand{\calM}{{\cal M}}
\newcommand{\eq}{\leftrightarrow}

\newcommand{\cmark}{\ding{51}}