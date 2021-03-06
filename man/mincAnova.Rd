% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/minc_voxel_statistics.R
\name{mincAnova}
\alias{mincAnova}
\title{Voxel-wise ANOVA
 
Compute a sequential ANOVA at each voxel}
\usage{
mincAnova(formula, data = NULL, subset = NULL, mask = NULL)
}
\arguments{
\item{formula}{The anova formula. The left-hand term consists of the 
MINC filenames over which to compute the models at every voxel.}

\item{data}{The dataframe which contains the model terms.}

\item{subset}{Subset definition.}

\item{mask}{Either a filename or a vector of values of the same 
length as the input files. ANOVA will only be computed
inside the mask.}
}
\value{
Returns an array with the F-statistic for each model specified by 
formula with the following attributes: 
\itemize{
\item{model}{ design matrix}
\item{filenames}{ minc file names input}
\item{dimensions}{ dimensions of the statistics matrix}
\item{dimnames}{ names of the dimensions for the statistic matrix}
\item{stat-type}{ types of statistic used}
\item{df}{ degrees of freedom of each statistic}
}
}
\description{
Voxel-wise ANOVA
 
Compute a sequential ANOVA at each voxel
}
\details{
This function computes a sequential ANOVA over a set of files.
}
\examples{
\dontrun{ 
getRMINCTestData() 
# read the text file describing the dataset
gf <- read.csv("/tmp/rminctestdata/test_data_set.csv")
# run an ANOVA at each voxel
vs <- mincAnova(jacobians_fixed_2 ~ Sex, gf)
}
}
\seealso{
mincWriteVolume,mincFDR,mincMean, mincSd
}

