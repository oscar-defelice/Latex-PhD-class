%
%  phd.cls
%
%  Created by Oscar de Felice on 15/05/2017, this file is standalone.
%  Copyright © 2017 Oscar de Felice.
%
%  This file is free software: you can redistribute it and/or modify it under
%  the terms of the GNU General Public License as published by the
%  Free Software Foundation, either version 3 of the License, or any
%  later version.
%
%  This program is distributed in the hope that it will be useful, but
%  WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%  See the GNU General Public License for more details.
%
%  You should have received a copy of the GNU General Public License
%  along with this program. If not, see <http://www.gnu.org/licenses/>.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{phd}[2017/05/15]
\makeatletter

\newif\if@debugmode
\newif\if@draftmode
\newif\if@externalizemode

\DeclareOption{fleqn}{\PassOptionsToClass{fleqn}{book}}
\DeclareOption{leqno}{\PassOptionsToClass{leqno}{book}}
\DeclareOption{debug}{\PassOptionsToClass{draft}{book}
                      \PassOptionsToPackage{final}{graphicx}
                      \PassOptionsToPackage{final, colorlinks=true, linkcolor = red, citecolor= red, urlcolor= blue}{hyperref}
                      \@debugmodetrue}
\DeclareOption{draft}{\PassOptionsToClass{draft}{book}
                      \@draftmodetrue}
\DeclareOption{externalize}{\@externalizemodetrue}
\ProcessOptions

\LoadClass[a4paper, 11pt]{book}
\reversemarginpar


\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{standalone}

\RequirePackage[margin = 28mm, bindingoffset = 11mm, marginparwidth = 28mm, marginparsep = 4mm, headheight = 14pt]{geometry}
\RequirePackage[sc,bf]{titlesec}
\RequirePackage{fix-cm}
\RequirePackage{fancyhdr}
\RequirePackage{dsfont}
\RequirePackage{enumitem}
\RequirePackage{footmisc}
\RequirePackage{chngcntr}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{marvosym}
%
\RequirePackage{bibentry}
\nobibliography*			% Enter \bibentry{citekey} in the text to make a complete bibliography element appearing in the text.
%
\RequirePackage{cite}		%Uncomment in the final to get the interval of citations.

\RequirePackage[pdfpagelabels]{hyperref}
\AtBeginDocument{\usepackage[noabbrev]{cleveref}
    \crefname{equation}{equation}{equations}%
    \crefname{chapter}{chapter}{chapters}%
    \crefname{section}{section}{sections}%
    \crefname{appendix}{appendix}{appendices}%
    \crefname{enumi}{item}{items}%
    \crefname{footnote}{footnote}{footnotes}%
    \crefname{figure}{figure}{figures}%
    \crefname{table}{table}{tables}%
    \crefname{theorem}{theorem}{theorems}%
    \crefname{lemma}{lemma}{lemmas}%
    \crefname{corollary}{corollary}{corollaries}%
    \crefname{proposition}{proposition}{propositions}%
    \crefname{definition}{definition}{definitions}%
    \crefname{result}{result}{results}%
    \crefname{example}{example}{examples}%
    \crefname{remark}{remark}{remarks}%
    \crefname{note}{note}{notes}%
}

\RequirePackage[french,english]{babel}
\selectlanguage{english}

\RequirePackage{xspace}
\RequirePackage{calc}
\RequirePackage{xstring}
\RequirePackage{environ}
\RequirePackage{wrapfig}

\RequirePackage{xparse}
\RequirePackage{xcolor}
\RequirePackage{eecolors}

	\newcommand{\chapnumfont}%     % define font for chapter number
	{
	 	\usefont{T1}{pnc}{b}{n}%      % choose New Chancery, bold, normal shape
	 	\fontsize{100}{100}%          % font size 100pt, baselineskip 100pt
	 	\selectfont%                  % activate font
	}
	
	\colorlet{chapnumcol}{gray!75}  % color for chapter number

	\titleformat{\chapter}[display]
	{\filright\bfseries \scshape}
	{\filright\chapnumfont\textcolor{chapnumcol}{\thechapter}}
	{-24pt}
	{\huge}
	
\RequirePackage{tikz}
\RequirePackage{tikz-cd}
\RequirePackage{tikz3dcs-pp}
\RequirePackage{pgfplots}
\RequirePackage{graphicx}
\RequirePackage[labelfont=sc]{caption}
\RequirePackage{subcaption}
\DeclareCaptionStyle{figstyle}
	[format=plain,margin=0pt, justification=centering]
	{format=hang, font=small, labelfont=sc}
\captionsetup[figure]{style=figstyle}
\DeclareCaptionStyle{tabstyle}
	[format=plain,margin=0pt,justification=centering]
	{format=hang, font=small, labelfont=sc}
\captionsetup[table]{style=tabstyle}
%\RequirePackage{subfig}
%\RequirePackage{float}

\RequirePackage{math}
\RequirePackage{lrmath}
\RequirePackage{amsmath, amssymb, amsfonts, amscd, amsthm, units}
\RequirePackage{slashed}
\RequirePackage{bigints}
\RequirePackage{oscar}

\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\newtheorem*{conjecture}{Conjecture}
%\theoremstyle{definition}
\newtheorem*{definition}{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

\usetikzlibrary{decorations.pathmorphing,calc,shapes,positioning,fit,arrows,fadings,decorations.pathreplacing,decorations.pathmorphing,intersections,fadings}
\usetikzlibrary{patterns}
\usetikzlibrary{decorations.markings}
\usepgfplotslibrary{patchplots}
\pgfplotsset{compat=1.15}


%%%%%%%%My Tikz definitions%%%%%%%%%%%%%%%%%
\tikzset{->-/.style={decoration={
  markings,
  mark=at position #1 with {\arrow{latex}}},postaction={decorate}}}
  %
\tikzset{
    %Define standard arrow tip
    >=stealth',
    %Define style for boxes
    punkt/.style={
           rectangle,
           rounded corners,
           draw=black, very thick,
           text width=7.5em,
           minimum height=2em,
           text centered},
    % Define arrow style
    pil/.style={
           ->,
           thick,
           shorten <=2pt,
           shorten >=2pt,}
}
%
%%%%%%%%%%%%%
%%3d drawings %%%
\newcommand\pgfmathsinandcos[3]{%
  \pgfmathsetmacro#1{sin(#3)}%
  \pgfmathsetmacro#2{cos(#3)}%
}
\newcommand\LongitudePlane[3][current plane]{%
  \pgfmathsinandcos\sinEl\cosEl{#2} % elevation
  \pgfmathsinandcos\sint\cost{#3} % azimuth
  \tikzset{#1/.style={cm={\cost,\sint*\sinEl,0,\cosEl,(0,0)}}}
}
\newcommand\LatitudePlane[3][current plane]{%
  \pgfmathsinandcos\sinEl\cosEl{#2} % elevation
  \pgfmathsinandcos\sint\cost{#3} % latitude
  \pgfmathsetmacro\yshift{\cosEl*\sint}
  \tikzset{#1/.style={cm={\cost,0,0,\cost*\sinEl,(0,\yshift)}}} %
}
\newcommand\DrawLongitudeCircle[2][1]{
  \LongitudePlane{\angEl}{#2}
  \tikzset{current plane/.prefix style={scale=#1}}
   % angle of "visibility"
  \pgfmathsetmacro\angVis{atan(sin(#2)*cos(\angEl)/sin(\angEl))} %
  \draw[current plane] (\angVis:1) arc (\angVis:\angVis+180:1);
  \draw[current plane,dashed] (\angVis-180:1) arc (\angVis-180:\angVis:1);
}
\newcommand\DrawLatitudeCircle[2][1]{
  \LatitudePlane{\angEl}{#2}
  \tikzset{current plane/.prefix style={scale=#1}}
  \pgfmathsetmacro\sinVis{sin(#2)/cos(#2)*sin(\angEl)/cos(\angEl)}
  % angle of "visibility"
  \pgfmathsetmacro\angVis{asin(min(1,max(\sinVis,-1)))}
  \draw[current plane] (\angVis:1) arc (\angVis:-\angVis-180:1);
  \draw[current plane,dashed] (180-\angVis:1) arc (180-\angVis:\angVis:1);
}
%%%%%%%%%%%%%

\providecommand\tikzifexternalizing[2]{}
\if@externalizemode
	\usetikzlibrary{external}
	\tikzsetexternalprefix{./Resources/Externalised/}
	\tikzexternalize % add option '-shell-escape' to pdflatex when recompiling a tikzpicture.
\fi
\newif\if@externrun
\tikzifexternalizing{\@externruntrue}{}


\providecommand\comment[2][]{\relax}

\if@externrun
\else
	\if@draftmode
%		\RequirePackage[inline]{showlabels}
%			\renewcommand{\showlabelfont}{\color{orange}\scriptsize\texttt}
%			\showlabels[\color{green}]{cite}
		\RequirePackage[color]{showkeys}
		
		\RequirePackage[texcoord]{eso-pic}
		\RequirePackage{picture}
		
		\RequirePackage[style = ddmmyyyy, datesep = /]{datetime2}
		
		\colorlet{@debugdraftcolor}{gray}
		
		\gdef\@debugdraftbanner{\rotatebox{90}{\bfseries\LARGE{Draft~--~\DTMtoday~--~\DTMcurrenttime}}}
		
		\newlength\@debugdraftbannerhalfwidth
		\settowidth\@debugdraftbannerhalfwidth{\@debugdraftbanner}
		\setlength\@debugdraftbannerhalfwidth{\@debugdraftbannerhalfwidth/2}
		
		\newlength\@debugdraftboxoriginX
		\newlength\@debugdraftboxoriginY
		\newlength\@debugdraftboxsizeW
		\newlength\@debugdraftboxsizeH
		
		\AddToShipoutPicture{
			\ifodd\value{page}
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \oddsidemargin}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{\headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \textheight){}}
				\addtolength\@debugdraftboxoriginY{\footskip}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{-\footskip}
				\setlength\@debugdraftboxoriginX{(\paperwidth + 1in + \hoffset + \oddsidemargin + \textwidth)/2}
				\put(\@debugdraftboxoriginX - \@debugdraftbannerhalfwidth, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\@debugdraftbanner}
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \oddsidemargin - \marginparsep - \marginparwidth}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight + \headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\dashbox(\marginparwidth, \textheight){}}
			\else
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \evensidemargin}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{\headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \textheight){}}
				\addtolength\@debugdraftboxoriginY{\footskip}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{-\footskip}
				\setlength\@debugdraftboxoriginX{(1in + \hoffset + \evensidemargin)/2}
				\put(\@debugdraftboxoriginX - \@debugdraftbannerhalfwidth, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\@debugdraftbanner}
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \evensidemargin + \textwidth + \marginparsep}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight + \headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\dashbox(\marginparwidth, \textheight){}}
			\fi
		}
		
		\newcounter{commentc}
		\newcounter{commentw}
		\newcounter{commente}
		\renewcommand\comment[2][c]{\leavevmode\unskip
			\IfEqCase{#1}{
				{c}{\refstepcounter{commentc}{\bfseries\color{EE102}~\hyperlink{commentc.\thecommentc.u}{\hypertarget{commentc.\thecommentc.d}{\textbar\textsubscript{\thecommentc}}}}\marginpar{\footnotesize\color{EE102}\hypertarget{commentc.\thecommentc.u}{\hyperlink{commentc.\thecommentc.d}{\textsubscript{\thecommentc}}}#2}}
				{w}{\refstepcounter{commentw}{\bfseries\color{EE148}~\hyperlink{commentw.\thecommentw.u}{\hypertarget{commentw.\thecommentw.d}{\textbar\textsubscript{\thecommentw}}}}\marginpar{\footnotesize\color{EE148}\hypertarget{commentw.\thecommentw.u}{\hyperlink{commentw.\thecommentw.d}{\textsubscript{\thecommentw}}}#2}}
				{e}{\refstepcounter{commente}{\bfseries\color{EE157}~\hyperlink{commente.\thecommente.u}{\hypertarget{commente.\thecommente.d}{\textbar\textsubscript{\thecommente}}}}\marginpar{\footnotesize\color{EE157}\hypertarget{commente.\thecommente.u}{\hyperlink{commente.\thecommente.d}{\textsubscript{\thecommente}}}#2}}%
			}[\refstepcounter{commentc}{\bfseries\color{EE102}~\hyperlink{commentc.\thecommentc.u}{\hypertarget{commentc.\thecommentc.d}{\textbar\textsubscript{\thecommentc}}}}\marginpar{\footnotesize\color{EE102}\hypertarget{commentc.\thecommentc.u}{\hyperlink{commentc.\thecommentc.d}{\textsubscript{\thecommentc}}}#2}]%
			\xspace%
		}
	\else\if@debugmode
%		\RequirePackage[inline]{showlabels}
%			\renewcommand{\showlabelfont}{\color{orange}\scriptsize\texttt}
%			\showlabels[\color{green}]{cite}
		\RequirePackage[color]{showkeys}
				
		\RequirePackage[texcoord]{eso-pic}
		\RequirePackage{picture}
		
		\RequirePackage[style = ddmmyyyy, datesep = /]{datetime2}
		
		\colorlet{@debugdraftcolor}{gray}
		
		\gdef\@debugdraftbanner{\rotatebox{90}{\bfseries\LARGE{Debug~--~\DTMtoday~--~\DTMcurrenttime}}}
		
		\newlength\@debugdraftbannerhalfwidth
		\settowidth\@debugdraftbannerhalfwidth{\@debugdraftbanner}
		\setlength\@debugdraftbannerhalfwidth{\@debugdraftbannerhalfwidth/2}
		
		\newlength\@debugdraftboxoriginX
		\newlength\@debugdraftboxoriginY
		\newlength\@debugdraftboxsizeW
		\newlength\@debugdraftboxsizeH
		
		\AddToShipoutPicture{
			\ifodd\value{page}
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \oddsidemargin}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{\headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \textheight){}}
				\addtolength\@debugdraftboxoriginY{\footskip}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{-\footskip}
				\setlength\@debugdraftboxoriginX{(\paperwidth + 1in + \hoffset + \oddsidemargin + \textwidth)/2}
				\put(\@debugdraftboxoriginX - \@debugdraftbannerhalfwidth, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\@debugdraftbanner}
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \oddsidemargin - \marginparsep - \marginparwidth}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight + \headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\dashbox(\marginparwidth, \textheight){}}
			\else
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \evensidemargin}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{\headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \textheight){}}
				\addtolength\@debugdraftboxoriginY{\footskip}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\framebox(\textwidth, \headheight){}}
				\addtolength\@debugdraftboxoriginY{-\footskip}
				\setlength\@debugdraftboxoriginX{(1in + \hoffset + \evensidemargin)/2}
				\put(\@debugdraftboxoriginX - \@debugdraftbannerhalfwidth, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\@debugdraftbanner}
				\setlength\@debugdraftboxoriginX{1in + \hoffset + \evensidemargin + \textwidth + \marginparsep}
				\setlength\@debugdraftboxoriginY{1in + \voffset + \topmargin + \headheight + \headsep + \textheight}
				\put(\@debugdraftboxoriginX, -\@debugdraftboxoriginY){\color{@debugdraftcolor}\dashbox(\marginparwidth, \textheight){}}
			\fi
		}
		
		\newcounter{commentc}
		\newcounter{commentw}
		\newcounter{commente}
		\renewcommand\comment[2][c]{\leavevmode\unskip
			\IfEqCase{#1}{
				{c}{\refstepcounter{commentc}{\bfseries\color{EE102}~\hyperlink{commentc.\thecommentc.u}{\hypertarget{commentc.\thecommentc.d}{\textbar\textsubscript{\thecommentc}}}}\marginpar{\footnotesize\color{EE102}\hypertarget{commentc.\thecommentc.u}{\hyperlink{commentc.\thecommentc.d}{\textsubscript{\thecommentc}}}#2}}
				{w}{\refstepcounter{commentw}{\bfseries\color{EE148}~\hyperlink{commentw.\thecommentw.u}{\hypertarget{commentw.\thecommentw.d}{\textbar\textsubscript{\thecommentw}}}}\marginpar{\footnotesize\color{EE148}\hypertarget{commentw.\thecommentw.u}{\hyperlink{commentw.\thecommentw.d}{\textsubscript{\thecommentw}}}#2}}
				{e}{\refstepcounter{commente}{\bfseries\color{EE157}~\hyperlink{commente.\thecommente.u}{\hypertarget{commente.\thecommente.d}{\textbar\textsubscript{\thecommente}}}}\marginpar{\footnotesize\color{EE157}\hypertarget{commente.\thecommente.u}{\hyperlink{commente.\thecommente.d}{\textsubscript{\thecommente}}}#2}}%
			}[\refstepcounter{commentc}{\bfseries\color{EE102}~\hyperlink{commentc.\thecommentc.u}{\hypertarget{commentc.\thecommentc.d}{\textbar\textsubscript{\thecommentc}}}}\marginpar{\footnotesize\color{EE102}\hypertarget{commentc.\thecommentc.u}{\hyperlink{commentc.\thecommentc.d}{\textsubscript{\thecommentc}}}#2}]%
			\xspace%
		}
	\fi\fi
\fi
%\counterwithin*{footnote}{chapter}  % Uncomment for resetting the counter of footnote every chapter.


\newlength\@originalparskip
\setlength\@originalparskip{\parskip}
\setlength\parskip{4pt plus 3pt}

\newlength\@originalparindent
\setlength\@originalparindent{\parindent}
\setlength\parindent{0pt}
\renewcommand\indent{\makeatletter\hspace*{\@originalparindent}\makeatother}

\newlength\@originalfootnotesep
\setlength\@originalfootnotesep{\footnotesep}
\setlength\footnotesep{4mm}

\setlength\marginparpush{\footnotesep}
\newcommand\marginnote[1]{\refstepcounter{footnote}\hyperlink{marginnote.\thepage.\thefootnote}{\textsuperscript{\thefootnote}}\marginpar{\footnotesize\hypertarget{marginnote.\thepage.\thefootnote}{\textsuperscript{\thefootnote}}#1}}

\renewcommand\thechapter{\arabic{chapter}}
\renewcommand\thesection{\thechapter.\arabic{section}}
\renewcommand\thesubsection{\thesection.\arabic{subsection}}

\@addtoreset{equation}{chapter}
\@addtoreset{equation}{section}
\renewcommand\theequation{\thesection.\arabic{equation}}

\pagestyle{fancy}
\fancyhead{}
\fancyhead[LO]{\nouppercase{\leftmark}}
\fancyhead[RE]{\nouppercase{\rightmark}}
\fancyhead[RO,LE]{\thepage}
\fancyfoot{}
%\cfoot{\thepage} %uncomment for the page number at the bottom of the page
\renewcommand\headrulewidth{0.2pt} %default is 0.4pt
\renewcommand\footrulewidth{0pt} %default is 0pt

\renewcommand\chaptermark[1]{\markboth{\emph{#1}}{\emph{#1}}}
\renewcommand\sectionmark[1]{\markright{\thesection~\emph{#1}}}

\let\@originalcleardoublepage\cleardoublepage
\def\cleardoublepage{
	\clearpage
	\if@twoside
		\ifodd\value{page}
		\else
			\thispagestyle{empty}
			\@originalcleardoublepage
		\fi
	\fi
}

\newcounter{ensurepagenumbering@counter}
\newcommand{\ensurepagenumbering}[1]{
	\setcounter{ensurepagenumbering@counter}{\value{page}}
	\pagenumbering{#1}
	\setcounter{page}{\value{ensurepagenumbering@counter}}
}

\let\@originalchapter\chapter
\def\chapter{
	\@ifstar\chapterstar\@originalchapter
}
\def\chapterstar{
	\@ifstar\chapter@nonum@notoc\chapter@nonum
}
\newcommand\chapter@nonum[2][]{
	\ifthenelse{\isempty{#1}}{
		\cleardoublepage
		\phantomsection
		\addcontentsline{toc}{chapter}{\protect\numberline{}#2}
		\@originalchapter*{#2}
		\chaptermark{#2}
	}{
		\cleardoublepage
		\phantomsection
		\addcontentsline{toc}{chapter}{\protect\numberline{}#1}
		\@originalchapter*[#1]{#2}
		\chaptermark{#1}
	}
}
\newcommand\chapter@nonum@notoc[2][]{
	\ifthenelse{\isempty{#1}}{
		\@originalchapter*{#2}
		\chaptermark{#2}
	}{
		\@originalchapter*[#1]{#2}
		\chaptermark{#1}
	}
}

\let\@originaltableofcontents\tableofcontents
\def\tableofcontents{
	\let\@toclocaloriginalchapter\chapter
	\def\chapter{\@toclocaloriginalchapter*}
	\@originaltableofcontents
	\def\chapter{\@toclocaloriginalchapter}
}

\def\@documentnocite#1{\@bsphack
	\@for\@citeb:=#1\do{%
		\edef\@citeb{\expandafter\@firstofone\@citeb}%
		\if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
		\@ifundefined{b@\@citeb}{\G@refundefinedtrue
			\@latex@warning{Citation `\@citeb' undefined}}{}}%
	\@esphack}
\AtBeginDocument{\let\nocite\@documentnocite}


\newlength\pgfwidth
\setlength\pgfwidth{0.74\textwidth}
\newlength\pgfheight
\setlength\pgfheight{0.61803398875\pgfwidth}
\newlength\pgfoffset
\setlength\pgfoffset{(\textwidth - \pgfwidth)/2}
\pgfplotsset{
	compat = newest,
	scale only axis,
	width = \pgfwidth,
	height = \pgfheight,
	every axis x label/.append style = {at = {(axis description cs:1,0)}, anchor = north east, yshift = -2.8ex},
	every axis y label/.append style = {at = {(axis description cs:0,1)}, rotate = -90, anchor = south west, yshift = +0.7ex},
	reverse legend,
	every axis legend/.append style = {draw = none, fill = none, column sep = 0.4ex, legend cell align = left, anchor = north east, at = {(axis description cs:1,1)}, xshift = -0.7ex, yshift = -0.7ex}
}

\NewEnviron{pgfplot}[1][]{\centering\begin{tikzpicture}[#1]
	\BODY
	\path[use as bounding box] (-\pgfoffset,0) -- ++(\textwidth,0);
\end{tikzpicture}}


\AtBeginDocument{\pagenumbering{alph}}
\newcommand\coverpage[2][]{
	\ifthenelse{\isempty{#2}}{
		\cleardoublepage
		\thispagestyle{empty}
		\null
		\cleardoublepage
	}{
		\cleardoublepage
		\thispagestyle{empty}
		\null
		\vfill
		\hfill
		\parbox{\textwidth/2}{\flushright
			\ifthenelse{\isempty{#1}}{%
				\emph{#2}%
			}{%
				\emph{#2}\\---~#1%
			}%
		}%
		\cleardoublepage
	}
}

\newcommand\dedicationpage[1][]{
	\ifthenelse{\isempty{#1}}{
%		\cleardoublepage
		\thispagestyle{empty}
		\null
		\cleardoublepage
	}{
%		\cleardoublepage
		\thispagestyle{empty}
		\null
		\vspace{\stretch{1}}
		\hfill
		\parbox{\textwidth/2}{\flushright	
					\emph{#1}	%
				}%
		\vspace{\stretch{3}}
		\null
		%
		\cleardoublepage
		}%
	}


\def\preface{
	\cleardoublepage
	\pagenumbering{roman}
}
\def\acknowledgements{
	\chapter**{Acknowledgements}
}
\def\remerciements{
	\chapter**{Remerciements}
}
\def\content{
	\cleardoublepage
	\pagenumbering{arabic}
}

\def\@firstname{\@latex@warning@no@line{No \noexpand\firstname given}}
\def\@lastname{\@latex@warning@no@line{No \noexpand\lastname given}}
\newcommand\firstname[1]{
	\ifthenelse{\isempty{#1}}{
		\gdef\@firstname{\@latex@warning@no@line{No \noexpand\firstname given}}
	}{
		\gdef\@firstname{#1}
	}
}
\newcommand\lastname[1]{
	\ifthenelse{\isempty{#1}}{
		\gdef\@lastname{\@latex@warning@no@line{No \noexpand\lastname given}}
	}{
		\gdef\@lastname{#1}
	}
}
\newcommand\name[2]{
	\firstname{#1}
	\lastname{#2}
}

\def\@title{\@latex@warning@no@line{No \noexpand\title given}}
\def\@title@fr{\@latex@warning@no@line{No \noexpand\title given}}
\renewcommand\title[2][]{
	\ifthenelse{\isempty{#2}}{
		\gdef\@title{\@latex@warning@no@line{No \noexpand\title given}}
		\gdef\@title@fr{\@latex@warning@no@line{No \noexpand\title given}}
	}{
		\gdef\@title{#2}
		\ifthenelse{\isempty{#1}}{
			\gdef\@title@fr{#2}
		}{
			\gdef\@title@fr{#1}
		}
	}
}
\def\@abstract{\@latex@warning@no@line{No \noexpand\abstract given}}
\def\@abstract@fr{\@latex@warning@no@line{No \noexpand\abstract given}}
\newcommand\abstract[2][]{
	\ifthenelse{\isempty{#2}}{
		\gdef\@abstract{\@latex@warning@no@line{No \noexpand\abstract given}}
		\gdef\@abstract@fr{\@latex@warning@no@line{No \noexpand\abstract given}}
	}{
		\gdef\@abstract{#2}
		\ifthenelse{\isempty{#1}}{
			\gdef\@abstract@fr{#2}
		}{
			\gdef\@abstract@fr{#1}
		}
	}
}

\def\@logotypes@left{}
\def\@logotypes@center{}
\def\@logotypes@right{}
\newcommand\logotypes[3]{
	\gdef\@logotypes@left{#1}
	\gdef\@logotypes@center{#2}
	\gdef\@logotypes@right{#3}
}

\def\@speciality{\@latex@warning@no@line{No \noexpand\speciality given}}
\newcommand\speciality[1]{
	\ifthenelse{\isempty{#1}}{
		\gdef\@speciality{\@latex@warning@no@line{No \noexpand\speciality given}}
	}{
		\gdef\@speciality{#1}
	}
}
\def\@doctoralschool{\@latex@warning@no@line{No \noexpand\doctoralschool given}}
\newcommand\doctoralschool[2][]{
	\ifthenelse{\isempty{#2}}{
		\gdef\@doctoralschool{\@latex@warning@no@line{No \noexpand\doctoralschool given}}
	}{
		\gdef\@doctoralschool{#2}
			\ifthenelse{\isempty{#1}}
				{
					\gdef\@doctoralschool{#2}
				}{
					\gdef\@doctoralschool{\href{#1}{#2}}
				}

	}
}
\def\@university{\@latex@warning@no@line{No \noexpand\university given}}
\newcommand\university[2][]{
	\ifthenelse{\isempty{#2}}{
		\gdef\@university{\@latex@warning@no@line{No \noexpand\university given}}
	}{
		\gdef\@university{#2}
			\ifthenelse{\isempty{#1}}
				{
					\gdef\@university{#2}
				}{
					\gdef\@university{\href{#1}{#2}}
				}

	}
}
\def\@laboratory{\@latex@warning@no@line{No \noexpand\laboratory given}}
\newcommand\laboratory[2][]{
	\ifthenelse{\isempty{#2}}{
		\gdef\@laboratory{\@latex@warning@no@line{No \noexpand\laboratory given}}
	}{
		\gdef\@laboratory{#2}
			\ifthenelse{\isempty{#1}}
				{
					\gdef\@laboratory{#2}
				}{
					\gdef\@laboratory{\href{#1}{#2}}
				}
	}
}

\def\@defensedate{\today}
\newcommand\defensedate[1]{
	\ifthenelse{\isempty{#1}}{
		\gdef\@defensedate{\today}
	}{
		\gdef\@defensedate{#1}
	}
}
\def\@typesettedjury{}
\newcommand\addjurymember[4]{
	\ifx\@typesettedjury\empty%
		\gdef\@typesettedjury{\IfEqCase{#1}{{M}{M.}{F}{Mme}}[???]&#2~\textsc{#3}&#4}%
	\else%
		\g@addto@macro\@typesettedjury{\\\IfEqCase{#1}{{M}{M.}{F}{Mme}}[???]&#2~\textsc{#3}&#4}%
	\fi%
}

\def\titlepage{
	\cleardoublepage
	\newgeometry{margin = 11mm, bindingoffset = 11mm, marginparwidth = 0pt, marginparsep = 0pt, headheight = 0pt, headsep = 0pt, footskip = 0pt}
	\thispagestyle{empty}
	\selectlanguage{french}
	\begin{center}
		\centerline\bgroup%
		\ifx\empty\@logotypes@left%
			\null\hfill%
		\else%
			\rlap{\includegraphics[height = 17mm]{\@logotypes@left}}\hfill%
		\fi%
		\ifx\empty\@logotypes@center%
			\null\hfill%
		\else%
			\clap{\includegraphics[height = 17mm]{\@logotypes@center}}\hfill%
		\fi%
		\ifx\empty\@logotypes@right%
			\null%
		\else%
			\llap{\includegraphics[height = 17mm]{\@logotypes@right}}%
		\fi%
		\par\egroup
		%
		\vspace{28pt}
		{\bfseries\MakeUppercase{Thèse de doctorat}\\\MakeUppercase{de l'Université \@university}}\\[14pt]
		\begin{tabular}{r@{~}c@{ }l}
		{\bfseries Spécialité}&{\bfseries:}&{\bfseries\@speciality}\\[1pt]
		École doctorale&:&\@doctoralschool
		\end{tabular}\par
		\vfill
		Réalisée au\\[7pt]
		{\large\scshape \@laboratory}\par
		\vfill
		présentée par\\[7pt]
		{\Large\bfseries \@firstname~\textsc{\@lastname}}\par
		\vfill
		pour obtenir le grade de\\[7pt]
		\MakeUppercase{Docteur de l'Université \@university}\par
		\vfill
		\rule{\linewidth}{1pt}
		Sujet de la thèse~:\\[7pt]
		{\Huge\bfseries\@title@fr\par}
		\rule{\linewidth}{1pt}
		\vfill
		\vfill
		\vfill
		Soutenue le \@defensedate{} devant le jury composé de~:\\[7pt]
		\begin{tabular}{rll}
			\@typesettedjury
		\end{tabular}
		\vfill
		\vfill
	\end{center}
	\selectlanguage{english}
	\restoregeometry
	\cleardoublepage
}
\def\abstracten{
	\chapter**{\@title}
		\section*{Abstract}
			\@abstract
	\cleardoublepage
}
\def\abstractfr{
	\selectlanguage{french}
	\chapter**{\@title@fr}
		\section*{Résumé}
			\@abstract@fr
	\selectlanguage{english}
	\cleardoublepage
}
\def\abstractpage{
	\cleardoublepage
	\thispagestyle{empty}
	\null
	\clearpage
	\newgeometry{margin = 11mm, bindingoffset = 11mm, marginparwidth = 0pt, marginparsep = 0pt, headheight = 0pt, headsep = 0pt, footskip = 0pt}
	\thispagestyle{empty}
	\null
	\vfill
	%{\Huge\bfseries \@title@fr}\par
	\section*{Résumé}\@abstract@fr\par
	\vfill
	\vfill
	\selectlanguage{french}
	%{\Huge\bfseries \@title}\par
	\section*{Abstract}\@abstract\par
	\selectlanguage{english}
	\vfill
	\restoregeometry
}


%\captionsetup[subfigure]{labelformat = simple}
%\renewcommand\thesubfigure{(\alph{subfigure})}

%
%%================================================================
%%============== my own command definitions ==============================
%%
%Groups
\newcommand{\GL}{\mathrm{GL}}
\newcommand{\SL}{\mathrm{SL}}
\newcommand{\U}{\mathrm{U}}
\newcommand{\SU}{\mathrm{SU}}
\newcommand{\rmO}{\mathrm{O}}
\newcommand{\SO}{\mathrm{SO}}
\newcommand{\Sp}{\mathrm{Sp}}
\newcommand{\USp}{\mathrm{USp}}
\newcommand{\E}{\mathrm{E}}
\newcommand{\ISO}{\mathrm{ISO}}
\newcommand{\CSO}{\mathrm{CSO}}
%Symbols and operators
\newcommand{\id}{\mathds{1}}
\DeclareMathOperator{\RRe}{\mathbb{R}e}
\DeclareMathOperator{\IIm}{\mathbb{I}m}
\DeclareMathOperator{\adj}{ad}
\DeclareMathOperator{\vol}{vol}
\newcommand{\com}[2]{\left[#1 , #2\right]}
\newcommand{\rg}[1]{\stackrel{\scriptscriptstyle{\circ}}{#1}}
\newcommand{\eqs}{\stackrel{*}{=}}
\newcommand{\xN}{\otimes_{N'}}
%\DeclareMathOperator{\tr}{tr}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\CC}{\mathbb{C}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\ad}{\mathrm{ad}}
%Differential operators
\newcommand{\dd}{\mathrm{d}}
\newcommand{\din}{\mathrm{d^{\text{in}}}}
%%
%%============================================================
%%==================================================================



\bibliographystyle{unsrtsiam}


\makeatother
\endinput