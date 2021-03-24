plot_outliers<-function(normal_data){
	
	long_format<-tidyr::gather(normal_data,key,value)
	ggplot(long_format,aes(y=value))+geom_boxplot()+facet_wrap(~key,scales="free")
}