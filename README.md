# spfilteR

[![license](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)

---

This package provides a number of useful functions that facilitate the analysis of spatially autocorrelated data based on the eigenfunction decomposition of an exogenously given connectivity matrix ***W***. The main function `getEVs` specifies a projection matrix ***M*** and symmetrizes the connectivity matrix by ***V***=1/2*(***W***+***W***') before decomposing the transformed matrix ***MVM***. If covariates are supplied, this function constructs the projection matrix by: ***M***=***I***-***X***(***X***'***X***)^-1 ***X***'. Eigenvectors obtained from this specification are not only mutually uncorrelated but also orthogonal to the covariates in ***X***. In contrast, if no covariates are supplied, the projection matrix simplifies to ***M***= ***I***-***11***'/*n*, where ***1*** is a vector of ones and *n* is the number of units. Besides the eigenvectors and eigenvalues, `getEVs` also provides the Moran coefficient associated with each eigenvector.

Subsequently, these eigenvectors can be used to perform semiparametric spatial filtering in a regression framework. The functions `lmFilter` and `glmFilter` in this package implement unsupervised eigenvector selection based on a steppwise regression procedure and different objective functions, including i) the maximization of model fit, ii) minimization of residual autocorrelation, and iii) the statistical significance of selected eigenvectors. If other selection criteria are required or a model needs to be fitted that is currently not supported by these two functions, supervised eigenvector selection can be performed as well using the basic [```lm```](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/lm) and [```glm```](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/glm) in conjunction with the output generated by `getEVs`. This option provides the full flexibility required by a given problem at hand.
