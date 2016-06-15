\name{alluvial}
\alias{alluvial}

\title{
  Alluvial Plot
}
\description{
  Function to plot an alluvial plot.
}
\usage{
alluvial(..., freq, col = "gray", border = 0, layer, hide = FALSE, alpha = 0.5, gap.width = 0.05, xw = 0.1, cw = 0.1, las = 0, srt = 90, blocks = TRUE, pct=FALSE, xlabels = NULL)
}

\arguments{
  \item{\dots}{
  vectors or data frames, all for the same number of observations
}
  \item{freq}{
  numeric, vector of frequencies of the same length as the number of observations
}
  \item{col}{
  vector of colors of the stripes
}
  \item{border}{
  vector of border colors for the stripes
}
  \item{layer}{
  numeric, order of drawing of the stripes
}
  \item{hide}{
  logical, should particular stripe be plotted
}
  \item{alpha}{
  numeric, vector of transparency of the stripes
}
  \item{gap.width}{
  numeric, relative width of inter-category gaps
}
  \item{xw}{
  numeric, the distance from the set axis to the control points of the xspline
}
  \item{cw}{
  numeric, width of the category axis
}
  \item{las}{
  See \code{\link{par}}
}
  \item{srt}{
  See \code{\link{par}}
}
  \item{blocks}{
  logical, whether to use blocks to tie the flows together at each category, versus contiguous ribbons (also admits character value "bookends")
}
\item{pct}{
  logical, whether category labels should be accompanied by relative frequencies.
}
\item{sep}{
  If \code{pct=TRUE}, then it chooses the separator to concatenate category's labels and their relative frequencies.
}
  \item{xlabels}{
  Either NULL or a character vector with length equal to the number of columns in the \code{data.frame}. If NULL, the labels for the horizontal axis are taken from the column names of the \code{data.frame}. If a character vector is provided, the horizontal axis' labels are taken from this vector.
}
}
\details{
  This function plots an alluvial plot, which is a variant of a parallel coordinates plot for qualitative data.
}

\author{
  Michal Bojanowski and Aaron Rendahl
}
\note{
 This function imports \code{\link[grDevices]{col2rgb}} and \code{\link[grDevices]{rgb}} from the \code{grDevices} package, and \code{\link[graphics]{plot}}, \code{\link[graphics]{xspline}}, \code{\link[graphics]{axis}}, \code{\link[graphics]{rect}}, \code{\link[graphics]{polygon}}, \code{\link[graphics]{text}} and \code{\link[graphics]{par}} from the \code{graphics} package.
}

\examples{

# load packages and prepare data
tit <- as.data.frame(Titanic)
 
alluvial( tit[,1:4], freq=tit$Freq, border=NA,
         hide = tit$Freq < quantile(tit$Freq, .50),
         col=ifelse( tit$Survived == "No", "red", "gray") )
}

\keyword{ Allucial Plot }
\keyword{ Parallel coordinates plot }
