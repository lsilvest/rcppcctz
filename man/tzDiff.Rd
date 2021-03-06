% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{tzDiff}
\alias{tzDiff}
\title{Return difference between two time zones at a given date.}
\usage{
tzDiff(tzfrom, tzto, dt, verbose = FALSE)
}
\arguments{
\item{tzfrom}{The first time zone as a character vector.}

\item{tzto}{The second time zone as a character vector.}

\item{dt}{A Datetime object specifying when the difference is to be computed.}

\item{verbose}{A boolean toggle indicating whether more verbose operations
are desired, default is \code{FALSE}.}
}
\value{
A numeric value with the difference (in hours) between the first and
second time zone at the given date
}
\description{
Difference between two given timezones at a specified date.
}
\details{
Time zone offsets vary by date, and this helper function computes
the difference (in hours) between two time zones for a given date time.
}
\examples{
\dontrun{
# simple call: difference now
tzDiff("America/New_York", "Europe/London", Sys.time())
# tabulate difference for every week of the year
table(sapply(0:52, function(d) tzDiff("America/New_York", "Europe/London",
                                      as.POSIXct(as.Date("2016-01-01") + d*7))))
}
}
\author{
Dirk Eddelbuettel
}
