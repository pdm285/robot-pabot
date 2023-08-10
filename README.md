1. Grab your Token from your settings page ()
2. in line 6 of both andridWeb.robot and iosWeb.robot, replace 'ENTER TOKEN HERE' with your api token
3. run 'pip install robotframework-appiumlibrary' in your command line to install Robot Appium library
4. run 'pip install robotframework-pabot' in your command line to install PABot for parallel execution
5. execute single tests by running 'robot <filename>' such as 'robot tests/androidWeb.robot'
6. Execute parallel tests by running 'pabot <folder>' such as 'pabot tests'


* To enable performance capture, you will want to change the 'headspin:capture' capability to 'true' in the test file