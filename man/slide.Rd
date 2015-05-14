\name{slide}
\alias{slide}

\title{
Survey/questionnaire slides
}
\description{
This function generates slides for displaying information (including questions to be asked) and for the subjects to insert answers. 7 types of slides are available (the argument \kbd{type} specifies this; see Arguments below). \cr
\cr
For \kbd{type=1} or \kbd{2}, the slide is solely for display purpose (e.g. showing the instructions of the survey or background information) and responses from the subject are not needed. \cr
\cr
For other values of \kbd{type}, a 5-column matrix is returned. The column names are \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response}. Also see Values below.
The number of rows is determined by the number of responses gathered by the slide. For example, for \kbd{type=2} only one reponse is allowed to be given by the subject therefore there will be a 1x5 matrix returned. \cr
\cr
The below table (in a few partitions) shows the number of allowed responses for different values of \kbd{type}, \cr
\tabular{ccc}{
\kbd{type=} \tab Slide type \tab Allowed responses \cr
----- \tab -------------------------------------------- \tab ------------------------------------------------------ \cr
\kbd{1} \tab Time-restricted display \tab 0 \cr
\kbd{2} \tab Time-unrestricted display \tab 0 \cr
\kbd{3} \tab Numerical response display \tab 1 \cr
\kbd{4} \tab Multiple choice response display \tab Freely set and up to the number of \cr
        \tab                                  \tab available choices (\kbd{n.select})  \cr
\kbd{5} \tab Sequential Likert-scale response display \tab The number of conditions   \cr
        \tab                                  \tab   given (the length of \kbd{cond}) \cr
\kbd{6} \tab "Number line marking" response display \tab Freely set (\kbd{n.select}) \cr
\kbd{7} \tab Gabor-Granger method display \tab 1 \cr
}

}
\usage{
slide(id, type, title, content, h, v, size, col, time = NULL, interval = c(-Inf, Inf),
isinteger = F, choices = NULL, layout = NULL, n.select = NULL, box.level = NULL,   
cond = NULL, scale = NULL, grid = NULL, range = NULL, unit = NULL, initial = NULL,  
increment = NULL, order = c("ascending", "descending"), Extra = NULL, Line.draw = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
Which arguments are required depend on the slide type (the value of \kbd{type}). The below table gives a summary as well as the input type of each argument. \cr
\tabular{ccccccc}{
\kbd{type=} \tab \kbd{id}      \tab \kbd{title}  \tab \kbd{content} \tab \kbd{h}     \tab \kbd{v}     \tab \kbd{size}  \cr 
------       \tab  ------------- \tab ------------- \tab -------------  \tab ------------ \tab ------------ \tab ------------ \cr 
\kbd{1}     \tab Required       \tab Required      \tab Optional       \tab Optional     \tab Optional     \tab Optional     \cr 
\kbd{2}     \tab Required       \tab Required      \tab Optional       \tab Optional     \tab Optional     \tab Optional     \cr 
\kbd{3}     \tab Required       \tab Required      \tab Optional       \tab Optional     \tab Optional     \tab Optional     \cr 
\kbd{4}     \tab Required       \tab Required      \tab Optional       \tab Optional     \tab Optional     \tab Optional     \cr 
\kbd{5}     \tab Required       \tab Required      \tab Optional       \tab Optional     \tab Optional     \tab Optional     \cr 
\kbd{6}     \tab Required       \tab Required      \tab Optional       \tab Optional     \tab Optional     \tab Optional     \cr 
\kbd{7}     \tab Required       \tab Required      \tab Optional       \tab Optional     \tab Optional     \tab Optional     \cr 
------       \tab  ------------- \tab ------------- \tab -------------  \tab ------------ \tab ------------ \tab ------------ \cr 
Input type:  \tab numeric(1)     \tab character(1)  \tab character()    \tab numeric()    \tab numeric()    \tab numeric()    \cr 
}

\tabular{cccccc}{
\kbd{type=} \tab \kbd{col}    \tab \kbd{time}   \tab  \kbd{interval} \tab  \kbd{isinteger} \tab  \kbd{choices}          \cr
------       \tab ------------- \tab ------------- \tab  -------------   \tab  ----------       \tab  -------------           \cr
\kbd{1}     \tab Optional      \tab Required      \tab                  \tab                   \tab                          \cr
\kbd{2}     \tab Optional      \tab               \tab                  \tab                   \tab                          \cr
\kbd{3}     \tab Optional      \tab               \tab Optional         \tab Optional          \tab                          \cr
\kbd{4}     \tab Optional      \tab               \tab                  \tab                   \tab Required                 \cr
\kbd{5}     \tab Optional      \tab               \tab                  \tab                   \tab                          \cr
\kbd{6}     \tab Optional      \tab               \tab                  \tab                   \tab                          \cr
\kbd{7}     \tab Optional      \tab               \tab                  \tab                   \tab                          \cr
------       \tab ------------- \tab ------------- \tab  -------------   \tab  ----------       \tab  -------------           \cr
Input type:  \tab character()   \tab numeric(1)    \tab numeric(2)       \tab logical(1)        \tab character()              \cr
             \tab               \tab               \tab                  \tab                   \tab or numeric( )            \cr
}

\tabular{ccccc}{
\kbd{type=} \tab  \kbd{layout} \tab  \kbd{n.select} \tab  \kbd{box.level}                         \tab  \kbd{cond}             \cr
------       \tab  ------------- \tab  -------------   \tab  -------------                            \tab  -------------           \cr
\kbd{1}     \tab                \tab                  \tab                                           \tab                          \cr
\kbd{2}     \tab                \tab                  \tab                                           \tab                          \cr
\kbd{3}     \tab                \tab                  \tab Required                                  \tab                          \cr
\kbd{4}     \tab Required       \tab Required         \tab Required                                  \tab                          \cr
\kbd{5}     \tab                \tab                  \tab Required                                  \tab Required                 \cr
\kbd{6}     \tab                \tab Required         \tab Required                                  \tab                          \cr
\kbd{7}     \tab                \tab                  \tab Required                                  \tab                          \cr
------       \tab  ------------- \tab  -------------   \tab  -------------                            \tab  -------------           \cr
Input type:  \tab numeric(2)     \tab numeric(1)       \tab numeric(1)                                \tab numeric()                \cr
             \tab                \tab                  \tab or numeric(2)                             \tab or character()           \cr
             \tab                \tab                  \tab if \kbd{type=3}                          \tab                          \cr
}

\tabular{ccccc}{
\kbd{type=} \tab  \kbd{scale}            \tab  \kbd{grid}   \tab  \kbd{range}  \tab  \kbd{unit}               \cr
------       \tab  -------------           \tab  ------------- \tab  ------------- \tab  -------------             \cr
\kbd{1}     \tab                          \tab                \tab                \tab                            \cr
\kbd{2}     \tab                          \tab                \tab                \tab                            \cr
\kbd{3}     \tab                          \tab                \tab                \tab                            \cr
\kbd{4}     \tab                          \tab                \tab                \tab                            \cr
\kbd{5}     \tab Required                 \tab                \tab                \tab                            \cr
\kbd{6}     \tab                          \tab Required       \tab Required       \tab Optional                   \cr
\kbd{7}     \tab                          \tab                \tab                \tab                            \cr
------       \tab  -------------           \tab  ------------- \tab  ------------- \tab  -------------             \cr
Input type:  \tab numeric()                \tab numeric(1)     \tab numeric(3)     \tab character(1)               \cr
             \tab or character()           \tab                \tab                \tab or numeric(1)              \cr
}


\tabular{cccc}{
\kbd{type=} \tab  \kbd{initial} \tab  \kbd{increment} \tab  \kbd{order}                             \cr
------       \tab  -------------  \tab  -------------    \tab  -------------                            \cr
\kbd{1}     \tab                 \tab                   \tab                                           \cr
\kbd{2}     \tab                 \tab                   \tab                                           \cr
\kbd{3}     \tab                 \tab                   \tab                                           \cr
\kbd{4}     \tab                 \tab                   \tab                                           \cr
\kbd{5}     \tab                 \tab                   \tab                                           \cr
\kbd{6}     \tab                 \tab                   \tab                                           \cr
\kbd{7}     \tab Required        \tab Required          \tab Required                                  \cr
------       \tab  -------------  \tab  -------------    \tab  -------------                            \cr
Input type:  \tab numeric(1)      \tab numeric(1)        \tab \kbd{"ascending"}                        \cr
             \tab                 \tab                   \tab or \kbd{"descending"}                    \cr
}

\tabular{ccc}{
\kbd{type=} \tab  \kbd{Extra}                  \tab  \kbd{Line.draw}                   \cr
------       \tab  -------------                 \tab  -------------                      \cr
\kbd{1}     \tab Optional                       \tab Optional                            \cr
\kbd{2}     \tab Optional                       \tab Optional                            \cr
\kbd{3}     \tab Optional                       \tab Optional                            \cr
\kbd{4}     \tab Optional                       \tab Optional                            \cr
\kbd{5}     \tab Optional                       \tab Optional                            \cr
\kbd{6}     \tab Optional                       \tab Optional                            \cr
\kbd{7}     \tab Optional                       \tab Optional                            \cr
------       \tab  -------------                 \tab  -------------                      \cr
Input type:  \tab \kbd{list(list(),list(),...)} \tab character()                         \cr
             \tab                                \tab commands to be executed             \cr
}


  \item{id}{
\emph{numeric(1)}; The id of the subject. It is part of the returning value of the function (\bold{ID}) for the purpose of identifying the subject. \cr
}
  \item{type}{
\emph{numeric(1), 1,2,...,7}; specifies the type of the slide. Details as below, \cr
  \enumerate{
     \item Time restricted display that does not allow the subject to enter any answer (that is, for display information only) and that information is displayed for a limited amount of time controlled by \kbd{time}.
     \item Time unrestricted display that does not allow the subject to enter any answer (like \kbd{type=1}) but the information is display until the subject click on the green button located in the bottom of the slide to proceed to the next slide.
     \item Numerical response display that allows the subject to give a numerical answer by clicking on the virtual keyboard. The location of the virtual keyboard is controlled by \kbd{box.level}.
     \item Multipe choice response display that allows that subject to choose one or more selections from the given ones. Choices are controlled by \kbd{choices} while the number of selection is controlled by \kbd{n.select}. Also see \kbd{layout}.
     \item Sequential Likert-scale response display that allows the subject to choose one of the Likert items. It is sequential in the sense that \kbd{cond} may contain multiple items where the similar questions are repeated asked but with different conditions (\kbd{cond}). \cr
           For example: "The price is 10", "The price is 20", "The price is 30" are asked. Here \kbd{cond=seq(10,30,10)}. The Likert items are controlled by \kbd{scale}.
     \item "Number line marking" response display allows the subject to give a perceptual numerical response (or multiple response) by clicking on the numberline (Kanayet & Opfer 2009, Siegler & Opfer 2003). The subject can only see a mark (or marks if multiple) on the number line, not the number it represents. \kbd{range} controls the length and the tick marks of the number line and \kbd{grid} controls the number of \cr
           minor lines drawn between any two tick marks.
     \item Gabor-Granger method (Gabor & Granger 1966, 1979) display that asks sequential questions in regarding to the acceptance of prices in an ascending or descending order. The order is controlled by \kbd{order}. \kbd{initial} controls the first value to be asked and subsequent value \cr
           will increase or decrease by \kbd{increment}. Subjects can choose either "Yes" or "No" and the procedure ceases when "No" is answered.
  }
}
  \item{title}{
\emph{character(1)}; the title to be displayed on the top of the slide. Should be made as short as possible since it will appear in one of the returning values \bold{Question.number}. In fact, it is recommended to use titles like "Question 1" and "Demopgrahics 1" etc.
}
  \item{content}{
\emph{character()}; texts to be displayed in the slide. It can be a vector \kbd{c( )} containing multiple items. Each item must be quoted. \bold{Note: for \kbd{type=5} or \kbd{7} the first component becomes the question that \kbd{cond} is attached to. \kbd{cond} is placed after \kbd{content}}. \cr
}
  \item{h}{
\emph{numeric(), [0,100]};the horizontal location of \kbd{content} hence its length must be the same as that of \kbd{content}. Must be in the interval [0,100].
}
  \item{v}{
\emph{numeric(), [0,100]};the vertical location of \kbd{content} hence its length must be the same as that of \kbd{content}. Must be in the interval [0,100].
}
  \item{size}{
\emph{numeric()}; the font size of \kbd{content} hence its length must be the same as that of \kbd{content}.
}
  \item{col}{
\emph{character()}; the colour of \kbd{content} hence its length must be the same as that of \kbd{content}.
}
  \item{time}{
\bold{(only applies to \kbd{type=1})}; \emph{numeric(1)} the amount of time (in seconds) that the slide is displayed.
}
  \item{interval}{
\bold{(only applies to \kbd{type=3})}; \emph{numeric(2)} the permitted interval the numerical response can fall within.
}
  \item{isinteger}{
\bold{(only applies to \kbd{type=3})}; \emph{logical(1)} \kbd{TRUE} if the numerical response is only allowed to be an integer.
}
  \item{choices}{
\bold{(only applies to \kbd{type=4})}; \emph{character()} or \emph{numeric()} the choices the subject can choose from.
}
  \item{layout}{
\bold{(only applies to \kbd{type=4})}; \emph{numeric(2)} the layout (number of rows and columns respectively) of the choices.
}
  \item{n.select}{
\bold{(only applies to \kbd{type=4,6})}; \emph{numeric(1)}  the number of choices can be selected if \kbd{type=4} or the number of selection can be made if \kbd{type=6}.
}
  \item{box.level}{
\bold{(only applies to \kbd{type=3,4,5,6,7})}; \emph{numeric(2), [0,100]} if \kbd{type=3} defines the vertical location of the top of the first box of the choices. \cr 
\emph{numeric(1), [0,100]} if \kbd{type=4,5,6,7} defines the horizontal and vertical location of the virtual keyboard. Must be between 0 & 100.
}
  \item{cond}{
\bold{(only applies to \kbd{type=5})}; \emph{character()} or \emph{numeric()} a vector of conditions asked in the sequential Likert-scale question. Example: if \kbd{content=c("The 
price is","Please choose one of the following")} \cr
and \kbd{cond=seq(5,15,5)} then three slides will display each of the followings: "The price is 5", "The price is 10" and "The price is 15" plus "Please choose one of the following" in each of these slides. \bold{Note: the first component of \kbd{content} becomes the question that \kbd{cond} is} \cr
\bold{attached to. \kbd{cond} is placed after \kbd{content}}.
}
  \item{scale}{
\bold{(only applies to \kbd{type=5})}; \emph{character()} or \emph{numeric()} a set of Likert items the subject can choose from.
}
  \item{grid}{
\bold{(only applies to \kbd{type=6})}; \emph{numeric(1)} the number of minor grids lines to be drawn in between any two tick marks in \kbd{range}.
}
  \item{range}{
\bold{(only applies to \kbd{type=6})}; \emph{numeric(3)} a set of numbers to be displayed as ticks on the number line. The maximum and the minimum become the two ends of the number line.
}
  \item{unit}{
\bold{(only applies to \kbd{type=6})}; \emph{character(1)} or \emph{numeric(1)} to be displayed as the unit (such as "$", "\%", etc.) of the figures on the number line. This is placed right underneath the number line.
}
  \item{initial}{
\bold{(only applies to \kbd{type=7})}; \emph{numeric(1)} the starting value serves as the condition attached to the first sequential question in Gabor-Granger method. Subsequent conditions will decrease (if \kbd{order="descending"}) or increase (if \kbd{order="ascending"}) with the increment of \kbd{increment}.
}
  \item{increment}{
\bold{(only applies to \kbd{type=7})}; \emph{numeric(1)} the amount that the condition increases or decreases by (see \kbd{initial} above).
}
  \item{order}{
\bold{(only applies to \kbd{type=7})}; \emph{\kbd{"ascending"} or \kbd{"descending"}} It defines increasing or decreasing conditions attached to the sequential question.
}
  \item{Extra}{
\bold{See Details below for usage and details} \cr
\emph{\kbd{list( list(), list() ,...)}} A list (with usage: \kbd{Extra=list()}) contains another sub-list or multiple sub-lists. Each sub-list refers to a table or a diagram to be displayed hence multiple tables or diagrams are allowed.
}
  \item{Line.draw}{
\bold{See Details below for usage and details} \cr
\emph{Any quoted R commands in the form of character( )} (example: \kbd{c("abline(v=0,} \cr
\kbd{col='red')","lines(seq(-10,20,0.01),seq(-10,20,0.01)*1.2+100,} \cr
\kbd{col='yellow')")}) These commands will be executed. The aim is to provide further adjustments to the slide. \bold{Note that single-quotes \kbd{' '} should be used to avoid the confusion with the double-quotes \kbd{" "}}.
}
}
\details{
\bold{Extra} \cr
This argument aims to create plots and tables in the slide hence \kbd{Extra} is one of the optional arguments in \kbd{slide}. The usage of this argument must follow the list containing sub-lists format: \kbd{slide(... ,Extra=list( list(), ... ), ...)}. \cr
For example, \kbd{Extra=list(list(...,type="p",...),list(type=...,"p",...)} \cr
\kbd{,list(type=...,"t",...))} refers to two point plots and a table to be created while \cr
\kbd{Extra=list(list(type="h2",...)} while refers to a relative-frequency histogram to be created. \cr
The "list containing sub-lists" format must always be used regardless of the number of plots and tables. \cr
What arguments are required in each sub-list depend on \kbd{type}. \cr
The below table (in a few partitions) gives a summary, \cr

\tabular{cccc}{
\kbd{type=}                                  \tab \kbd{loc}              \tab \kbd{sub-list[[1]]}             \tab \kbd{sub-list[[2]]}      \cr
------------------------------------------    \tab ---------------- \tab ------------------        \tab ------------------ \cr
\kbd{p} (Point plot)                         \tab Required         \tab Required                  \tab Required           \cr
\kbd{l} (Line plot)                          \tab Required         \tab Required                  \tab Required           \cr
\kbd{b} (Both point & line plot)             \tab Required         \tab Required                  \tab Required           \cr
\kbd{h1} (Histogram                          \tab Required         \tab Required                  \tab                    \cr
          with frequency)                     \tab                  \tab                           \tab                    \cr
\kbd{h2} (Histogram with                     \tab Required         \tab Required                  \tab                    \cr
          relative frequency)                 \tab                  \tab                           \tab                    \cr
\kbd{t} (Table)                              \tab Required         \tab                           \tab                    \cr
------------------------------------------    \tab ---------------- \tab ------------------        \tab ------------------ \cr
Input type:                                   \tab numeric(4)       \tab numeric()                 \tab numeric()          \cr
                                              \tab                  \tab or character()            \tab                    \cr
}

\tabular{cccc}{
\kbd{type=}                                  \tab \kbd{ticks}                                \tab \kbd{xlabl}               \tab \kbd{ylabl}               \cr
------------------------------------------    \tab -------------------                  \tab ------------------- \tab ------------------- \cr
\kbd{p} (Point plot)                         \tab Required                             \tab Optional            \tab Optional            \cr
\kbd{l} (Line plot)                          \tab Required                             \tab Optional            \tab Optional            \cr
\kbd{b} (Both point & line plot)             \tab Required                             \tab Optional            \tab Optional            \cr
\kbd{h1} (Histogram                          \tab Required                             \tab Optional            \tab Optional            \cr
          with frequency)                     \tab                                      \tab                     \tab                     \cr
\kbd{h2} (Histogram with                     \tab Required                             \tab Optional            \tab Optional            \cr
          relative frequency)                 \tab                                      \tab                     \tab                     \cr
\kbd{t} (Table)                              \tab                                      \tab                     \tab                     \cr
------------------------------------------    \tab -------------------                  \tab ------------------- \tab ------------------- \cr
Input type:                                   \tab list(2) if \kbd{type="p","l","b"}   \tab character(1)        \tab character(1)        \cr
                                              \tab or list(1) if \kbd{type="h1","h2"}  \tab                     \tab                     \cr
}


\tabular{ccccc}{
\kbd{type=}                                  \tab \kbd{title}               \tab \kbd{col}                 \tab \kbd{table}               \tab  \kbd{size}               \cr
------------------------------------------    \tab ------------------- \tab ------------------- \tab ------------------- \tab ------------------- \cr
\kbd{p} (Point plot)                         \tab Optional            \tab                     \tab                     \tab                     \cr
\kbd{l} (Point plot)                         \tab Optional            \tab                     \tab                     \tab                     \cr
\kbd{b} (Both point & line plot)             \tab Optional            \tab                     \tab                     \tab                     \cr
\kbd{h1} (Histogram                          \tab Optional            \tab Optional            \tab                     \tab                     \cr
          with frequency)                     \tab                     \tab                     \tab                     \tab                     \cr
\kbd{h2} (Histogram with                     \tab Optional            \tab Optional            \tab                     \tab                     \cr
          relative frequency)                 \tab                     \tab                     \tab                     \tab                     \cr
\kbd{t} (Table)                              \tab                     \tab                     \tab Required            \tab Required            \cr
------------------------------------------    \tab ------------------- \tab ------------------- \tab ------------------- \tab ------------------- \cr
Input type:                                   \tab character(1)        \tab character()         \tab matrix()            \tab numeric(3)          \cr
                                              \tab                     \tab                     \tab                     \tab                     \cr
}



\itemize{
 \item \kbd{loc}: \emph{numeric(4)} the location of the plot or table. These four numbers defines the left, lower, right and upper bound of the plot or table.
 \item sub-list \kbd{list[[1]]}: \emph{numeric() or character()} The first component of the sub-list. If \kbd{type="p"} , \kbd{"l"} or \kbd{"b"}, this is the data shown on the x-axis. If \kbd{type="h1"}  or \kbd{"h2"}, this is the data whose frequency or relative frequency will be evaluated.
 \item sub-list \kbd{list[[2]]}: \emph{numeric()} The second component of the sub-list, this is the data shown on the y-axis.
 \item \kbd{ticks}: \emph{list(2) if \kbd{type="p","l","b"} or list(1) if \kbd{type="h1","h2"} } For \kbd{type="p","l"} or \kbd{"b"}, \kbd{ticks[[1]]} and \kbd{ticks[[2]]} become the tick marks of the x- and y-axis respectively. For \kbd{type="h1"} or \kbd{"h2"}, \kbd{ticks[[1]]} becomes the tick marks on the y-axis.
 \item \kbd{xlabl}: \emph{character()} The lable of the x-axis. The name attached to \kbd{list[[1]]} will be used instead.
 \item \kbd{ylabl}: \emph{character()} The lable of the y-axis. The name attached to \kbd{list[[2]]} will be used instead.
 \item \kbd{title}: \emph{character()} The title of the plot.
 \item \kbd{col}: \emph{character()} The colour of each bar for \kbd{type="h1","h2"}. The bars are not coloured (or white) if NULL.
 \item \kbd{table}: \emph{a matrix with \kbd{dimnames( )}}. The table will be created with the dimension and, with the row & column names the same as that of \kbd{table}.
 \item \kbd{item}: \emph{numeric(3)} refers to the font size of the row, column names then in-table information.
}
\bold{Line.draw} \cr
A single or a set of double quoted R commands. Any texts in between the quotes will be executed. A vector \kbd{c( )} is used for multiple commands. \cr
Since the double quotes are reserved in this case, single quotes should be used in the commands instead. For example, \kbd{Line.draw="abline(v=0,col=\bold{'}red\bold{'})"} \cr
instead of \kbd{Line.draw="abline(v=0,col=\bold{"}red\bold{"})"}.


}
\value{
A 5-column matrix is returned in the R console. The column names are \bold{ID}, \bold{Question.number}, \bold{type}, \bold{Condition.Likert} and \bold{Response}. \cr
\itemize{
\item \bold{ID} shows \kbd{id}.
\item \bold{Question.number} is \kbd{title} but without spaces. 
\item \bold{type} is \kbd{type}, the slide type (a integer between 1 and 7).
\item \bold{Condition.Likert} is the \kbd{cond} in the sequential Likert-scale question, shown as \kbd{NA} if \kbd{type} is not \kbd{7}.
\item \bold{Response} is the response given by the subject. Therefore, the number of rows may vary depending on number of the response. The returning values of each slide type is described below,
  \enumerate{
     \item No values returned.
     \item No values returned.
     \item The numerical response given by the subject by clicking the virtual keyboard upon the restrictions of \kbd{interval} and \kbd{isinteger}.
     \item A number representing the choice selected (i.e. "1" refers to the first choice being selected, "2" to the second, ...). The number of rows then depends on how many choices the subject is allowed to select as controlled by \kbd{n.select}.
     \item The exact choice (one of the items in \kbd{scale}) the subject selects. That is, if \kbd{scale} is of character() so is the response. The number of rows depends on the number of conditions being asked (i.e. length of \kbd{cond}). Also see \bold{Condition.Likert} above for another returning value.
     \item A number that the mark (or marks if multiple selections allowed) represents on the number line. The number of rows then depends on how many selections (i.e. marks) the subject is allowed to make as controlled by \kbd{n.select}.
     \item The number (the price in the Gabor & Granger 1966 1979) asked in the sequential question in which the subject answers "No".
  }
}
}

\references{
Gabor, G & Granger, CWJ (1966) "Price as an indicator of Quality: Report on an Enquiry", \emph{Economica}, \bold{33}(129), pp.43-70. \cr
Gabor, G & Granger, CWJ (1979) "The Attitude of the Consumer to Prices", \emph{Management Decision}, \bold{17}(8), pp.619-634. \cr
Kanayet, F & Opfer, J (2009) "Why Children's Number-line Estimates Follow Fechner's Law", \emph{Cognitive Science Conference Proceedings 2009}, pp.1936-41. \cr
Siegler, RS & Opfer, JE (2003) "The Development of Numerical Estimation: Evidence for Multiple Representations of Numerical Quantity", \emph{Psychological Science}, \bold{14}(3), May 2003, pp.237-243. \cr
}
\author{
Char Leung
}


\seealso{
\code{\link{cover}},\code{\link{identity}},\code{\link{read.write}}
}
\examples{
\dontrun{slide(id=1234,type=1,title="Question 1",content=c("Testing1","Testing2"),
h=c(0,0),v=c(100,80),size=c(3,2),col=c("blue","pink"),time=4,Line.draw=c("abline
(h=seq(0,100,50),col='red',lty=4)","abline(v=seq(0,100,100),col='green')"))}
\dontrun{slide(id=1234,type=2,title="Instructions",content=c("* Please give 
genuine response according to your belief.","* Any part of the survey is 
irreversible meaning that you cannot change the\n response you give in the previous 
slide.","* Once you click on any green button you proceed to the next slide."),
h=c(0,0,0),v=c(80,70,55),size=c(2,2,2),col=c("black","black","black"))}
\dontrun{slide(id=1234,type=3,title="Question 2",content="What is the average 
score of all groups?",h=0,v=100,size=2,col="black",box.level=c(70,100),Extra=list
(list(date=c(rep("Boys-Pass",6),rep("Girls-Pass",4),rep("Boys-Fail",4),
rep("Girls-Fail",2)),type="h1",loc=c(10,30,40,60),ticks=list(seq(0,6,1)),
xlabl="Grades",ylabl="Number\nof\nass\n& fail",title="Grade distribution",
col=c(rep("skyblue",2),rep("red",2))),list(Table=matrix(c(rep(c("M","F"),2),
round(rnorm(4,100,10),2),rep("Test A",2),rep("Test B",2)),ncol=4,byrow=T,
dimnames=list(c("Gender","Average\nScore","Test\ntype"),paste("Group",1:4))),
size=c(1.5,1.5,2),type="t",loc=c(55,30,90,60))))}
\dontrun{slide(id=123,type=4,title="Question 3",content=c("What do you think 
the return on the 2015-May-21 will be?","Please choose one of the followings"),
h=c(0,0),v=c(90,80),size=c(2,1.5),col=c("black","blue"),choices=c("Goes down",
"Remains the same","Goes up"),layout=c(1,3),box.level=75,n.select=1,
Extra=list(list(Date=paste("2015-May-",1:20,sep=""),return=rnorm(20),type="b",
loc=c(20,10,80,50),ticks=list(c(seq(0,20,5)),c(seq(-2,3,1))),ylabl="Return",
title="Daily return")))}
\dontrun{slide(id=123,type=5,title="Question 4",content=c("The market price is 
$","(0 refers to 'Strongly disagree' ... 5 refers to 'Strongly agree')"),
h=c(0,0),v=c(80,70),size=c(2,1.5),col=c("black","orange"),cond=seq(10,12,0.5),
scale=seq(0,5,0.5),box.level=50)}
\dontrun{slide(id=123,type=6,title="Question 5",content="Within which two numbers
 do you think the return on the 2015-May-21 will fall into?",h=0,v=100,size=2,
col="black",range=seq(-3,3,1),grid=5,unit="\%",box.level=85,n.select=2,Extra=
list(list(Date=paste("2015-May-",1:20,sep=""),return=rnorm(20),type="b",loc=
c(20,10,80,45),ticks=list(c(seq(0,20,5)),c(seq(-2,3,1))),ylabl="Return",title=
"Daily return")))}
\dontrun{slide(id=123,type=7,title="Question 6",content="Would you take the milk 
if it costs $",h=0,v=80,size=2,col="black",initial=3,increment=1,order="descending"
,box.level=70)}
}



\section{Returning graphics of examples}{
\figure{slide01.jpeg} \cr
\figure{slide02.jpeg} \cr
\figure{slide03.jpeg} \cr
\figure{slide04.jpeg} \cr
\figure{slide05.jpeg} \cr
\figure{slide06.jpeg} \cr
\figure{slide07.jpeg} \cr

}
