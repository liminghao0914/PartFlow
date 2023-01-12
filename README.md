# PartFlow: A Visualization Tool for Application Partitioning and Workload Offloading in Mobile Edge Computing
This software, PartFlow, is designed to support the analysis of components in mobile applications from multiple aspects and effectively helps researchers make partitioning and offloading algorithms. By the binary instrument of mobile applications, PartFlow collects application component data from user devices remotely. We design several interactive diagrams to evaluate the component performances and indicate the transition patterns based on the gathered data. Further, PartFlow enables the user to forecast the probability based on a deep learning (DL) measure of an execution sequence for some algorithms’ purposes. 

# Project Title

[![Build Status](https://travis-ci.com/username/project-title.svg?branch=master)](https://travis-ci.com/username/project-title)
[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/username/project-title/blob/master/LICENSE)

## Table of Contents
- [Download](#download)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Troubleshooting](#troubleshooting)
- [FAQ](#faq)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Download
    git clone https://github.com/liminghao0914/PartFlow.git

## Requirements
### Python3.10
Install Python by

    sudo apt-get install python==3.10

### Enjarify
Install [Enjarify](https://github.com/Storyyeller/enjarify) by

    git clone https://github.com/Storyyeller/enjarify.git
    ln -s "$PWD/enjarify.sh" /usr/local/bin/enjarify

### JDK
Install JDK by

    sudo apt-get install openjdk-19-jdk-headless

### Jad
Install Jad, please download it [here](http://www.javadecompilers.com/jad) to get the static binary version. 

First, decompress the zip by

    tar -zxf jad.zip

Then, make 'jad' executable by

    sudo chmod a+x jad
    cp -r jad /usr/local/bin

## Installation
All dependencies are imported by static files. To set up the PartFlow system, we can just install all python modules by

    pip install -r requirements.txt

## Usage
After installation, we can easily run the system by

    python run.py
    
## Examples
Watch the two video below to gain the basic capacity and functionality of PartFlow:

## Screenshots

## License
Include the license for your project, so others know how they can use it.

## Acknowledgements
Thank the user for visiting your project and encourage them to contribute.
