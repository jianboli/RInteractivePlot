Title <-
function (tit=NULL)
{
    if(is.null(tit))
       return
    tmp <- recordPlot()[[1]]
    for (i in seq(along = tmp)) {
        fn <- tmp[[i]][[1]]
        alst <- as.list(tmp[[i]][[2]])
        tmp2 <- all.equal( 'C_locator', alst[[1]]$name )
        if (is.logical(tmp2) && tmp2) {
            next
        }
        tmp2 <- all.equal('C_title', alst[[1]]$name) #'.Primitive("plot.window")', deparse(fn) )
        if (is.logical(tmp2) && tmp2) {
            alst[[2]] <- tit
        }
        do.call(fn, alst)
    }
}
