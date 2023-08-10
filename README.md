1. Grab your Token from your settings page ()
2. in line 6 of both andridWeb.robot and iosWeb.robot, replace 'ENTER TOKEN HERE' with your api token
3. run 'pip install robotframework-appiumlibrary' in your command line to install Robot Appium library
4. run 'pip install robotframework-pabot' in your command line to install PABot for parallel execution
5. execute single tests by running 'robot <filename>' such as 'robot tests/androidWeb.robot'
6. Execute parallel tests by running 'pabot <folder>' such as 'pabot tests'


* To enable performance capture, you will want to change the 'headspin:capture' capability to 'true' in the test file


# Project Setup and Execution Guide

This guide will help you set up and execute automated tests using Robot Framework and Appium for both Android and iOS platforms.

## Prerequisites

1. Grab your API Token from your [Settings Page](https://ui.headspin.io/mysettings).

## Installation

1. Replace 'ENTER TOKEN HERE' in line 6 of both `androidWeb.robot` and `iosWeb.robot` files with your API token.
2. Install Robot Appium Library by running the following command in your command line:
```sh
pip install robotframework-appiumlibrary
```
3. Install Robot PABot integration to handle parallel execution:
```sh
pip install robotframework-pabot
```

## Running Tests

* Execute single tests by calling `robot` directly followed by the test path
```sh
robot tests/androidWeb.robot
```

* Execute parallel tests by calling `pabot` directly followed by the folder.  supports other parameters
```sh
pabot tests
```

* To enable performance capture, set the `headspin:capture` capability to `true`