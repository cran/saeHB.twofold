
<!-- README.md is generated from README.Rmd. Please edit that file -->

# saeHB.twofold

<!-- badges: start -->

<!-- badges: end -->

Provides several functions for area and subarea level of small area
estimation under Twofold Subarea Level Model using hierarchical Bayesian
(HB) method with Univariate Normal distribution for variables of
interest. Some dataset simulated by a data generation are also provided.
The ‘rjags’ package is employed to obtain parameter estimates using
Gibbs Sampling algorithm. Model-based estimators involves the HB
estimators which include the mean, the variation of mean, and the
quantile. For the reference, see Rao and Molina (2015), Torabi (2014),
Leyla Mohadjer et.al. (2007), and Erciulescu et al. (2018).

## Author

Reyhan Saadi, Azka Ubaidillah

## Maintaner

Reyhan Saadi <221810557@stis.ac.id> or <aansum99@gmail.com>

## Function

  - `NormalTF()` This function gives estimation of subarea and area
    means simultaneously under Twofold Subarea Small Area Estimation
    Model Using Hierarchical Bayesian Method with Normal distribution
    based on model in Torabi (2014)

## Installation

You can install the development version of saeHB.twofold from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("reymath99/saeHB.twofold")
```

## Example

This is a basic example of using NormalTF function to make an estimate
based on sample data in this package

``` r
library(saeHB.twofold)
data(dataTwofold)
#for dataset with nonsampled subarea use dataTwofoldNS
#fitting model
model=NormalTF(y~x1+x2,vardir="vardir",area = "codearea",weight = "w",data=dataTwofold)
```

Extract subarea mean estimation

``` r
model$Est_sub
```

Extract area mean estimation

``` r
model$Est_area
```

Extract coefficient estimation \(\beta\)

``` r
model$coefficient
```

Extract estimation of subarea random effect variance \(\sigma^2_u\) and
area random effect variance \(\sigma^2_v\)

``` r
model$refVar
```

Calculate relative standard error or CV

``` r
CV=(model$Est_sub$SD)/(model$Est_sub$Mean)*100
#cv summaries
summary(CV)
```

## References

  - Mohadjer, L.K., Rao, J.N., Liu, B., Krenzke, T., & Kerckhove, W.V.
    (2007). Hierarchical Bayes Small Area Estimates of Adult Literacy
    Using Unmatched Sampling and Linking Models.
  - Torabi, M., & Rao, J.N. (2014) . On small area estimation under a
    sub-area level model. J. Multivar. Anal., 127, 36-55.
    <https://doi.org/10.1016/j.jmva.2014.02.001>
  - Rao, J.N.K & Molina. (2015). Small Area Estimation 2nd Edition. New
    York: John Wiley and Sons, Inc.
  - Erciulescu, A.L., Cruze, N.B. and Nandram, B. (2019), Model-based
    county level crop estimates incorporating auxiliary sources of
    information. J. R. Stat. Soc. A, 182: 283-303.
    <https://doi.org/10.1111/rssa.12390>
