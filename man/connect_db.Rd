% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxa_tbl.R
\name{connect_db}
\alias{connect_db}
\title{Connect to the taxald database}
\usage{
connect_db(dbdir = Sys.getenv("TAXALD_HOME", fs::path(fs::path_home(),
  ".taxald")))
}
\arguments{
\item{dbdir}{Path to the database. Defaults to \code{TAXALD_HOME}
environmental variable, which defaults to \code{~/.taxald}.}
}
\value{
Returns a \code{src_dbi} connection to the database
}
\description{
Connect to the taxald database
}
\details{
Primarily useful when a lower-level interface to the
database is required.  Most `taxald`` functions will connect
automatically without the user needing to call this function.
}
\examples{
\dontrun{

db <- connect_db()

}
}
