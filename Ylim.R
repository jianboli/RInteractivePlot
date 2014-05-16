Ylim <-
function(ylim)
{
    xylim <- par('usr')
    xlim <- xylim[1:2]
    zoomplot(xlim, ylim)
    return(xylim)
}
