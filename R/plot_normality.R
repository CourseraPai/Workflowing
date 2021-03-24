
plot_normality<-function(outlier_vars){
long_format<-tidyr::gather(outlier_vars,key,value)
ggplot(long_format,aes(x=value))+geom_histogram()+facet_wrap(~key,scales="free")
}