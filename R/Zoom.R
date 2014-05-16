Zoom <-
function(){
    xylim <- par('usr')
    zoomplot(locator(2))
    return(xylim)
}
