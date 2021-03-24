##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @Check_If_Normal
##' @param outlier_var
check_normality <- function(outlier_var) {

		shapiro<-map(outlier_var[1:3000,],shapiro.test)
		shapiro<-map(shapiro,"p.value")
		shapiro<-data.frame(unlist(shapiro))
		shapiro<-data.frame(cbind(rownames(shapiro),shapiro[,1]))

		names(shapiro)<-c("variable","pvalue")
		shapiro$pvalue<-as.numeric(as.character(shapiro$pvalue))
		normal_vars<-shapiro[which(ifelse(shapiro$pvalue>0.05,"Reject-Normal","Normal")=="Normal"),]$variable
		return(outlier_var[colnames(outlier_var)%in% normal_vars])
}
