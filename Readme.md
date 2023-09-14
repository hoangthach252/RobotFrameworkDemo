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


