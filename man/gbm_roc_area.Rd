% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ir-measures.r
\name{gbm_roc_area}
\alias{gbm_roc_area}
\alias{gbm_conc}
\title{Compute Information Retrieval measures.}
\usage{
gbm_roc_area(obs, pred)
}
\arguments{
\item{obs}{Observed value}

\item{pred}{Predicted value}
}
\value{
The requested performance measure.
}
\description{
Functions to compute Information Retrieval measures for pairwise loss for a
single group. The function returns the respective metric, or a negative
value if it is undefined for the given group.
}
\details{
For simplicity, we have no special handling for ties; instead, we break ties
randomly. This is slightly inaccurate for individual groups, but should have
only a small effect on the overall measure.

\code{gbm_conc} computes the concordance index: Fraction of all pairs (i,j)
with i<j, x[i] != x[j], such that x[j] < x[i]

If \code{obs} is binary, then \code{gbm_roc_area(obs, pred) =
gbm.conc(obs[order(-pred)])}.

\code{gbm_conc} is more general as it allows non-binary targets, but is
significantly slower.
}
\examples{

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

}
\references{
C. Burges (2010). "From RankNet to LambdaRank to LambdaMART: An
Overview", Microsoft Research Technical Report MSR-TR-2010-82.
}
\seealso{
\code{\link{gbm}}
}
\author{
Stefan Schroedl
}
\keyword{models}
