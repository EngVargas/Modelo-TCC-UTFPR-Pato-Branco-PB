%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a 
%% Universidade Tecnológica Federal do Paraná campus Pato Branco
%% por Lael N. Santos - 2017
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is SEU_NOME, SEU_EMAIL
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfprtex2} %[2017/09/20 v1.0 Modelo da Universidade Tecnológica Federal do Paraná campus Pato Branco baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% resolvendo problemas com o uppercase

\pdfstringdefDisableCommands{\edef\uppercase{}}

% resolvendo problema com hifenização de url
\sloppy

% alterando tamanho e fonte de capítulos, seções e subseções
\renewcommand{\ABNTEXchapterfont}{\sffamily}
\renewcommand{\ABNTEXchapterfontsize}{\bfseries}
\renewcommand{\ABNTEXsectionfontsize}{}
\renewcommand{\ABNTEXsubsectionfontsize}{}
\renewcommand{\ABNTEXsubsubsectionfontsize}{}

% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \ABNTEXchapterfont{UNIVERSIDADE TECNOL\'OGICA FEDERAL DO PARAN\'A\\
  CAMPUS PATO BRANCO\\
  CURSO DE ENGENHARIA EL\'ETRICA}
    
    \vfill
    
    {\ABNTEXchapterfont\MakeTextUppercase{\imprimirautor}}

    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\Large\MakeTextUppercase{\imprimirtitulo}
    \end{center}
    \vfill
    
    \MakeTextUppercase{\imprimirtipotrabalho}
    
    \vfill
    
    \MakeTextUppercase{\imprimirlocal}
    
    \imprimirdata
    
  \end{capa}
}



% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}

{\ABNTEXchapterfont\MakeTextUppercase{\imprimirautor}}

\vfill

\begin{center}
\ABNTEXchapterfont\bfseries\Large\MakeTextUppercase{\imprimirtitulo}
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  
  \
  
Orientador:    \imprimirorientador

\ 

Coorientador:    \imprimircoorientador

  \vspace*{\fill}
  \end{minipage}%
 
  
  \
  

  
}%

\vspace*{\fill}

{\ABNTEXchapterfont\MakeTextUppercase{\imprimirlocal}}

\par

{\ABNTEXchapterfont\imprimirdata}
\vspace{2cm}
\ 
\end{center}
}

\makeatother

% % lista de siglas

% % \sigla[entrada na lista de siglas]{sigla}:
% % Escreve a sigla no texto e uma entrada na Lista de Siglas.
% % Se o parâmetro opcional á omitido, usa-se o parâmetro obrigatório.
% \newcommand{\sigla}{\@ifstar{\siglaStar}{\siglaNotStar}}	
% \newcommand{\siglaNotStar}[2][]{%
% 	\settowidth{\siglawidth}{#2}\ignorespaces
% 	\ifthenelse{\lengthtest{\siglawidth > \siglamaxwidth}}% Se a nova sigla é maior,
% 		{\settowidth{\siglamaxwidth}{#2}}% seta o valor da maior com o tamanho da atual.
% 		{}\ignorespaces
% \nomenclature{#2}{#1}%
% ({#2})}

% \newcommand{\siglaStar}[2][]{%
% 	\settowidth{\siglawidth}{#2}\ignorespaces
% 	\ifthenelse{\lengthtest{\siglawidth > \siglamaxwidth}}% Se a nova sigla é maior,
% 		{\settowidth{\siglamaxwidth}{#2}}% seta o valor da maior com o tamanho da atual.
% 		{}\ignorespaces
% \nomenclature{#2}{#1}%
% {#2}}

% \newcommand{\fazlistasiglas}[1][Lista de Siglas]{% Este comando redefine o codigo relevante do nomencl.sty
% \def\thenomenclature{%
%    \if@openright\cleardoublepage\else\clearpage\fi%
%    \pretextualchapter{\nomname}
%     \if@intoc\addcontentsline{toc}{chapter}{\nomname}\fi%
%   \nompreamble
%   \list{}{%
%     \labelwidth\nom@tempdim
%     \leftmargin\labelwidth
%     \advance\leftmargin\labelsep
%     \itemsep\nomitemsep
%     \let\makelabel\nomlabel}}
% \def\endthenomenclature{%
%   \endlist
%   \nompostamble}%
% \makenomenclature%
% \renewcommand{\nomname}{#1}
% \renewcommand{\nomentryend}{.}%
% \setlength{\nomitemsep}{-\parsep}% Tirando espaço extre entre as entradas na lista.
% }

% % \listadesiglas: comando que imprime a lista de siglas
% \newcommand{\listadesiglas}{
% 		 % Abrindo arquivo para leitura e verificando se ele existe:
% 		 \newread\instream
% 		 \immediate\openin\instream=\jobname.tmp
% 		 \ifeof\instream 
% 		 	\message{\jobname.tmp nao existe ainda. Rode o latex novamente.} % Na primeira vez.
%        \else 
%          \immediate\read\instream to \auxcommand % O primeiro comando é o da lista de simbolos.
%        	\immediate\read\instream to \auxcommand % O comando no arquivo temporario é salvo em \auxcommand.
%        	\immediate\closein\instream % Fechando o arquivo.
%        	\auxcommand % Executando o comando lido.
%        \fi
% %		 \addtolength{\siglamaxwidth}{1ex}
% \printnomenclature[\the\siglamaxwidth]}
