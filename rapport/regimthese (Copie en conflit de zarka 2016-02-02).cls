\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{regimthese}[]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

\typeout{}
\typeout{SVP, signaler toutes erreurs ou commentaires à mohamed.ezzarka@tunet.tn - REGIM}
\typeout{}

%----------------------
%---- les packages ----
%----------------------
\usepackage[english]{babel}
\usepackage[utf8]{inputenc}
\usepackage{euscript}
\usepackage{fancyhdr}
\usepackage{latexsym}
\usepackage{amsmath}
\usepackage{textcomp}
\usepackage{a4wide}
\usepackage{lettrine}
\usepackage{makeidx}
\usepackage{sectsty}
\usepackage{type1cm}
\usepackage{courier}
%\usepackage[small,normal,bf,up]{caption2}
\usepackage{tocbibind}
\usepackage{fancyhdr}
\usepackage[french2,tight,listfiles]{minitoc}
\usepackage{ifpdf}
\usepackage[titles]{tocloft}
\usepackage{apacite}
\usepackage[pdftex]{graphicx,color}
\usepackage[toc,acronym]{glossaries}
\usepackage{setspace}
\usepackage[Lenny]{fncychap}

\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}

\RequirePackage{setspace}
\doublespacing
\newcommand{\defaultspacing}{\doublespacing}
\newcommand{\smallspacing}{\singlespacing}
\defaultspacing
\renewcommand{\backmatter}{\smallspacing}

\RequirePackage[all]{nowidow}

\usepackage[a-1b]{pdfx}% for PDF/A-1b

%\RequirePackage[pdftex,hyperfootnotes=false,pdfpagelabels]{hyperref}  % backref linktocpage pagebackref
\pdfcompresslevel=9
\pdfadjustspacing=1 
\pdfobjcompresslevel=2

%\setstretch{1.5}
\makeglossaries

\newglossarystyle{mysuper}{%
  \setglossarystyle{super}% base style on the list style
  \renewenvironment{theglossary}%
      {\tablehead{}\tabletail{}%
       \begin{supertabular}{rp{\glsdescwidth}}}%
      {\end{supertabular}}%
}
\setglossarystyle{mysuper}
\renewcommand{\glsnamefont}[1]{\textbf{#1}}

\renewcommand*{\CustomAcronymFields}{%
name={\the\glsshorttok},%
description={\the\glslongtok},%
text={\the\glsshorttok},%
plural={\the\glsshorttok}\noexpand\acrpluralsuffix%
}
\renewcommand*{\SetCustomDisplayStyle}[1]{%
\defglsdisplayfirst[#1]{##1##4}
\defglsdisplay[#1]{##1##4}}
\SetCustomStyle


%------------------------------
%---- on se charge maintenant des remerciments et de dédicaces
%------------------------------
\newenvironment{dedicace}
	{\chapter*{Dedicaces} \tablefancy \begin{flushright}\begin{large}\itshape}
	{\end{large}\end{flushright}}
\newenvironment{remerciements}
	{\chapter*{Acknowledgements}\tablefancy}
	{}

\newenvironment{abstract}
	{\chapter*{Abstract}\tablefancy}
	{}

\newcommand{\lestables}{ \tablefancy \tableofcontents \thispagestyle{plain} \listoffigures \listoftables}
\bibliographystyle{apacite}
\pagestyle{fancy}
\fancyhf{}
\renewcommand*{\chaptermark}[1]{\markboth{\thechapter.~~#1}{}}
\renewcommand*{\sectionmark}[1]{\markright{\thesection.~~#1}}


\newcommand{\regimfancy}{
	\pagestyle{fancy}
	\fancyhead[C]{}
	\fancyhead[R]{\sffamily\bfseries\scriptsize Chapter \leftmark}
	\fancyhead[L]{}
	\fancyfoot[C]{}
	\fancyfoot[L]{\scriptsize\itshape\rightmark}
	\fancyfoot[R]{\footnotesize\itshape\thepage}
	\renewcommand{\headrulewidth}{0.4pt}
	\renewcommand{\footrulewidth}{0.4pt}


	%\pagestyle{fancy}
	%\fancyhf{}
	%\fancyhead[LE,RO]{\begin{tiny}\textit \sf \rightmark\end{tiny}}\fontsize{10}{12} \selectfont
	%\fancyhead[LE,RO]{\fontsize{10}{12} \sffamily \selectfont \rightmark}
	%\fancyfoot[LO]{\begin{tiny}{\textit \sf \leftmark}\end{tiny}}
	%\fancyfoot[LE,RO]{|\thepage}
	%\renewcommand{\headrulewidth}{0.4pt}
	%\renewcommand{\footrulewidth}{0.4pt}
}

\newcommand{\tablefancy}{
	\pagestyle{fancy}
	\fancyhf{}
	\fancyhead[RO]{}
	\fancyhead[RO]{}
	\fancyhead[RO]{}
	\fancyfoot[LO]{}
	\fancyfoot[CO]{}
	\fancyfoot[RO]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

\newcommand{\introductionfancy}{
	\pagestyle{fancy}	
	\fancyhf{}
	\fancyhead[CO]{}
	%\fancyhead[RO]{\begin{scriptsize}\textit{\markright{#1}{}}\end{scriptsize}}
	\fancyhead[LO]{}
	\fancyfoot[LO]{\begin{tiny}{\leftmark}\end{tiny}}
	\fancyfoot[CO]{}
	\fancyfoot[RO]{|\thepage}
	\renewcommand{\headrulewidth}{0.4pt}
	\renewcommand{\footrulewidth}{0.4pt}
}
%-----------------------------------
%---- on se charge maintenant de la forme des chapitres
%-----------------------------------
%\ChTitleVar{\Huge\rm\sf\bf}
%\ChTitleVar{\Huge\bf  \sf} 
%\ChNameVar  {\Large \bf  \sf}
%\ChNumVar   {\Huge\bf  \sf}
\ChTitleVar {\LARGE \sf \bf}

%\newcommand{\chapternonum}[1]{\chapter*{#1\markboth{#1}{#1}}}
%\allsectionsfont{\usefont{T1}{phv}{ic}{it}\selectfont}%phv
%\setlength{\cftbeforechapskip}{2ex}
%\setlength{\cftbeforesecskip}{0.5ex}
%\chapterfont{\fontfamily{phv}\selectfont}
\allsectionsfont{\sffamily}




%-----------------------------------
%---- on se charge maintenant de la page de garde
%-----------------------------------
%
% Definir les termes des pages de presentation
% Valeurs de default des variables d'identification
%
\newif\if@doc   \@doctrue
\newif\if@pdoc   \@docfalse
\newif\if@msc \@mscfalse
\newif\if@codir \@codirfalse

\def\doctorat{\@doctrue}
\def\maitrise{\@docfalse}
\def\inconnu{\hbox to 5truecm{\dotfill}}
%\def\examinateur#1{\gdef\@examinateur{#1}\@exextrue}

\gdef\@nom_doctorat{nom_doctorat}
\gdef\@numero_ordre{numero_ordre}
\gdef\@titre{Titre de la th\`ese}
\gdef\@discipline{discipline}
\gdef\@diplome_actuel{diplome_actuel}
\gdef\@these{1}
\gdef\@nomauteur{NonAuteur}
\gdef\@prenomauteur{PrénomAuteur}

\gdef\@jour{jour}
\gdef\@mois{mois}
\gdef\@annee{année}

\gdef\@dateaccept{\inconnu}
\def\dateaccept#1{\gdef\@dateaccept{#1}}
%
%  jury
%
\gdef\@titpresident{Prof.}
\gdef\@prenompresident{Prénom Président}
\gdef\@nompresident{NomPrésident}
\gdef\@dippresident{Ph.D.} 

\gdef\@titmembrea{}
\gdef\@prenommembrea{}
\gdef\@nommembrea{}
\gdef\@dipmembrea{}

\gdef\@titmembreb{} 
\gdef\@prenommembreb{}
\gdef\@nommembreb{}
\gdef\@dipmembreb{}  

\gdef\@titmembrec{} 
\gdef\@prenommembrec{}
\gdef\@nommembrec{}
\gdef\@dipmembrec{}  

\gdef\@titmembred{} 
\gdef\@prenommembred{}
\gdef\@nommembred{}
\gdef\@dipmembred{} 
 
%
% Definir les commandes d'identification qui redefinissent les
% variables d'identification
%

\newcommand{\Auteur}[3]{\gdef\@prenomauteur{#1}\gdef\@nomauteur{#2}\gdef\@diplome_actuel{#3}}
\newcommand{\@setfields}[7]{
			\gdef\@titre{#1}
			\gdef\@numero_ordre{#2}
			\gdef\@nom_doctorat{#3}
			\gdef\@discipline{#4}
			\gdef\@jour{#5}
			\gdef\@mois{#6}
			\gdef\@annee{#7}}
\newcommand{\PhD}[7]{\gdef\@these{1}
                       \@setfields{#1}{#2}{#3}{#4}{#5}{#6}{#7}
                       \@doctrue\@pdocfalse\@mscfalse}
\newcommand{\President}[4]{
                        \gdef\@titpresident{#1}
                        \gdef\@prenompresident{#2}
                        \gdef\@nompresident{#3}
                        \gdef\@dippresident{#4}}
\newcommand{\Membres}[5]{\ifnum#1=1
                        \gdef\@titmembrea{#2}
                        \gdef\@prenommembrea{#3}
                        \gdef\@nommembrea{#4}
                        \gdef\@dipmembrea{#5}\fi
                        \ifnum#1=2
                        \gdef\@titmembreb{#2} 
                        \gdef\@prenommembreb{#3}
                        \gdef\@nommembreb{#4}
                        \gdef\@dipmembreb{#5}\fi
                        \ifnum#1=3
                        \gdef\@titmembrec{#2} 
                        \gdef\@prenommembrec{#3}
                        \gdef\@nommembrec{#4}
                        \gdef\@dipmembrec{#5}\fi
			\ifnum#1=4
                        \gdef\@titmembred{#2} 
                        \gdef\@prenommembred{#3}
                        \gdef\@nommembred{#4}
                        \gdef\@dipmembred{#5}\fi
			\ifnum#1=5
                        \gdef\@titmembree{#2} 
                        \gdef\@prenommembree{#3}
                        \gdef\@nommembree{#4}
                        \gdef\@dipmembree{#5}\fi
		} 

%
%  Formattage des pages couverture
%

\definecolor{violet}{rgb}{0.28,0.35,0.57}
\definecolor{mauve}{rgb}{0.70,0.054,0.5}

\newcommand{\PagesCouverture}{
	\pagetitre
	\clearpage
}
\def\pagetitre{
	\vspace{5mm}
 	\noindent
	\thispagestyle{empty}
	%%%% l'entête
	\begin{center}
	\begin{minipage}[c]{50mm}
		{
			\begin{center}
			\begin{scriptsize}
				Republic of TUNISIA\\
				Ministry of Higher Education and Scientific Research \\
				\vskip 2mm
				University of Sfax\\
				National Engineering School of Sfax
			\end{scriptsize}
			\end{center}
		}
  	\end{minipage}
	\hfil
  	\begin{minipage}[c]{25mm}
		\includegraphics[scale=0.1]{figures/enis}
  	\end{minipage}
  	\hfil
  	\begin{minipage}[c]{50mm}
		{
			\begin{center}
			\begin{scriptsize}Graduate School Sciences and Technologies\\
			\textbf{PHD Thesis} \\Computer System Engineering \\
			\textbf{Serial N°: \@numero_ordre}
			\end{scriptsize}
			\end{center}
		}
  	\end{minipage}\end{center}
	\textcolor{mauve}{\hrule height 2pt }
  	\vspace{2mm}
	\begin{center}
		\begin{sffamily}\begin{bfseries}
  			\noindent{\Large THESIS}
		\end{bfseries}\end{sffamily}
		\\
		\vspace{4mm}			
		\textit{Presented in}	
		\\
		\vspace{1mm}
		\begin{sffamily}\begin{bfseries}
  			\noindent{The National Engineering School of Sfax}
		\end{bfseries}\end{sffamily}
		\\
		\vspace{4mm}
		\textit{In order to obtain the}
		\\
		\vspace{1mm}
		\begin{sffamily}\begin{bfseries}
  			\noindent{\huge DOCTORATE}
		\end{bfseries}\end{sffamily}
		\\
		\vspace{3mm}
		\textbf{in \\
		Computer System Engineering \\}
		\vspace{3mm}
		by \\
		\vspace{2mm}
		\begin{sffamily}\begin{bfseries}
  			\noindent{\Large {Mohamed} {ZARKA}}\\
			\vspace{2mm}
			\noindent{\begin{normalsize}(Master degree in Software Engineering)\end{normalsize}}\\
		\end{bfseries}\end{sffamily}
		\vspace{2mm}
		% le titre
		{\makebox[4in]{\hrulefill}} \\
		\vspace{1mm}
		\begin{sffamily}\begin{bfseries}
  			\noindent{\large \@titre}
		\end{bfseries}\end{sffamily}
		%\noindent{\huge \textbf{\@titre}} \\
		\vspace{1mm}
		{\makebox[4in]{\hrulefill}} \\
		\vspace{2mm}
		%\vfil
		%les membres de jury
                \textit{defended on 2016}\par
		\vskip 1mm
 		\textit{\textbf{Jury}}\par
                \begin{tabular}{lll}
                	{\@titpresident}&{{\@prenompresident} {\@nompresident},}&{\textit{President}}\\
                 	{\@titmembrea}&{{\@prenommembrea} {\@nommembrea},}&{\textit{Examinator}}\\
			\if@doc {\@titmembreb}&{{\@prenommembreb} {\@nommembreb},}&{\textit{Reviewer}}\\\fi
			\if@doc {\@titmembrec}&{{\@prenommembrec} {\@nommembrec},}&{\textit{Reviewer}}\\\fi
			\if@doc {\@titmembred}&{{\@prenommembred} {\@nommembred},}&{\textit{Advisor}}\\\fi
			\if@doc {\@titmembree}&{{\@prenommembree} {\@nommembree},}&{\textit{Co-advisor}}\\\fi
                \end{tabular}
	\end{center}
}
