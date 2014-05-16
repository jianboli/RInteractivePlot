Xlim <-
function(xlim)
{
    xylim <- par('usr')
    ylim <- xylim[3:4]
    zoomplot(xlim, ylim)
    return(xylim)
}
