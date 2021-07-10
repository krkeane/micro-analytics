setwd(tempdir())
x<-readRenviron('/etc/os-release');
pn<-Sys.getenv("PRETTY_NAME")
cat(sprintf("\n%s\n%s\n%s\n%s\n\n",
  pn,
  R.Version()$version.string,
  R.Version()$nickname,
  R.Version()$platform))
