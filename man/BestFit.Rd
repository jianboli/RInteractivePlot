\name{BestFit}
\alias{BestFit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Best fit}
\description{This function find the xy limit such that all the points are shown.}
\usage{
BestFit()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{ returns current xylimit in the form of c(x1, x2, y1, y2)}
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
plot(x, xlim=c(1,10))
BestFit()
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ plot }
\keyword{ interactive }% __ONLY ONE__ keyword per line

