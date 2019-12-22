%%%%%
% Author : Didik Hadumi Setiaji
% Dibuat : 12 Oktober 2019
% Dibuat berdasarkan :
% PEDOMAN PELAKSANAAN TUGAS AKHIR FAKULTAS TEKNIK UNIVERSITAS MATARAM
% Pada bagian :
% Format Penulisan Tugas Akhir
%%%%%
% Membuat keterangan dan nama kelas

\ProvidesClass{skripsi}[2019/10/12 Class Skripsi FT UNRAM]
\LoadClass[a4paper, 12pt, indonesia, oneside]{book}

\newcommand{\headlinecolor}{\normalcolor}
% Semua package yang dibutuhkan untuk menggunakan class ini
% Agar tidak perlu di include lagi
\RequirePackage{xcolor} % Untuk mengubah warna
\RequirePackage{titlesec} % Untuk mengubah ukuran font judul
\RequirePackage{subfiles} % Agar bisa menggunakan subfiles
\RequirePackage{caption} % Untuk memberikan caption pada tabel dan grafik
\RequirePackage{subcaption} % Untuk memberikan subcaption
% Pakai font times new roman
\RequirePackage{newtxtext,newtxmath}
\RequirePackage{fontenc}
% Menyesuaikan format
\captionsetup{compatibility=false}
\RequirePackage{graphicx} % Agar bisa include grafik
\RequirePackage{tikz-uml} % Agar bisa buat diagram pakai tikz uml
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel} % Untuk menyesuaikan format bibtex
% Margin default menyesuaikan ukuran yang dipersyaratkan kampus
\RequirePackage[a4paper,left=4cm,right=3cm,top=3cm,bottom=3cm]{geometry}
\RequirePackage{natbib} % Untuk mengedit bibliografi (daftar)
\bibliographystyle{agsm}
\RequirePackage{tikz}
\RequirePackage{setspace} % Untuk mengatur ukuran spacing
\RequirePackage{blindtext} % Untuk membuat dummy text (mirip lorem ipsum)
\RequirePackage{chngcntr} % Agar counter bisa di reset

% Pengaturan figure
\RequirePackage{float} % Agar grafik dan tabel bisa di antara text
% Pengaturan tabel
\RequirePackage{multicol, multirow, tabularx} % Buat nested table
\RequirePackage{booktabs}
\RequirePackage{enumitem}
\RequirePackage{numprint}
\RequirePackage{fancyhdr}

% Pengaturan matematis
\RequirePackage{siunitx}

% Buat cover depan secara otomatis
% Buat macros untuk definisi variable yang dibutuhkan
\newcommand{\konteks}[1]{\def\@konteks{#1}} % Konteks judul
\newcommand{\nimauthor}[1]{\def\@nimauthor{#1}} % Nim Author
\newcommand{\bulan}[1]{\def\@bulan{#1}} % Bulan dibuat
\newcommand{\tahun}[1]{\def\@tahun{#1}} % Tahun dibuat

% Paragraf terbawah

\newcommand{\buatcover}{%
	\pagestyle{empty} % Hilangin penomoran
	\begin{center}
		\fontsize{12}{60}\textbf{\MakeUppercase{\@konteks}}\\
		\vspace{1\baselineskip}\relax
		\fontsize{14}{60}\textbf{\MakeUppercase{\@title}}\\
		\vspace{3\baselineskip}\relax
		\includegraphics[width=150pt]{logo}\\
		\vspace{2\baselineskip}\relax
		\fontsize{12}{60}
		Oleh: \\
		\fontsize{12}{60}\textbf{\@author}\\
		\fontsize{12}{60}\textbf{\@nimauthor}\\
		        
		\vfill
		\fontsize{12}{60}\textbf{JURUSAN TEKNIK ELEKTRO}\\
		\vspace{0.5\baselineskip}\relax
		\fontsize{12}{60}\textbf{FAKULTAS TEKNIK}\\
		\fontsize{12}{60}\textbf{UNIVERSITAS MATARAM}\\
		\fontsize{12}{60}\textbf{\@bulan \hspace{1pt} \@tahun}
		\clearpage
	\end{center}
}

\newcommand{\judulnya} {
	\@title
}

% Agar daftar isi dan daftar lainnya bisa di klik
\RequirePackage{hyperref}
\hypersetup{
	colorlinks,
	citecolor=black,
	filecolor=black,
	linkcolor=black,
	urlcolor=black
}
% Agar paragraf pertama di Indent
\RequirePackage{indentfirst}

% Membuat format untuk tiap BAB
\addto\captionsenglish{\renewcommand{\chaptername}{BAB}}
\renewcommand{\thechapter}{\arabic{chapter}}

% Mengatur Font jadi Times New Roman
\renewcommand{\familydefault}{\rmdefault}

% Mengatur format chapter
\renewcommand \thesection{\arabic{chapter}.\arabic{section}}
\renewcommand \thesubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}}
  
\titleformat{\chapter}[display]
{\normalfont\large\bfseries\centering}
{\centering\chaptertitlename\ \thechapter}{12pt}{\normalfont\bfseries\MakeUppercase}
   
\titlespacing*{\chapter}
{0pt}{-30pt}{10pt}

% Definisikan command untuk grafik dua
% \buatduagrafik{path1}{path2}{Nama 1}{Nama 2}{NamaFig}{label}
\newcommand{\buatduagrafik}[5] {
	\begin{figure}[H]
		\centering
		\begin{subfigure}{.4\textwidth}
			\centering
			\includegraphics[width=\linewidth]{#1}
			\caption{#3}
		\end{subfigure}
		\begin{subfigure}{.4\textwidth}
			\centering
			\includegraphics[width=\linewidth]{#2}
			\caption{#4}
		\end{subfigure}
		\caption{#5}
		\label{figure}
	\end{figure}
}

% Definisikan command untuk grafik 5
% \buatlimagrafik
% {path1}{Nama1}
% {path2}{Nama2}
% {path3}{Nama3}
% {path4}{Nama4}
% {path5}{Nama5}
% {NamaFig}

% Definisikan command untuk grafik satu
% \buatgrafik{path}{nama}{ukuran}
\newcommand{\buatgrafik}[3]{
        \centering
		\includegraphics[width=#3\linewidth]{#1}
		\caption{#2}
}

\newcommand{\buatsubgrafik}[4] {
	\begin{subfigure}{#3\textwidth}
		\centering
		\includegraphics[width=\linewidth]{#1}
		\caption{#2}
		\label{#4}
	\end{subfigure}
}



% Mengatur agar section dibaca sampai subsubsub atau
% Menjadi bentukan 1.2.1.1
\setcounter{secnumdepth}{5}

% Ubah format header section dll disamakan ukurannya dengan text
\titleformat*{\section}{\fontsize{12}{0}\bfseries}
\titleformat*{\subsection}{\fontsize{12}{0}\bfseries}
\titleformat*{\subsubsection}{\fontsize{12}{0}\bfseries}
\titleformat*{\paragraph}{\fontsize{12}{0}\bfseries}
\titleformat*{\subparagraph}{\fontsize{12}{0}\bfseries}

% Mengatur ukuran judul table of content
\RequirePackage{public/packages/tocloft} % buat ngedit daftar gambar dan tabel
\renewcommand\cfttoctitlefont{\bfseries}
\renewcommand\cftloftitlefont{\bfseries}
\renewcommand\cftlottitlefont{\bfseries}

% selesai
\addto\captionsenglish{\renewcommand\listfigurename{\hfill DAFTAR GAMBAR \hfill}}
\addto\captionsenglish{\renewcommand\listtablename{\hfill DAFTAR TABEL \hfill}}
\addto\captionsenglish{\renewcommand\contentsname{\hfill\bfseries DAFTAR ISI\hfill}}
\addto\captionsenglish{\renewcommand\cftaftertoctitle{\hfill}}
\addto\captionsenglish{\def\bibname{DAFTAR PUSTAKA}}
\renewcommand\cftfigpresnum{Gambar\ }
\renewcommand\cfttabpresnum{Tabel\ }
% Mengubah agar prefix dari figure dan table berubah menjadi pakai bahasa indonesia
\addto\captionsenglish{\renewcommand{\figurename}{Gambar}}
\addto\captionsenglish{\renewcommand{\tablename}{Tabel}}
\newlength{\mylenf}
\settowidth{\mylenf}{\cftfigpresnum}
\setlength{\cftfignumwidth}{\dimexpr\mylenf+2.5em}
\setlength{\cfttabnumwidth}{\dimexpr\mylenf+2.5em}
% Kurangi spacing di toc
\setlength{\cftbeforetoctitleskip}{-3em}
\setlength{\cftaftertoctitleskip}{-1ex}
\setlength{\cftbeforeloftitleskip}{-3em}
\setlength{\cftafterloftitleskip}{-3ex}
\setlength{\cftbeforelottitleskip}{-3em}
\setlength{\cftafterlottitleskip}{-3ex}
