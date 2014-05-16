\name{Restore}
\alias{Restore}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Reset the plot to a given xylim}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Restore(xylim)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xylim}{xylim to restore to. In the form of c(x1, x2, y1, y2)
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Jianbo Li
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
x <- 1:100
plot(x)
xylim <- Xlim(c(1,10))
Restore(xylim)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
