\name{heter_IV2}
\alias{heter_IV2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Estimation causal effect under Assumption 7 in Ding et al. (2011)
}
\description{
Estimation causal effect under Assumption 6 in Ding et al. (2011) when the second order moment of the error term is not constant.
}
\usage{
heter_IV2(Z, A, M, Y, X, polydegree = 2, step1 = NULL, 
          truncate = 0.25, select = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Z}{
%%     ~~Describe \code{Z} here~~
A vector of the randomization variable.
}
  \item{A}{
%%     ~~Describe \code{A} here~~
A vector of the first mediator: whether a patient receives antidepressant medication.
}
  \item{M}{
%%     ~~Describe \code{M} here~~
A vector of the second mediator: whether a patient receives mental health therapy.
}
  \item{Y}{
%%     ~~Describe \code{Y} here~~
A vector of the outcome of interest.
}
  \item{X}{
%%     ~~Describe \code{X} here~~
A matrix of all the covariates.
}
  \item{polydegree}{
%%     ~~Describe \code{polydegree} here~~
The order of the polynomial function.
}
  \item{step1}{
%%     ~~Describe \code{step1} here~~
The result of the first step estimation from homo_IV1.
}
  \item{truncate}{
%%     ~~Describe \code{truncate} here~~
Truncate the estimated Omega using a positive constant.
}
  \item{select}{
%%     ~~Describe \code{select} here~~
Using AIC or BIC for variable selection in the polynomial regression, the default is null.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
For background of the problem, see Ding et al. (2011).
}
\value{
\item{beta}{beta coefficients of Z, A, M and AM.}
\item{phat }{proportion of randomization to the treatment group.}
\item{residual}{residuals of the first step regression.}
\item{se}{standard errors of beta coefficients.}
\item{zvalue}{z-vlues of the beta coefficients.}
\item{pvalue}{p-values of the beta coefficients.}
\item{CI}{confidence intervals of the beta coefficients.}
\item{COV}{covariance matrix of the beta coefficients.}
\item{ser}{robust version of standard errors of beta coefficients.}
\item{zvaluer}{robust version of z-vlues of the beta coefficients.}
\item{pvaluer}{robust version of p-values of the beta coefficients.}
\item{CIr}{robust version of confidence intervals of the beta coefficients.}
\item{COVr}{robust version of covariance matrix of the beta coefficients.}
\item{N}{sample size}
\item{G}{G is defined in Ding et al. (2010).}
\item{W}{W is defined in Ding et al. (2010).}
\item{Omegahat}{Omegahat is is defined in Ding et al. (2010).}
}
\references{
Ding, P., Geng, Z. and Zhou, X. H. (2011). Identifying Causal Effect for Multi-Component Intervention Using Instrumental Variable Method: with A Case Study of IMPACT Data. Technical Report.
}
\author{
 Peng Ding <dingyunyiqiu@163.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##See help for "ImpactIV"
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{  instrumental variable }
\keyword{  causal effect }% __ONLY ONE__ keyword per line
