# check if remotes is installed
if(!"remotes" %in% installed.packages()[,1]){
  install.packages("remotes")
}
# check if envimar is installed
if(!"envimaR" %in% installed.packages()[,1]){
  remotes::install_github("envima/envimaR")
}

# rootDir is R Project directory
rootDir  = "."

# set up additional directories
projectDirs = c("analysis",
                "code",
                "data",
                "docs",
                "output")

# add here all libraries needed in your project
libs = c("rmarkdown", "knitr", "kableExtra", "renv", "workflowr")

# create the project environment
envrmt = envimaR::createEnvi(root_folder = rootDir,
                             folders = projectDirs,
                             path_prefix = "path_",
                             libs = libs)
str(envrmt)
