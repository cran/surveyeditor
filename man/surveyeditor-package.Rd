\name{surveyeditor-package}
\alias{surveyeditor-package}
\alias{surveyeditor}
\docType{package}
\title{
\packageTitle{surveyeditor}
}
\description{
\packageDescription{surveyeditor}
}
\details{
The DESCRIPTION file:
\packageDESCRIPTION{surveyeditor}
\packageIndices{surveyeditor}
This package aims to serve as an editor for generating slides for surveys or experiments.
 The resulted slides allow the subject to respond with the use of the mouse (usual keyboard input is 
 replaced with clicking on a virtual keyboard on the slide). Subjects' responses are saved to the user-
 specified location in the form of R-readable text file. To allow flexibility, each function in 
 this package generates a particular type of slides thus general R function writing skills are 
 required to compile these edited slides.
\cr
Main features include: \cr
\itemize{
\item Edit texts in each slide as well as their font size and colour.
\item Insert tables and plots (point, line and histogram).
\item Allow time-restricted display (only for slides not requiring responses).
\item Different types of responding such as numerical input, multiple choices (can have more than one selections), Likert scale type questions, number line drawing type question (eg, used in Kanayet & Opfer 2009 and Siegler & Opfer 2003) and Gabor-Granger method (Gabor & Granger 1966, 1979).
\item Automatically save responses to a file to a user-specified location in the form of R-readable text file.
}

There are in general 4 functions in this package: \cr
\kbd{cover} : serves as the front or back cover page of the survey. For example, you may wish to have a greeting slide before the survey begins. \cr
\kbd{identity} : serves as gathering the id of the subject. Automatic id generation is also allowed. \cr
\kbd{read.write} : serves as saving the responses to a nominated file. \cr
\kbd{slide} : generates slides to be displayed to the subjects as well as allowing the subjects to respond to designated questions. This is the main function in this package. \cr
\cr
The editor of the survey should write a function (a compiler) to compile different functions into a meaningful survey. A recommended format is shown below, \cr
\code{compiler<-function()\{} \cr
\code{          cover} \cr
\code{          identity} \cr
\code{          slide} \cr
\code{          slide} \cr
\code{          ...} \cr
\code{          read.write} \cr
\code{          cover\}} \cr
The first \kbd{cover} serves as the front page then the identity of the subject is configured in \kbd{identity}. \kbd{slide} is the main part of the survey that display information and  allow the subject to respond. Responses are then saved to the nominated file through the \kbd{read.write} function. The survey ends in the second \kbd{cover} informing the subject the completion. \cr
More specifically, the below is an example, \cr
\kbd{sample.survey<-function()\{} \cr
\kbd{link<-"C:"} \cr
\kbd{repeat \{ } \cr
\kbd{cover(type="front") } \cr
\kbd{id<-identity(link=link, ...) } \cr
\kbd{Q1<-slide(id=id, ...) } \cr
\kbd{Q2<-slide(id=id, ...) } \cr
\kbd{...} \cr
\kbd{read.write(rbind(Q1,Q2,...),link=link) } \cr
\kbd{cover(type="back") } \cr
\kbd{ \} \} } \cr
The \kbd{repeat} is used to let the next subject take the survey and the response will be incorporated into the user-specified location. \cr




\bold{Notes: Here is some recommendations for the best performance.} \cr
\itemize{
  \item \bold{The graphic device should be adjusted to full-screen size or some texts may appear outside the box.}
  \item \bold{It is a good idea to inform the subjects (preferably by stating in a slide titled "Instructions") that all responses of the previous slides cannot be altered and that clicking the green button in any slide will proceed to the next slide allowing no further alteration to the response. In fact this is the reason only certain buttons are green.}
}
}
\author{
\packageAuthor{surveyeditor} \cr
Maintainer: \packageMaintainer{surveyeditor}
}
\references{
Gabor, G & Granger, CWJ (1966) "Price as an indicator of Quality: Report on an Enquiry", \emph{Economica}, \bold{33}(129), pp.43-70. \cr
Gabor, G & Granger, CWJ (1979) "The Attitude of the Consumer to Prices", \emph{Management Decision}, \bold{17}(8), pp.619-634. \cr
Kanayet, F & Opfer, J (2009) "Why Children's Number-line Estimates Follow Fechner's Law", \emph{Cognitive Science Conference Proceedings 2009}, pp.1936-41. \cr
Siegler, RS & Opfer, JE (2003) "The Development of Numerical Estimation: Evidence for Multiple Representations of Numerical Quantity", \emph{Psychological Science}, \bold{14}(3), May 2003, pp.237-243. \cr
}
