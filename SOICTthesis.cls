\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SOICTthesis}[2025/03/10 Custom Thesis Class for SOICT]

\usepackage{algorithm}
\usepackage{algpseudocode} 
\usepackage{float}

% ----- Load Base Class -----
\LoadClass[a4paper,12pt]{report}  % Report class is suitable for theses
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

% ----- Required Packages -----
\RequirePackage[left=2.5cm, right=1.5cm, top=1in, bottom=1in]{geometry} % Margins
\RequirePackage{titlesec}   % Formatting chapters and sections
\RequirePackage{setspace}   % Line spacing
\RequirePackage{fancyhdr}   % Headers and footers
\RequirePackage{graphicx}   % Image handling
\RequirePackage{hyperref}   % Clickable links
\RequirePackage{xcolor}     % Colors
\RequirePackage{tocloft}    % Customizing TOC
\RequirePackage{lipsum}     % Dummy text (for testing)
\RequirePackage{times}      % Uses Times New Roman equivalent
\onehalfspacing             % 1.5 line spacing
\RequirePackage{ragged2e}  % Better justification

\AtBeginDocument{\justifying}  % ✅ Automatically justifies all text
% ----- Title Page Commands -----
\newcommand{\thesistitle}[1]{\def\@thesistitle{#1}}
\newcommand{\authorname}[1]{\def\@authorname{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\program}[1]{\def\@program{#1}}
\newcommand{\specialization}[1]{\def\@specialization{#1}} % Specialization
\newcommand{\university}[1]{\def\@university{#1}}
\newcommand{\submissiondate}[1]{\def\@submissiondate{#1}}
\newcommand{\enrollmentno}[1]{\def\@enrollmentno{#1}}
\newcommand{\supervisor}[2]{%
    \def\@supervisor{#1}%
    \def\@supervisordesignation{#2}%
}

\def\@program{Not Specified}
\def\@specialization{Not Specified}
\def\@university{Not Specified}
\def\@submissiondate{Not Specified}
\def\@supervisordesignation{Not Specified}


\renewcommand{\maketitle}{
    \begin{titlepage}
        \centering
        \vspace{1in}
        {\Large \bfseries \MakeUppercase\@thesistitle \par}
        \vspace{0.5cm}
        {\large \textit{A final dissertation report submitted for partial fulfillment of the requirements for the award of the degree of} \par}
        \vspace{0.2cm}
        {\large \textbf{\@degree} \par}  % Degree Name
        \vspace{0.2cm}
        {\large IN \par} 
        \vspace{0.2cm}
        {\large \textbf{\@program} \par}  % "CSE" or equivalent
        \vspace{0.5cm}
        {\large \textbf{\MakeUppercase{(Specialization: \@specialization)}} \par}  % Specialization in uppercase
        \vspace{0.5cm}

        \includegraphics[width=5cm]{Assets/gbulogo}

        \vspace{0.5cm}
        {\large \textbf{\MakeUppercase{Submitted by:} \\ \MakeUppercase{\@authorname}} \par}
        {\large \textbf{Enrollment No: \@enrollmentno} \par}
        \vspace{1cm}
        {\large \textbf{SUPERVISED BY:} \\ \MakeUppercase{\textbf{\@supervisor}} \\ \textbf{\@supervisordesignation} \par}
        \vfill
        {\large \textbf{\MakeUppercase{
          University school of information \& communication technology \\
          Gautam Buddha University \\
          Greater Noida - 201312, U.P. \\
          }} \par}
        {\large \textbf{\@submissiondate} \par}
    \end{titlepage}
}

\newcommand{\candidateDeclaration}{
    \newpage

    \begin{center}
        \begin{minipage}{0.2\textwidth}  % Logo area
            \includegraphics[width=3cm]{Assets/gbulogo}  % ✅ Ensure correct path
        \end{minipage}%
        \begin{minipage}{0.75\textwidth}  % Text area
            \centering  % ✅ Centers the text within the minipage
            \singlespacing  % ✅ Set line spacing to 1
            {\large \textbf{\MakeUppercase{UNIVERSITY SCHOOL OF INFORMATION AND COMMUNICATION TECHNOLOGY}}\\}
            {\large \textbf{\MakeUppercase{\@university}}\\}
            {\large \textbf{\MakeUppercase{GREATER NOIDA-201312, UTTAR PRADESH, INDIA}}\\}
            {\large \textbf{\MakeUppercase{\@submissiondate}}\\}
        \end{minipage}
    \end{center}
    \vspace{0.5cm}
    \begin{center}
        \textbf{\large CANDIDATE DECLARATION}
    \end{center}

    \flushleft  % ✅ Fixes Underfull \hbox issues

    \noindent I hereby certify that the work embodied in this dissertation entitled 
    ``\textbf{\@thesistitle}", by \textbf{\@authorname}, Roll No. \textbf{\@enrollmentno} in partial fulfillment of the requirement for the award of the degree of 
    \textbf{\@degree} with specialization in \textbf{\@specialization} submitted to the Department of CSE,  University School of Information and Communication Technology, 
    \@university, Greater Noida, is an authentic record of my own work carried out under the supervision of 
    \textbf{\@supervisor}. The matter presented in this dissertation has not been submitted by anyone in any other university/institute for the award of any other degree or diploma. 
    Responsibility for any plagiarism-related issue stands solely with me.

    \vspace{1cm}  % ✅ Reduced spacing

    \noindent
    \textbf{Signature of the Student} \hfill \textbf{\@authorname}  

    \vspace{1cm}

    \noindent This is to certify that the above statement made by the candidate is correct to the best of my knowledge and belief. 
    However, responsibility for any plagiarism-related issue solely stands with the student.

    \vspace{1cm}  % ✅ Reduced spacing

    \noindent
    \textbf{\@supervisor} \hfill \textbf{Signature of the Supervisor}\\
    \@supervisordesignation\\
    Department of Computer Science and Engineering\\
    University School of ICT,\\
    \@university.\\

    \vfill

    \noindent
    \textbf{Date:} \underline{\hspace{3cm}} \\[0.2cm]  
    \textbf{Place:} Greater Noida, India.
}

% ----- Acknowledgement Page -----
\newcommand{\acknowledgement}{
    \newpage
    \thispagestyle{plain}  % Page number at the bottom

    \begin{center}
        \textbf{\Large ACKNOWLEDGEMENTS}
    \end{center}
    \vspace{1cm}
    \noindent
    While working on this dissertation, I came across a number of people whose contributions in various ways helped me and they deserve special thanks. It is a pleasure to convey my gratitude to all of them.
    First and primarily, I would like to acknowledge and express my gratitude towards my supervisor, \textbf{\@supervisor}, for his assistance in the development of my dissertation. He provided me with the necessary suggestions that guided me and saved me a lot of time. I would also like to thank him for accepting me as a supervisee and giving me the opportunity to work in a way that highly motivates us.

    \vspace{0.5cm}
    I specially acknowledge him for his advice, supervision, and the vital contributions as and when required during this research. I am proud to record that I had the opportunity to work with an exceptionally experienced teacher like him. The knowledge shared by him will remain in my memory for years to come. I thank \textbf{\@supervisor} for his support.

    \vspace{0.5cm}
    I would also like to thank \textbf{\@university} and the \textbf{University School of Information and Communication Technology} for giving me the opportunity to work on my dissertation. I would also like to thank SOICT for providing me with the necessary resources that allowed me to develop a successful research.

    \vspace{1.5cm}

    \begin{flushright}
        \textbf{\@authorname} \\  % Auto-fill author name
        \@enrollmentno  % Auto-fill enrollment number
    \end{flushright}
}

\newcommand{\generateFrontMatter}{%
  \pagenumbering{roman}
  \maketitle
  \candidateDeclaration
  \acknowledgement
  \thesisabstract
  \startTOC
}
% ----- Abstract Page -----
\newcommand{\theabstract}[1]{%
  \generateFrontMatter
    \clearpage 
    \thispagestyle{plain} 
    \begin{center}
        \textbf{\Large ABSTRACT}
    \end{center}
    \vspace{1cm}
    \justifying
    \noindent
    #1
    \vspace{1in}
}

% ----- Table of Contents, List of Abbreviations, Figures, and Tables Formatting -----
\renewcommand{\contentsname}{}
\newcommand{\startTOC}{%
    \newpage
    \thispagestyle{plain}
    \begin{center}
        \Large\bfseries TABLE OF CONTENTS % Centered Title
    \end{center}
    \vspace{-1cm}
    \tableofcontents
    \newpage
    \startAbbreviations
    \newpage
    \startLOF
    \newpage
    \startLOT
}

% ----- TOC Entry Formatting -----
\renewcommand{\cftchapaftersnum}{\MakeUppercase}  
\renewcommand{\cftchapdotsep}{\cftdotsep}        
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}  
\renewcommand{\cftchapnumwidth}{2em}  

% ----- Section Formatting in TOC -----
\renewcommand{\cftsecindent}{1.5em}  
\renewcommand{\cftsecnumwidth}{3em}  
\renewcommand{\cftsecdotsep}{\cftdotsep}  

% ----- Subsection Formatting in TOC -----
\renewcommand{\cftsubsecindent}{3em}  
\renewcommand{\cftsubsecnumwidth}{4em}  
\renewcommand{\cftsubsecdotsep}{\cftdotsep}  

% ----- List of Abbreviations -----
\newcommand{\startAbbreviations}{%
    \newpage
    \thispagestyle{plain}
    \begin{center}
        \Large\bfseries LIST OF ABBREVIATIONS
    \end{center}
    \vspace{-1cm}
    % Placeholder for abbreviations list
    \begin{center}
        \textit{(Abbreviations will be inserted here)}
    \end{center}
}

% ----- List of Figures -----
\newcommand{\startLOF}{%
    \newpage
    \renewcommand{\listfigurename}{} 
    \thispagestyle{plain}
    \begin{center}
        \Large\bfseries LIST OF FIGURES
    \end{center}
    \vspace{-2cm}
    \listoffigures
}

% ----- List of Tables -----
\newcommand{\startLOT}{%
    \newpage
    \renewcommand{\listtablename}{} 
    \thispagestyle{plain}
    \begin{center}
        \Large\bfseries LIST OF TABLES
    \end{center}
    \vspace{-2cm}
    \listoftables
}
% ----- Custom Chapter Formatting -----

% Define a custom chapter format
\titleformat{\chapter}[display]
  {\normalfont\Huge\bfseries\centering}
  {CHAPTER-\thechapter}{0pt}{\Huge\bfseries\centering\MakeUppercase}

% Set chapter spacing to center vertically
\titlespacing*{\chapter}{0pt}{\fill}{\fill}

% Ensure chapters start on their own page with content on the next page
\let\oldchapter\chapter
\renewcommand{\chapter}[1]{%
    \clearpage
    \ifnum\value{chapter}=0  % ✅ If this is the first chapter
        \pagenumbering{arabic}  % ✅ Use Arabic numbering
        \setcounter{page}{1}  % ✅ Start numbering from page 1
    \fi
    \oldchapter{#1}  % ✅ Display the chapter title
    \thispagestyle{empty}  % ✅ Hide page number on the chapter title page
    \clearpage  % ✅ Move to the next page for content
    \addtocounter{page}{-1}  % ✅ Keep the page count but do not display the number
    \thispagestyle{plain}  % ✅ Show page number on the first content page
}

% ----- End of TOC Formatting -----
% Biblography Formatting
\makeatletter
\patchcmd{\thebibliography}{\chapter*}{\section*}{}{}
\makeatother

% ----- End of Class -----
\endinput

