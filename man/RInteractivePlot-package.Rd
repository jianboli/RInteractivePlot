\name{RInteractivePlot-package}
\alias{RInteractivePlot-package}
\alias{RInteractivePlot}
\docType{package}
\title{
Modifying a plot after the plot function
}
\description{
This package supplies a series of function to change the properties of a typical plot after being drawing. This includes change the limit, the label, and the title.
}
\details{
\tabular{ll}{
Package: \tab RInteractivePlot\cr
Type: \tab Package\cr
Version: \tab 2.0\cr
Date: \tab 2014-05-16\cr
License: \tab Artistic-2.0 \cr
}
The packages can be used after a standard plot is made. It learns from the zoomplot function in TeachingDemo package and does more. It includes the following functions:
BestFit()
Restore()
Title()
Xlab()
Xlim()
Ylab()
Ylim()
Zoom()
All the code in the examples are suppose to be run line by line to see the effect.
~~ An overview of how to use the package, including the most important functions ~~
}
\author{
Jianbo Li
Maintainer: Who to complain to <jianboliru@gmail.com>
}
\references{

}
~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation directory ~~
\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
x <- seq(-pi, pi, 0.01)
y <- sin(x)
plot(x, y)
Xlab("Theta") # add x lable
Ylab("sin(Theta)") # add y label
Title("Sine function") # add title
Xlim(c(0,2)) # change x limit
Ylim(c(0,1)) # change y limit
BestFit() # zoom to fit all in
}
