# Define a list  of packages you want to install
packages <- c(
  "tidyverse",
  "data.table",
  "ggplot2",
  "shiny",
  "lubridate",
  "forecast",
  "caret",
  "plotly",
  "e1071",
  "earth",
  "tidymodels",
  "bslib",
  "kknn",
  "nnet",
  "LiblineaR",
  "doParallel",
  "modeltime",
  "tidyclust",
  "gtable",
  "kernlab",
  "patchwork",
  "tidyquant",
  "tidytext",
  "tidytuesdayR"
)

# Install packages if they are not already installed
install_if_missing <- function(package) {
  if (!require(package, character.only = TRUE)) {
    install.packages(package, dependencies = TRUE)
  }
}

invisible(sapply(packages, install_if_missing))
