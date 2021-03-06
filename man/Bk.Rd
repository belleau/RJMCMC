% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rjmcmcMethodsIntern.R
\name{Bk}
\alias{Bk}
\title{Birth Submove Probability}
\usage{
Bk(k, lambda, kMax = 30)
}
\arguments{
\item{k}{a positive \code{integer}, the number of nucleosomes.}

\item{lambda}{a positive \code{numeric}, the theorical mean
of the Poisson distribution.}

\item{kMax}{a positive \code{integer}, the maximum number of nucleosomes
authorized. When \code{k} is equal or superior to \code{kMax}, the
returned value is \code{0}. Default: \code{30}.}
}
\value{
a \code{numeric} value. The value \code{0} when \code{k} is equal
or superior to \code{kMax} or when \code{k} is equal to \code{1}.
}
\description{
Calculation of the birth submove probability of adding a new
nucleosome using a truncated Poisson distribution.
}
\examples{

## Return the birth submove probability
RJMCMC:::Bk(k = 14L, lambda = 1L, kMax = 30L)

## Zero is returned when k = 1
RJMCMC:::Bk(k = 1L, lambda = 3L, kMax = 30L)

## Zero is returned when k is superior to kMax
RJMCMC:::Bk(k = 31L, lambda = 2L, kMax = 30L)

}
\author{
Rawane Samb
}
\keyword{internal}

