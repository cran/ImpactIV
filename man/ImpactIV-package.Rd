\name{ImpactIV-package}
\alias{ImpactIV-package}
\alias{ImpactIV}
\docType{package}
\title{
Identifying Causal Effect for Multi-Component Intervention Using IV
}
\description{
In this package, you can find two functions proposed in Ding, Geng and Zhou (2011) to estimate direct and indirect causal effects with randomization and multiple-component intervention using instrumental variable method.

}
\details{
\tabular{ll}{
Package: \tab ImpactIV\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-12-12\cr
License: \tab  GPL (>=2)\cr
LazyLoad: \tab yes\cr
}

}
\author{

Maintainer: Peng Ding <dingyunyiqiu@163.com>
}
\references{
Ding, P., Geng, Z. and Zhou, X. H. (2011). Identifying Causal Effect for Multi-Component Intervention Using Instrumental Variable Method: with A Case Study of IMPACT Data. Technical Report.
}

\keyword{ instrumental variable}
\keyword{ causal effect }
\seealso{
homo_IV1, heter_IV2
}
\examples{

data(impact)
Z=impact$Z
A=impact$A
M=impact$M
Y=scale(impact$Y)
X=as.matrix(impact[,5:12])
##continuos variables of X
Xcon = X[, c(1,4,6,8)]
##discrete variables of X
Xdis = X[, c(2,3,5,7)]
##X^2
X2 = cbind(X, poly(Xcon, degree = 2, raw = TRUE), 
           Xcon*Xdis[,1], Xcon*Xdis[,2], Xcon*Xdis[,3], Xcon*Xdis[,4])

method1 = homo_IV1(Z = Z,A = A,M = M,Y = Y,X = X)
method2 = heter_IV2(Z = Z,A = A,M = M,Y = Y,X = X2, 
                   polydegree = 1, step1 = method1, 
                   truncate = 0.25, select ="AIC")

}
