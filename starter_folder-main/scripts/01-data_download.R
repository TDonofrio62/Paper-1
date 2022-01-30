#### Preamble ####
# Purpose: Download data on Toronto Shooting Occurences from OpenDataToronto
# Author: Thomas D'Onofrio
# Data: 30 January 2021
# Contact: thomas.donofrio@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(opendatatoronto)

#### Download Data ####
#From https://open.toronto.ca/dataset/police-annual-statistical-report-shooting-occurrences/

#Datasets on opendatatoronto contains several different datasets within it.
#We must look at a package obtained from the website with a specific code
#in order to see these specific datasets within the main dataset.

#Get Package



package <- show_package("f29feb49-ceb1-44bf-a2b6-5fc6a0e6147a")
package

resources <- list_package_resources("f29feb49-ceb1-44bf-a2b6-5fc6a0e6147a")
resources

#This package has only one dataset within it and must be selected by default

raw_data <- get_resource(resource ="b4fd5f2f-fe0d-4229-af47-d87d91fc14ce")
raw_data



         