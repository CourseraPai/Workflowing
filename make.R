# Which variables in a given data set isan integer,normal and has outliers?

source("packages.R")  
source("R/plan.R")

source("R/read_data.R") 
source("R/filter_outlier_vars.R")      
source("R/check_normality.R")     
source("R/plot_normality.R")     
source("R/plot_qq.R")     
source("R/plot_outliers.R")


# Now, your functions and workflow plan should be in your environment.
ls()

# Optionally plot the graph of your workflow.
# vis_drake_graph(plan)      # nolint

# Now it is time to actually run your project.
make(plan) # Or make(plan, jobs = 2), etc.

# Now, if you make(plan) again, no work will be done
# because the results are already up to date.
# But change the code and some targets will rebuild.

# Read the output report.md file
# for an overview of the project and the results.
