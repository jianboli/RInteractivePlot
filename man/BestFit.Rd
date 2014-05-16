\name{BestFit}
\alias{BestFit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
BestFit()
}
%- maybe also 'usage' for other objects documented here.
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
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function () 
{
    xylim <- par("usr")
    tmp <- recordPlot()[[1]]
    xrange <- vector()
    yrange <- vector()
    for (i in seq(along = tmp)) {
        fn <- tmp[[i]][[1]]
        alst <- as.list(tmp[[i]][[2]])
        tmp2 <- all.equal("C_locator", alst[[1]]$name)
        if (is.logical(tmp2) && tmp2) {
            next
        }
        tmp2 <- all.equal("C_plotXY", alst[[1]]$name)
        if (is.logical(tmp2) && tmp2) {
            xrange <- range(xrange, range(alst[[2]]$x, na.rm = T))
            yrange <- range(yrange, range(alst[[2]]$y, na.rm = T))
        }
    }
    if (length(xrange) == 2 & length(yrange) == 2) 
        zoomplot(xrange, yrange)
    return(xylim)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
