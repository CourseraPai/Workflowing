##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @Choose_Outlier_Variable
##' @param data
filter_outlier_vars <- function(data) {

	filtered_data<-data%>%select_if(is.numeric)%>%select_if(~ !any(is.na(.)))
	return(filtered_data)

	}
