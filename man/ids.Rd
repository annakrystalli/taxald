% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxald.R
\name{ids}
\alias{ids}
\title{Return taxonomic identifiers from a given namespace}
\usage{
ids(name = NULL, authority = c("itis", "ncbi", "col", "tpl", "gbif",
  "fb", "slb", "wd"), collect = TRUE, taxald_db = connect_db())
}
\arguments{
\item{name}{a character vector of species names.
(Most authorities can also return ids for higher-level
taxonomic names).}

\item{authority}{from which authority should the hierachy be returned?
Default is 'itis'.}

\item{collect}{logical, default \code{TRUE}. Should we return an in-memory
data.frame (default, usually the most convenient), or a reference to
lazy-eval table on disk (useful for very large tables on which we may
first perform subsequent filtering operations.)}

\item{taxald_db}{a connection to the taxald database. See details.}
}
\value{
a data.frame with columns of \code{id}, scientific
\code{name}, and \code{rank} and a row for each species name queried.
}
\description{
Return taxonomic identifiers from a given namespace
}
