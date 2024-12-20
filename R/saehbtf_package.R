#' @title saeHB.twofold : Small Area Estimation Under Twofold Subarea Level Model Using Hierarchical Bayesian Method
#' @description Provides several functions for area and subarea level of small area estimation under Twofold Subarea Level Model using hierarchical Bayesian (HB) method with Univariate Normal distribution for variables of interest. Some dataset simulated by a data generation are also provided. The 'rjags' package is employed to obtain parameter estimates using Gibbs Sampling algorithm. Model-based estimators involves the HB estimators which include the mean, the variation of mean, and the quantile. For the reference, see Rao and Molina (2015), Torabi (2014), Leyla Mohadjer et.al(2007)
#' @section Author(s):
#' Reyhan Saadi, Azka Ubaidillah
#'
#' \strong{Maintaner}: Reyhan Saadi \email{reyhansaadi335@gmail.com}
#'
#' @section Functions:
#' \describe{
#'   \item{\code{\link{NormalTF}}}{This function gives estimation of subarea and area means simultaneously under Twofold Subarea Small Area Estimation Model Using Hierarchical Bayesian Method with Normal distribution based on model in Torabi (2014) amd Erciulescu et al. (2018)}
#' }
#'
#' @section Reference:
#' \itemize{
#'  \item{Mohadjer, L.K., Rao, J.N., Liu, B., Krenzke, T., & Kerckhove, W.V. (2007). Hierarchical Bayes Small Area Estimates of Adult Literacy Using Unmatched Sampling and Linking Models.}
#'  \item{Torabi, M., & Rao, J.N. (2014). On small area estimation under a sub-area level model. J. Multivar. Anal., 127, 36-55. DOI:10.1016/j.jmva.2014.02.001}
#'  \item{Rao, J.N.K & Molina. (2015). Small Area Estimation 2nd Edition. New York: John Wiley and Sons, Inc. DOI:10.1002/9781118735855 }
#'  \item{Erciulescu, A.L., Cruze, N.B. and Nandram, B. (2019), Model-based county level crop estimates incorporating auxiliary sources of information. J. R. Stat. Soc. A, 182: 283-303. DOI:10.1111/rssa.12390}
#' }
#'
#' @docType package
#' @name saeHB.twofold
#'
#' @import stringr
#' @import coda
#' @import rjags
#' @import stats
#' @import grDevices
#' @import graphics
#' @import data.table
#' @importFrom utils tail
NULL
