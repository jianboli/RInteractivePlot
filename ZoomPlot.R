zoomplot <- 
function( xlim, ylim=NULL ){
  xy <- xy.coords(xlim,ylim)
  xlim <- range(xy$x)
  ylim <- range(xy$y)
  
  tmp <- recordPlot()[[1]]
  for(i in seq(along=tmp)){
    fn <- tmp[[i]][[1]]
    alst <- as.list(tmp[[i]][[2]])
    tmp2 <- all.equal( 'C_locator', alst[[1]]$name )
    if(is.logical(tmp2) && tmp2){
      next
    }
    tmp2 <- all.equal('C_plot_window', alst[[1]]$name) #'.Primitive("plot.window")', deparse(fn) )
    if(is.logical(tmp2) && tmp2) {
      alst[[2]] <- xlim
      alst[[3]] <- ylim
    }
    
    do.call(fn, alst)
  }
}