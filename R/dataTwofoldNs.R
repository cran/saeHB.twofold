#' @docType data
#' @title Simulated dataset Under Two Fold Subarea level model with Normal distribution and Non-sampled subarea
#'
#' @description
#' \enumerate{
#'   \item A dataset to simulate Small Area Estimation using Hierarchical Bayesian method under Two Fold Subarea level model with Normal distribution and Non-sampled subarea
#'   \item This data contains NA values that indicates no sampled at one or more Subareas. It uses the \code{\link{dataTwofold}} with the direct estimates and the related variances in 10 subareas are missing.
#'  }
#'
#' @format A data frame with 90 rows and 6 columns:
#' \describe{
#'  \item{y}{Direct estimation of subarea mean \eqn{y_{ij}}}
#'  \item{x1}{Auxiliary variabel of \eqn{x_{ij1}}}
#'  \item{x2}{Auxiliary variabel of \eqn{x_{ij2}}}
#'  \item{codearea}{Index that describes the code relating to area for each subarea}
#'  \item{w}{Unit proportion on each subarea or weight \eqn{w_{ij}}}
#'  \item{vardir}{Sampling variance of direct estimator \eqn{y_{ij}}}
#' }
"dataTwofoldNS"
