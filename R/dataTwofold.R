#' @docType data
#' @title Simulated dataset Under Two Fold Subarea level model with Normal distribution.
#'
#' @description A dataset to simulate Small Area Estimation using Hierarchical Bayesian method under Two Fold Subarea level model with Normal distribution on variabel interest.
#'
#' This data is generated by these following steps:
#' \enumerate{
#'   \item Generate sampling error \eqn{e_{ij}},subarea random effect \eqn{u_{ij}}, area random effect \eqn{v_{i}}, auxiliary variabel \eqn{x_{ij1},x_{ij2}}, and weight or proportions of unit \eqn{w_{ij}}
#'   \itemize{
#'    \item Generate subarea random effect \eqn{u_{ij}}~\eqn{N(0,8)}
#'    \item Generate area random effect \eqn{v_{i}} ~ \eqn{N(0,8)}
#'    \item Generate auxilary variabel on subarea level \eqn{x_{ij1}}~ \eqn{U(0,1)}
#'    \item Generate auxilary variabel on subarea level \eqn{x_{ij2}}~\eqn{N(10,1)}
#'    \item Generate unit proportion on each subarea \eqn{w_{ij}}~\eqn{U(10,20)}
#'    \item Generate sampling error \eqn{e_{ij}}~\eqn{N(0,\sigma^{2}_{e})} where \eqn{\sigma^{2}_{e}}~\eqn{IG(1,1)} is a variance of direct estimator
#'    \item Setting coefficient \eqn{\beta_{0}=\beta_{1}=\beta_{2} =1}
#'    \item Calculate target parameter \eqn{\mu_{ij}=\beta_{0} +\beta_{1}x_{ij1} +\beta_{2}x_{ij2}+v_{i}+u_{ij}}
#'    \item Calculate direct estimator \eqn{y_{ij}=\mu_{ij}+e_{ij}}
#'   }
#'   \item Auxiliary variables \eqn{x_{ij1}},\eqn{x_{ij2}}, direct estimation (\eqn{y_{ij}}) ,vardir, and weight \eqn{w_{ij}} are combined in a dataframe called dataTwofold
#' }
#'
#' @format A data frame with 90 rows and 6 columns:
#' \describe{
#'  \item{y}{Direct estimation of subarea mean \eqn{y_{ij}}}
#'  \item{x1}{Auxiliary variabel of \eqn{x_{ij1}}}
#'  \item{x2}{Auxiliary variabel of \eqn{x_{ij2}}}
#'  \item{codearea}{Index that describes the code relating to warea for each subarea}
#'  \item{w}{Unit proportion on each subarea or weight \eqn{w_{ij}}}
#'  \item{vardir}{Sampling variance of direct estimator \eqn{y_{ij}}}
#' }
#'
"dataTwofold"
