% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tt_paginate.R
\name{vpaginate_table}
\alias{vpaginate_table}
\title{Deprecated - vertically paginate table}
\usage{
vpaginate_table(tt, cpp = 40, verbose = FALSE)
}
\arguments{
\item{tt}{TableTree (or related class). A TableTree object representing a
populated table.}

\item{cpp}{numeric(1) or NULL. Width (in characters) of the pages for
horizontal pagination. \code{NULL} (the default) indicates no horizontal
pagination should be done.}

\item{verbose}{logical(1). Should extra debugging messages be shown. Defaults
to \code{FALSE}.}
}
\description{
This function is deprecated and should not be used.

this function is deprecated. please use \code{paginate_table} with a
non-null \code{cpp} argument instead.
}
\keyword{internal}
