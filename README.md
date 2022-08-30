# MIDS 271 Compute 

This repo holds the pieces to build a Docker image that covers most (but not all...) of building a compute environment for the UC Berkeley MIDS Course "Discrete, Times Series, and Panel Estimation".

# Contributing 

We want your contributions! If you have a package that should be included in this image, add them via PR to the `./DESCRIPTION` file. Please note:  

- We're trying prefer packages that are hosted on CRAN (so we don't have to vet and manage a bunch of other repos that might be serving); 
- You need to include a version along with the name of the package -- i.e. datatable ( >= 1.3.1 ) 
- Please ensure that this builds on your local before you submit the PR. 

# Building locally 

To build this locally you will need the following: 

- This repository; 
- A running Docker engine 

Then, to build, from within the directory issue: 

``` shell
docker build -t 271-compute . 
```
