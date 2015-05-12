# Requirements.
library('RCurl')
library('devtools')

# Install the following packages with
#  devtools::install_github('ropensci/rcrossref')
library('rcrossref')

# Configuration.
source('config.R')
#	- Must set the following variables:
#		- google_spreadsheet_csv_url

# Load Google Spreadsheet into R as CSV
content <- getURL(google_spreadsheet_csv_url)
meetings <- read.csv(textConnection(content))

# Extract DOIs from Description
descs <- meetings$Description
dois <- ()
append(dois, grep('doi:(\\w+)\\W', descs))