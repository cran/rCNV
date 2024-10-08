% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detect.R
\name{sig.hets}
\alias{sig.hets}
\title{Identify significantly different heterozygotes from SNPs data}
\usage{
sig.hets(
  a.info,
  Fis,
  method = c("chi.sq", "fisher"),
  plot = TRUE,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{a.info}{allele info table generated from filtered vcfs using the
function \code{allele.info} or allele depth table generated from \code{hetTgen}}

\item{Fis}{numeric. Inbreeding coefficient calculated using \code{h.zygosity()} function}

\item{method}{character. Method for testing significance. Fisher exact test
(\code{fisher}) or Chi-square test (\code{chi.sq})}

\item{plot}{logical. Whether to plot the identified duplicated snps with
the expected values}

\item{verbose}{logical, if TRUE, the progress is shown}

\item{...}{other arguments passed to \code{plot}}
}
\value{
A matrix of expected heterozygote proportions from the observed
data with p-value indicating significance of deviation.
}
\description{
This function will recognize the SNPs with a proportion of heterozygotes
significantly higher than expected under HWE and plot deviant snps based
only on the excess of heterozygotes.
}
\examples{
\dontrun{data(alleleINF)
AI <- alleleINF
duplicates<-sig.hets(AI,plot=TRUE,Fis=0.1)}

}
\author{
Piyal Karunarathne, Pascal Milesi, Klaus Schliep, Qiujie Zhou
}
