\name{identity}
\alias{identity}
\title{
Subject id configuration}
\description{
To configure the identity of the subject assuming that there is more than one subject in the survey. 
This is done by two methods: (1) manual configuration generates a slide to ask the subject for an id. 
The question asking the subject must be edited and (2) automatic configuration requires the editor to insert a file location where a file is read and the previous id is sought. 
Then current id is the sought previous id "+1". This means that the resulted id is a set of natural number. This option is best used when the real identity of the subject is not to be disclosed. 
}
\usage{
identity(type = c("manual", "auto"), ask = NULL, link = NULL)
}

\arguments{
  \item{type}{
Either \kbd{"manual"} or \kbd{"auto"} to indicate manual or automatic configuration.
}
  \item{ask}{
The question asking for the id to be displayed in the slide if \kbd{type="manual"}. A string thus must be quoted. The question will be allocated at the top left hand corner. Font size and colour are fixed at 2 and "black".
}
  \item{link}{
The location of the file that will be sought for the previous id if \kbd{type="auto"}. A string thus must be quoted.
}
}
\details{
If \kbd{type="auto"}, there are three possible the outcomes in seeking the file \kbd{link}. \cr
(1) The file \kbd{link} exists and it has column names \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response} 
(this is the universal format of the responses returned by \kbd{slide}). In this case, the previous id is successfully sought and the automatically generated id is the previous id "+1". \cr
(2) The file \kbd{link} does not exist. In this case, the file \kbd{link} is generated with the column names \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response}. 
The automatically generated id is made to \kbd{1}. \cr
(3) The file \kbd{link} exists but this not have column names \kbd{link} is generated with the column names \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response}. 
This is usually the case where the file name is already in use. Either the file name of the existing file or \kbd{link} should be altered. \cr
}
\value{
The id is returned on the R console regardless of \kbd{type}. If \kbd{type="manual"}, a slide is shown to ask the subject to insert id. 
\kbd{ask} is displayed at the top left hand corner and a virtual keyboard is placed in centre of the slide for the subject to enter the id.
}

\author{
Char Leung
}

\seealso{
\code{\link{slide}}
}
\examples{
\dontrun{identity(type="manual",ask="Please insert your student ID by clicking on the below 
virtual keyboard")}
\dontrun{identity(type="auto",link="R:/survey.txt")}
}

\section{Returning graphics of examples}{
\figure{identity01.jpeg}
}
