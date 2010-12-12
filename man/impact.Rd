\name{impact}
\alias{impact}
\docType{data}
\title{
The data for IMPACT program.
}
\description{
The data for IMPACT program used in Ding et al. (2011).
}
\usage{data(impact)}
\format{
  A data frame with 1783 observations on the following 12 variables.
  \describe{
    \item{\code{Z}}{randomization}
    \item{\code{A}}{whether taking antidepressant medications}
    \item{\code{M}}{whether taking mental health therapy}
    \item{\code{Y}}{outcome of interest}
    \item{\code{age}}{age}
    \item{\code{gender}}{gender}
    \item{\code{race}}{race}
    \item{\code{edu}}{education}
    \item{\code{marry}}{married or not}
    \item{\code{scl0}}{baseline SCL score}
    \item{\code{work0}}{work or not}
    \item{\code{inc}}{income/10000}
  }
}
\details{
See Ding et al. (2011) for more details of IMPACT program.
}
\source{

}
\references{
Ding, P., Geng, Z. and Zhou, X. H. (2011). Identifying Causal Effect for Multi-Component Intervention Using Instrumental Variable Method: with A Case Study of IMPACT Data. Technical Report.
}
\examples{
data(impact)

}
\keyword{datasets}
