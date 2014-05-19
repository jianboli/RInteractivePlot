RInteractivePlot
================
Some R functions to modify the R basic plots after they are already generated. This is more or less similar to Matlab way of plotting. In general, I like the way of charting with ggplot. However, there are already tons of packages using R basic plotting functions to visualize data. When dealing with them, some functions list here could be helpful.

Examples:

```R
## please run the following code line by line to see the effects!
plot(1:10, sin(1:10))
Xlab("theta")
Ylab("sin(theta)")
Xlim(c(1,5))
Ylim(c(-1,2))
Title("This is a sine function")
BestFit()
Zoom() # Now pick two points with your mouse on the chart to select the zooming area
```
To install:

```R
install.packages("devtools") # if you do not have the devtools package
library(devtools)
install_github("RInteractivePlot", "jianboli")
```
