
plot_qq<-function(outlier_vars){
	long_format<-tidyr::gather(outlier_vars,key,value)
	ggplot(long_format,aes(sample=value))+geom_qq()+facet_wrap(~key,scales="free")+geom_qq_line()
}