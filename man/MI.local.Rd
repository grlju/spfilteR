% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MI.local.R
\name{MI.local}
\alias{MI.local}
\title{Local Moran Coefficient}
\usage{
MI.local(x, W, alternative = "greater", na.rm = TRUE)
}
\arguments{
\item{x}{a vector}

\item{W}{spatial connectivity matrix}

\item{alternative}{specification of alternative hypothesis as 'greater' (default),
'lower', or 'two.sided'}

\item{na.rm}{listwise deletion of observations with missing values (TRUE/ FALSE)}
}
\value{
Returns an object of class \code{data.frame} that contains the
following information for each variable:
\describe{
\item{\code{Ii}}{observed value of local Moran's I}
\item{\code{EIi}}{expected value of local Moran coefficients}
\item{\code{VarIi}}{variance of local Moran's I}
\item{\code{zIi}}{standardized local Moran coefficient}
\item{\code{pIi}}{\emph{p}-value of the test statistic}
}
}
\description{
Reports the local Moran Coefficient for each unit.
}
\note{
The calculation of the statistic and its moments follows
Anselin (1995) and Sokal et al. (1998).
}
\examples{
data(fakedata)
x <- fakedataset$x2

(MIi <- MI.local(x = x, W = W, alternative = "greater"))

}
\references{
Anselin, Luc (1991): Local Indicators of Spatial
Association-LISA. Geographical Analysis, 27 (2): pp. 93 - 115.

Bivand, Roger S. and David W. S. Wong (2018): Comparing Implementations
of Global and Local Indicators of Spatial Association. TEST, 27:
pp. 716 - 748.

Sokal, Robert R., Neal L. Oden, Barbara A. Thomson (1998): Local
Spatial Autocorrelation in a Biological Model. Geographical Analysis,
30 (4): pp. 331 - 354.
}
\seealso{
\code{\link{MI.vec}}, \code{\link{MI.ev}}, \code{\link{MI.sf}},
\code{\link{MI.resid}}, \code{\link{MI.decomp}}
}
\author{
Sebastian Juhl
}
