##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @Read_Bean_Data

read_data <- function() {

  bean<-read_excel(here("data_files","Dry_Bean_Dataset.xlsx"),col_names=TRUE)
  bean<-as.data.frame(bean)
  return(bean)
  }


