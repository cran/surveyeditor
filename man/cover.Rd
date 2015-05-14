\name{cover}
\alias{cover}
\title{Cover page}
\description{
Front and back cover page of the survey.
}
\usage{
cover(type = c("front", "back"), content, col, size, loc, time = NULL)
}

\arguments{
  \item{type}{
To indicate if the cover is a front of a back cover page. If back page, \kbd{time} must be set. See Details for other differences.}
  \item{content}{
Texts to be displayed in the slide. It can be a vector \kbd{c( )} containing multiple items.}
  \item{col}{
The colour of \kbd{content} hence its length must be the same as that of \kbd{content}.}
  \item{size}{
The font size of \kbd{content} hence its length must be the same as that of \kbd{content}.}
  \item{loc}{
The vertical location of \kbd{content}. Must be a number within the interval [0,100]. Its length must be the same as that of \kbd{content}.}
  \item{time}{
The time (in seconds) that the slide is displayed for. Works only \kbd{type="back"}. See Details.}
}
\details{
If it is a front cover page (i.e. \kbd{type="front"}) a green button is shown in the bottom of the slide to allow proceeding to the next slide.
The reason that \kbd{time} only works for \kbd{type="back"} is that the back cover page closes in a few seconds so the entire survey program starts again for the next subject if the command \kbd{repeat{}} is used. For example, \cr
\kbd{repeat\{cover(type="front",...)} \cr
        \kbd{identity(...)} \cr
        \kbd{slide(...)} \cr
        \kbd{slide(...)} \cr
        \kbd{...} \cr
        \kbd{read.write(...)} \cr
        \kbd{cover(type="back",time=10,...)} \cr
        \kbd{\}} \cr
}
\value{
A slide is displayed on the graphic device and no output in the console.}

\author{
Char Leung}
\seealso{
\code{\link{identity}},\code{\link{read.write}},\code{\link{slide}}
}
\examples{
\dontrun{cover(type="front",content=c("Inflation expectation experiment","Please wait
for further instructions"),col=c("blue","black"),size=c(2.5,1.5),loc=c(60,30))}
\dontrun{cover(type="back",content="This is the end of the survey\nThank you for your 
participation",col="black",size=2,loc=70,time=3)}
}

\section{Returning graphics of Examples}{
\figure{cover01.jpeg} \cr
\figure{cover02.jpeg} \cr
}