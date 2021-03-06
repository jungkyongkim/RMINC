% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/minc_interface.R
\name{simplify2minc}
\alias{simplify2minc}
\title{Collate Minc}
\usage{
simplify2minc(result_list)
}
\arguments{
\item{result_list}{The mincApply results to collate.}
}
\value{
a matrix like object of class \code{mincSingleDim}, code{mincMultiDim},
or code{mincList} depending on the dimensions of the input object
}
\description{
Helper function to collate the results of a \link{mincApplyRCPP} family 
(\link{pMincApply}, \link{mcMincApply}, and \link{qMincApply}) function
}

