# qMRLab in a Workflow 

> [qMRLab](https://github.com/neuropoly/qMRLab) is an open-source software for quantitative MR image analysis. It is designed to bring all your quantitative MRI needs under one umbrella. You can watch our video below to find out more about qMRLab:

[<img src="https://github.com/neuropoly/qMRLab/blob/master/qMRLab-intro.png" width="1000">](https://www.youtube.com/watch?v=-yrbtCYDorI)

## My BrainHack School goals

***

##  1) Dockerize qMRLab

[<img src="https://github.com/agahkarakuzu/agahkarakuzu.github.io/blob/master/dockerqMR.png?raw=true" width="200" height="300">](https://hub.docker.com/r/neuropoly/qmrlab/)

Although  qMRLab is an open-source project, it is built on MATLAB with an intention to provide users with an easy-to-use GUI. Another fact is that most of our community users still prefer MATLAB. 

Yet... qMRLab supports Octave for CLI use. This opens the easy way for dockerizing qMRLab with Octave.

> I actually managed to make it happen. But easiest way is not the most efficient one. My Docker image is almost 9GB :(  

### Warning 9GB image! 

#### You can pull it: `docker pull neuropoly/qrmlab`

#### I created a small example with Jupyter Notebook and binderized it to make it online executable:

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/neuropoly/qMRLab/bids?filepath=qMRLab/mt_sat_example.ipynb)


### 1.1) Make Docker image lighter 

To achieve this, I am planning to compile qMRLab on MATLAB and create a new Docker Image using MCR (Matlab Runtime). 

### 1.2) Python python python! 

MATLAB says there is a way to create a python library with software developed on MATLAB. Let's see if it is possible "freely". 

This would make Docker Image way much smaller and also bring a big big advantage: Scripting on Python 

*** 
##  2) Towards making qMRLab a BIDS app 

### 2.1) Make qMRLab BIDS aware

Unfortunately, BIDS is currently missing lots of qMR data descriptions. But there is nothing that prevents us from integrating BIDS concept in qMRLab.

### 2.1) Take some steps towards making qMRLab a BIDS app

This will be mainly creating Boutiques descriptors and creating a Singularity container for HPC compatibility.

*** 
##  3) A Workflow Example

[PSOM](https://github.com/SIMEXP/psom) will be the start point. If I can achieve 1.2, why not nipype? 

If you have qMR data to fit (I know there are people), let's work together! 

