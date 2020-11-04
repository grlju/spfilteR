# spfilteR

<!-- badges: start -->
[![codecov](https://codecov.io/gh/sjuhl/spfilteR/branch/master/graph/badge.svg)](https://codecov.io/gh/sjuhl/spfilteR)
[![Travis build status](https://travis-ci.com/sjuhl/spfilteR.svg?branch=master)](https://travis-ci.com/sjuhl/spfilteR)
[![license](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)
<!-- badges: end -->

This package provides a number of useful functions that facilitate the analysis of spatially autocorrelated data based on the eigenfunction decomposition of an exogenously given connectivity matrix _**W**_. The main function `getEVs()` specifies a projection matrix _**M**_ and symmetrizes the connectivity matrix by _**V**_=1/2*(_**W**_+_**W**_') before decomposing the transformed matrix _**MVM**_. If covariates are supplied, this function constructs the projection matrix by: _**M**_=_**I**_-_**X**_(_**X**_'_**X**_)<sup>-1</sup> _**X**_'. Eigenvectors obtained from this specification are not only mutually uncorrelated but also orthogonal to the covariates in _**X**_. In contrast, if no covariates are supplied, the projection matrix simplifies to _**M**_= _**I**_-_**11**_'/*n*, where _**1**_ is a vector of ones and *n* is the number of units. Besides the eigenvectors and eigenvalues, `getEVs()` also provides the Moran coefficient associated with each eigenvector.

Subsequently, these eigenvectors can be used to perform semiparametric spatial filtering in a regression framework. The functions `lmFilter()` and `glmFilter()` in this package implement unsupervised eigenvector selection based on a stepwise regression procedure and different objective functions, including i) the maximization of model fit, ii) minimization of residual autocorrelation, iii) the statistical significance of residual autocorrelation, and iv) the statistical significance of candidate eigenvectors. If other selection criteria are required or a model needs to be fitted that is currently not supported by these two functions, supervised eigenvector selection can be performed as well using the basic [```stats::lm()```](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/lm) and [```stats::glm()```](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/glm) commands in conjunction with the output generated by `getEVs()`. This option provides additional flexibility.
