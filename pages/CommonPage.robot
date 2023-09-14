*** Settings ***
Resource   ../configs/TestConfigs.robot

Library    Browser


*** Keywords ***
The User Opens The Login Page
    [Documentation]
	...  Open the browser and navigate to the login page  ...
	
    New Page    ${ENV_URL}
    Set Viewport Size	    ${WINDOW_WIDTH}     ${WINDOW_HEIGHT}
    Set Browser Timeout     ${BROWSER_TIMEOUT}