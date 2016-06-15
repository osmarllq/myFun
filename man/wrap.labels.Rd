\name{wrap.labels}
\alias{wrap.labels}
\alias{wrap.it}

\title{
  Wrap labels
}
\description{
  Add the new line character \code{\\n} within a character string.
}
\usage{
wrap.labels(x, len)
wrap.it(x, len)
}

\arguments{
  \item{x}{
  A string or a character vector.
}
  \item{len}{
  numeric, similar to the \code{width} argument in \code{\link[base]{strwrap}}
}
}
\details{
  This function is usefull to wrap long labels meant to be used within a plot.
}
\value{
  A character vector
}
\references{
  Schawrtz, Marc. \emph{[R] abbrevate or wrap dimname labels}. R-help mailing list. April, 2005. \url{https://stat.ethz.ch/pipermail/r-help/2005-april/069566.html}
}
\author{
  Marc Schwartz
}

\seealso{
  \code{strwrap}
}
\examples{
occ <- c("Upper nonmanual", "Lower nonmanual", "Upper manual", "Lower manual", "Farm")
wrap.labels(occ, 10)
}

\keyword{ Wrap labels }

