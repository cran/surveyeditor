\name{read.write}
\alias{read.write}
\title{
Dynamic survey data storage function
}
\description{
This function saves matrix-type responses to a nominated file.
If the nominated file already exists and the responses of previous subjects are in the file, current matrix-type bundled responses will be incorporated into this file.\cr
\bold{Note:} one should bundle multiple responses (i.e. responses from multiple \kbd{slide}) by using the \kbd{rbind} function.
}
\usage{
read.write(rbind.result, link)
}
\arguments{
  \item{rbind.result}{
Bundled responses formed by using \kbd{rbind} to bind the responses from \kbd{slide}. As seen in \kbd{slide}, \kbd{slide} returns a 5-column matrix with column names \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response}. Therefore, responses from multiple \kbd{slide} must be compiled with the use of \kbd{rbind}.
}
  \item{link}{
The location of the file that \kbd{rbind.result} will be incorporated into.
}
}
\details{
There are three possible the outcomes in seeking the file, \kbd{link}. \cr
(1) The file \kbd{link} exists and it has column names \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response} (the universal format of the responses returned by \kbd{slide}). In this case, \kbd{rbind.result} is incorporated into \kbd{link}. \cr
(2) The file \kbd{link} does not exist. In this case, the file \kbd{link} is generated with the column names \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response} and \kbd{rbind.result} is incorporated into \kbd{link}. \cr
(3) The file \kbd{link} exists but this not have column names \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response}. This is usually the case where the file name in \kbd{link} is already in use. Either the file name of the existing file in the directory \kbd{link} or the \kbd{link} in this function should be altered to avoid confusion.
}
\value{
Nothing is shown in the R console or the graphic device. Yet the file \kbd{link} will be altered (as \kbd{rbind.result} is incorporated) or will be created.
}

\author{
Char Leung
}
\seealso{
\code{\link{slide}}
}
\examples{
\dontrun{link<-"R:/test.txt"}
\dontrun{id<-identity("auto",link=link)}
\dontrun{Q1<-slide(id=id,type=7,title="Question 1",content="Would you take the milk if 
it costs $",h=0,v=80,size=2,col="black",initial=3,increment=1,order="descending"
,box.level=70)}
\dontrun{Q2<-slide(id=id,type=5,title="Question 2",content=c("The market price is $"
,"(0 refers to 'Strongly disagree' ... 5 refers to 'Strongly agree')"),h=c(0,0)
,v=c(80,70),size=c(2,1.5),col=c("black","orange"),cond=seq(10,12,0.5),scale=seq(0,5,0.5)
,box.level=50)}
\dontrun{read.write(rbind(Q1,Q2),link=link) #rbind is used to form a bundled 
matrix-type responses}

}


