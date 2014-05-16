\name{zoomplot}
\alias{zoomplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
zoomplot(xlim, ylim = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xlim}{
%%     ~~Describe \code{xlim} here~~
}
  \item{ylim}{
%%     ~~Describe \code{ylim} here~~
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
function (xlim, ylim = NULL) 
{
    xy <- xy.coords(xlim, ylim)
    xlim <- range(xy$x)
    ylim <- range(xy$y)
    tmp <- recordPlot()[[1]]
    for (i in seq(along = tmp)) {
        fn <- tmp[[i]][[1]]
        alst <- as.list(tmp[[i]][[2]])
        tmp2 <- all.equal("C_locator", alst[[1]]$name)
        if (is.logical(tmp2) && tmp2) {
            next
        }
        tmp2 <- all.equal("C_plot_window", alst[[1]]$name)
        if (is.logical(tmp2) && tmp2) {
            alst[[2]] <- xlim
            alst[[3]] <- ylim
        }
        do.call(fn, alst)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
