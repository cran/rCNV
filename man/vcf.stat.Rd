% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statistics.R
\name{vcf.stat}
\alias{vcf.stat}
\title{Get sequencing quality statistics of raw VCF files
(with GatK generated vcf files only)}
\usage{
vcf.stat(vcf, plot = TRUE, ...)
}
\arguments{
\item{vcf}{an imported vcf file in data.frame or matrix format using
\code{readVCF}}

\item{plot}{logical. Whether to plot the (12) parameters}

\item{...}{other arguments passed on to \code{plot}
(e.g. col,border)}
}
\value{
Returns a data frame with quality parameters from the INFO. field of
the vcf
\itemize{
\item{QUAL: The Phred-scaled probability that a REF/ALT polymorphism exists
at this site given sequencing data}
\item{AC: Allele count}
\item{AF: Allele frequency}
\item{DP: unfiltered depth}
\item{QD: QualByDepth - This is the variant confidence (from the QUAL
field) divided by the unfiltered depth of non-hom-ref samples}
\item{FS: FisherStrand - This is the Phred scaled probability that there is
strand bias at the site}
\item{SOR: StrandOddsRatio - This is another way to estimate strand bias
using a test similar to the symmetric odds ratio test}
\item{MQ: RMSMappingQuality - This is the root mean square mapping quality
over all the reads at the site}
\item{MQRankSum: MappingQualityRankSumTest - This is the u-based
z-approximation from the Rank Sum Test for mapping qualities}
\item{ReadPosRankSum: ReadPosRankSumTest: This is the u-based
z-approximation from the Rank Sum Test for site position within reads}
}
}
\description{
This function will generate a table similar to VariantsToTable option in
GatK from raw vcf files for filtering purposes. The function will also
plot all the parameters (see details & values).
}
\details{
For more details see instructions of GatK
}
\examples{
\dontrun{vcf.file.path <- paste0(path.package("rCNV"), "/example.raw.vcf.gz")
vcf <- readVCF(vcf.file.path=vcf.file.path)
statistics<-vcf.stat(vcf,plot=TRUE)}

}
\author{
Piyal Karunarathne
}
