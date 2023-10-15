# Robot Framework Demo

This is sample Robot Framework project, I have developed 2 test cases against [SauceDemo web app]( https://www.saucedemo.com).

This project is developed to demontrate Web UI automation using Robot Framework and Browser library powered by Playwright.


## File organization
```
|- ROBOTFWDEMO/                              // Home folder for robotframework project
  |- configs/TestConfigs.robot               // Test env and browser configurations
  |- pages/*.robot                           // Page objects locators and keywords
  |- tests/DemoTestCase.robot                // Test cases agaist SauceDemo Web application
  |- user_data/*.json                        // Test data
|- .gitignore                                // Exclude the unnecessary files
|- README.md                                 // Overview and guideline to setup and run tests
```

## Installation
1. Download and Install [Python](https://www.python.org/downloads/).
2. Check Python installation

    `> python3 -V`

3. Install [pip](https://pip.pypa.io/en/stable/installation/).

    `> python get-pip.py`

4. Install Browser library and JSONLibrary from PyPi with pip.

    `> pip install robotframework-browser`
    `> pip install robotframework-jsonlibrary`
    
5. Initialize the Browser library.

    `> rfbrowser init`
    
6. Download and install VSCode [VSCode](https://code.visualstudio.com/docs/?dv=osx "VSCode").
7. Install [Robot Framework Language Server](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp) extension from VSCode's Marketplace


## Run/Debug Test
1. Run/Debug using VSCODE IDE
2. Run using commandline
 `thachhoang@Thachs-Air RobotFwDemo % robot tests/DemoTestCase.robot`


## Run Tests in parallel using Pabot plugin
1. install plugin pabot
 `thachhoang@Thachs-Air RobotFwDemo % pip install -U robotframework-pabot`
2. run tests in parallel of test level
 `thachhoang@Thachs-Air RobotFwDemo % pabot --testlevelsplit tests/DemoTestCase.robot`
3. run tests in parallel of suite level
 `thachhoang@Thachs-Air RobotFwDemo % pabot tests`


 ## Run Tests using Docker
1. create Dockerfile with these 2 commands below:
 `FROM marketsquare/robotframework-browser:latest`
 `RUN pip3 install --no-cache-dir --user --upgrade robotframework-jsonlibrary`
2. build a custom docker image from base image marketsquare/robotframework-browser
 `thachhoang@Thachs-Air RobotFwDemo % docker build -t marketsquare/robotframework-browser:custom .`
3. run tests in docker container 
 `thachhoang@Thachs-Air RobotFwDemo % docker run --rm -v $(pwd)/:/test --ipc=host --user pwuser --security-opt seccomp=seccomp_profile.json marketsquare/robotframework-browser:custom bash -c "robot --outputdir /test/output /test" `