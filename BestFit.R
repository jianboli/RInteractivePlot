BestFit <-
function()
{
    xylim <- par('usr')
    tmp <- recordPlot()[[1]]
    xrange <- vector()
    yrange <- vector()
    for (i in seq(along = tmp)) {
        fn <- tmp[[i]][[1]]
        alst <- as.list(tmp[[i]][[2]])

        tmp2 <- all.equal( 'C_locator', alst[[1]]$name )
        if (is.logical(tmp2) && tmp2) {
           next
        }

        tmp2 <- all.equal('C_plotXY', alst[[1]]$name) # all.equal('.Primitive("plot.xy")', deparse(fn))
        if(is.logical(tmp2) && tmp2)
        {
            xrange <- range(xrange, range(alst[[2]]$x,na.rm=T))
            yrange <- range(yrange, range(alst[[2]]$y,na.rm=T))
        }
    }

    if(length(xrange)==2 & length(yrange)==2)
        zoomplot(xrange,yrange)
    return(xylim)
}
