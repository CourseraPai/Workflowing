plan <-
  drake_plan(

			bean=read_data(),
			display_bean=head(bean),
			outlier_vars=filter_outlier_vars(bean),
			is_it_normal=check_normality(outlier_vars),
			is_it_normal_colnames=data.frame(colnames(is_it_normal)),
			outlier_report= target(
				command = {
					rmarkdown::render(knitr_in("Display_Outliers.Rmd"))
					file_out("Display_Outliers.html")
				}
			),
			plot1=plot_normality(outlier_vars),
			plot2=plot_qq(outlier_vars),
			plot3=plot_outliers(is_it_normal)
			
)
