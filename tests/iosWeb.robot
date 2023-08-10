*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           AppiumLibrary

*** Variables ***
${KEY}                  
${APPIUM_SERVER}        https://dev-us-pao-5.headspin.io:7010/v0/23572edfd1aa4cf8aa798baf7c432fdc/wd/hub
${PLATFORM_NAME}        ios
${DEVICE_NAME}          iPhone 11
${BUNDLE_ID}            com.apple.mobilesafari
${PLATFORM_VERSION}     15.1
${UDID}                 00008030-000C343C21A3802E



*** Test Cases ***
Launch Mobile Application
	Open Application	${APPIUM_SERVER}
	...    platformName=${PLATFORM_NAME}
	...    deviceName=${DEVICE_NAME}
	...    platformVersion=${PLATFORM_VERSION}
	...    bundleId=${BUNDLE_ID}
	...    automationName=xcuitest
	...    udid=${UDID}
	...    headspin:capture=false
    ...    autoAcceptAlerts=true
    

    Go To URL           https://www.google.com
    [Teardown] Close Application   
    