%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plain Cover Letter
% LaTeX Template
% Version 1.0 (28/5/13)
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% Original author:
% Rensselaer Polytechnic Institute
% http://www.rpi.edu/dept/arc/training/latex/resumes/
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%  PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\documentclass[11pt]{letter} % Default font size of the document, change to 10pt to fit more text

\usepackage{newcent} % Default font is the New Century Schoolbook PostScript font
%\usepackage{helvet} % Uncomment this (while commenting the above line) to use the Helvetica font

% Margins
\topmargin=-1in % Moves the top of the document 1 inch above the default
\textheight=8.5in % Total height of the text on the page before text goes on to the next page, this can be increased in a longer letter
\oddsidemargin=-10pt % Position of the left margin, can be negative or positive if you want more or less room
\textwidth=6.5in % Total width of the text, increase this if the left margin was decreased and vice-versa

\let\raggedleft\raggedright % Pushes the date (at the top) to the left, comment this line to have the date on the right

\begin{document}

%----------------------------------------------------------------------------------------
%  ADDRESSEE SECTION
%----------------------------------------------------------------------------------------

\begin{letter}{\\
Astranis Space Technologies Corp.\\
420 Bryant Street\\
San Francisco, CA}

%----------------------------------------------------------------------------------------
%  YOUR NAME & ADDRESS SECTION
%----------------------------------------------------------------------------------------

\begin{center}
\large\bf John McAvoy \\ % Your name
%\vspace{20pt} \hrule height 1pt % If you would like a horizontal line separating the name from the address, uncomment the line to the left of this text
208 Abbey Lane \\ Logan Township, NJ 80805 \\ (856) 241-0661 % Your address and phone number
\end{center}
\vfill

\signature{John McAvoy} % Your name for the signature at the bottom

%----------------------------------------------------------------------------------------
%  LETTER CONTENT SECTION
%----------------------------------------------------------------------------------------

\opening{Dear Sir or Madam,}
\newcommand{\company}{Astranis}

%PARAGRAPH ONE: State the reason for the letter, name the position or type of work you are applying for and identify the source from which you learned of the opening (i.e. career development center, newspaper, employment service, personal contact).

I am applying for this full-time software engineering position with Astranis. I
found this job listing on the company's LinkedIn page.

%PARAGRAPH TWO: Indicate why you are interested in the position, the company, its products, services - above all, stress what you can do for the employer. If you are a recent graduate, explain how your academic background makes you a qualified candidate for the position. If you have practical work experience, point out specific achievements or unique qualifications. Try not to repeat the same information the reader will find in the resume. Refer the reader to the enclosed resume or application which summarizes your qualifications, training, and experiences. The purpose of this section is to strengthen your resume by providing details which bring your experiences to life.
I want to work at {\company} because this company's values
align with my own. I believe that {\company}' mission to improve world-wide internet
access is a great cause and I would like to be a part of it. I also believe
that this company's approach to making lost-cost, rapidly manufacturable
satellites is a very promising endeavour and will continue to be successful
at achieving its goal to produce affordable, modern satellites for the world.

Based on this job description and requirements, I believe that I am a perfect
fit for this position. I am a software and hardware generalist. I recently
graduated with my B.S. in Electrical and Computer Engineering from Rowan
University. During my time at Rowan, I've had extensive experience with
full-stack web development, Linux server administration, embedded programming,
and PCB design and fabrication. I've developed these skills in not only my courses,
but also in doing extra-curricular projects in my professional societies, my internships, and my job working
as a paid consultant on the Rowan Apprentice Engineering Team (A-Team). The
A-Team is a mentorship program and company started by the ECE and ME technologists, which hires a
select team of 100 students as consultants to extend the skills we learn in
the classroom to design and build products for the university, researchers, and
clients outside of the university.
During my time working on the A-Team, I was given special access to the university's
mechanical projects lab, PCB assembly center, ECE resource center, as well as
advanced training on all of the equipment including the ECE instrumentation.
I have a deep passion for learning and sharing skills with a team and I believe that the resources at
{\company} will give me the opportunity to apply my expertise and continue to learn
new skills.

%PARAGRAPH THREE: Request a personal interview and indicate your flexibility as to the time and place. Repeat your phone number in the letter and offer assistance to help in a speedy response. For example, state that you will be in the city where the company is located on a certain date and would like to set up an interview. Alternatively, state that you will call on a certain date to set up an interview. End the letter by thanking the employer for taking time to consider your credentials.
I am currently living in New Jersey and looking to relocate for this position. I
am available for phone and video interviews. You can reach me at my email,
j-mcavoy@protonmail.com, or by phone at +18563572550. I would like to thank you
very much for taking the time to consider my application and I hope you remain safe
and well during this pandemic.

\closing{Sincerely,}


\encl{Curriculum vitae, employment form} % List your enclosed documents here, comment this out to get rid of the "encl:"

%----------------------------------------------------------------------------------------

\end{letter}

\end{document}