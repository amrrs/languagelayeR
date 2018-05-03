
languagelayeR
=============

[![Travis-CI Build Status](https://travis-ci.org/amrrs/languagelayeR.svg?branch=master)](https://travis-ci.org/amrrs/languagelayeR) 

**Package Development stoppped after realizing there is already a [better Package](https://github.com/ColinFay/languagelayeR) by ColinFay available for the same**

Overview
=========

The goal of `languagelayeR` is to detect language of the given string using LanguageLayer API.

Installation
------------

You can install `languagelayeR` from github with:

``` r
# install.packages("devtools")
devtools::install_github("amrrs/languagelayeR")
```

LanguageLayer API
------------------

The languagelayer API was built to provide a seamless, powerful and cost-effective way of automating language detection functionalities in any application, framework and programming language. Register [here](https://languagelayer.com/product) to get your API Key. Refer this [documentation](https://languagelayer.com/documentation) to understand more about the API.


Example
-------

This is a basic example which shows you how to use `languagelayeR` package to detect language of a string.

``` r
## Detect Language

detect_language(access_key = 'xxxx', query = 'சென்னை') #use your own API Key 

Output:

language_code language_name probability percentage reliable_result
1            ta         Tamil    1.725234        100           FALSE
```
