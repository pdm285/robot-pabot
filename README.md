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

* To enable performance capture, set the `headspin:capture` capability in each test file (line #25 in both files) to `true`