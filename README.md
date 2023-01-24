# PartFlow: A Visualization Tool for Application Partitioning and Workload Offloading in Mobile Edge Computing
This software, PartFlow, is designed to support the analysis of components in mobile applications from multiple aspects and effectively helps researchers make partitioning and offloading algorithms. By the binary instrument of mobile applications, PartFlow collects application component data from user devices remotely. We design several interactive diagrams to evaluate the component performances and indicate the transition patterns based on the gathered data. Further, PartFlow enables the user to forecast the probability based on a deep learning (DL) measure of an execution sequence for some algorithms’ purposes. 

<!-- [![Build Status](https://travis-ci.com/username/project-title.svg?branch=master)](https://travis-ci.com/username/project-title) -->
[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/liminghao0914/PartFlow/blob/master/LICENSE)

## Table of Contents
- [Download](#download)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Screenshots](#screenshots)
- [Troubleshooting](#troubleshooting)
- [License](#license)

## Download
    git clone https://github.com/liminghao0914/PartFlow.git

## Quick Start (Recommended)
If you want a quick start without any environment issue, please download this VM image [here](). By using this image, you will get a smooth experience on using PartFlow without any configuration and input-command. 

If PartFlow does not start up after login, please refer to troubleshooting for more information. Thank you for your time.

If you want to deploy the system in your own local environment, please read the following context. (only for Liux)

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
All dependencies are imported by static files. To set up the PartFlow system, we can just install all python modules in your global envrionment by

    pip install -r requirements.txt

### Virtual Environment

To set up and use a virtual environment for PartFlow, follow these instructions:

1. Activate the virtual environment by running `source env_mmsys/bin/activate`.

2. Same as the previous instruction, install the required packages by running `pip install -r requirements.txt`. This will install all the packages listed in the `requirements.txt` file.

3. When you're done working on the project, deactivate the virtual environment by running `deactivate`.

Note:
- When you activate the virtual environment, your shell's prompt will change to indicate that you're in a virtual environment.
- You should always use the virtual environment when working on the project, so that the packages you install are isolated from the system-wide packages.

## Usage
After installation, we can easily run the system by

    python run.py
    
## Examples
Watch the two videos below to gain the basic capacity and functionality of PartFlow:
- Implementation of PartFlow: [https://youtu.be/mtjek9mmNbc](https://youtu.be/mtjek9mmNbc)
- Dynamic Mode: [https://youtu.be/6Xyl2Uq_54U](https://youtu.be/6Xyl2Uq_54U)

## Screenshots
Here's the screenshot of PartFlow. To conviently gain the overview, PartFlow will be launched with a default graph.
![Default Graph](https://github.com/liminghao0914/PartFlow/blob/master/screenshots/overview_defaultgrpah.png)

## Troubleshooting
If you find any trouble using VM image, it would probably be casued by missing AVX, which is required by Tensorflow library.
- Please refer to [https://stackoverflow.com/questions/65780506/how-to-enable-avx-avx2-in-virtualbox-6-1-16-with-ubuntu-20-04-64bit](https://stackoverflow.com/questions/65780506/how-to-enable-avx-avx2-in-virtualbox-6-1-16-with-ubuntu-20-04-64bit) to enable AVX in your virtualbox.

If you run into any issues while setting up or running the project in your local environment, please check the following:

- Make sure you have the correct version of Python installed. You can check the version by running `python --version` in the command line.

- Check that you have all the required dependencies installed. You can check the dependencies listed in the `requirements.txt` file.

- Make sure you have activated the virtual environment before running the project.

- Check that the path to the script or environment is correct.

- If the project uses a database, make sure the database is running and properly configured.

- Make sure the project has the right permissions to access the required files and directories.

- Check the logs for any error messages.

- If you still can't find a solution to your issue, please open an issue in the GitHub repository and provide as much information as possible about the problem, including error messages and the steps you've taken to troubleshoot.

## License
Check the license [here](https://github.com/liminghao0914/PartFlow/blob/master/LICENSE).

## Acknowledgements
Sincere thanks to Prof. CAI, Prof. ZHAO for their supports.
