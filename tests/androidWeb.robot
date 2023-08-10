*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           AppiumLibrary

*** Variables ***
${TOKEN}            ENTER TOKEN HERE  
${APPIUM_SERVER}    https://dev-us-pao-3.headspin.io:7012/v0/${TOKEN}/wd/hub
${PLATFORM_NAME}    android
${DEVICE_NAME}      SM-G781U1
${APP_PACKAGE}      com.android.chrome
${APP_ACTIVITY}     com.google.android.apps.chrome.Main
${UDID}             RFCN908TC7Z



*** Test Cases ***
Launch Mobile Application
	Open Application	${APPIUM_SERVER}
	...    platformName=${PLATFORM_NAME}
	...    deviceName=${DEVICE_NAME}
	...    appPackage=${APP_PACKAGE}
	...    appActivity=${APP_ACTIVITY}
	...    automationName=UiAutomator2
	...    udid=${UDID}
	...    headspin:capture=false
    ...    autoAcceptAlerts=true
    
    
    Go To URL           https://www.google.com
  	[Teardown] Application   
    