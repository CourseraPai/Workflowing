##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param is_it_normal
show_outliers <- function(is_it_normal) {

 outlier_list<-map(is_it_normal,rosnerTest,k=500)
 all.stats<-map(outlier_list,c(13))
}



