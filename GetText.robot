*** Settings ***

Documentation    A simple robot
...              Opens a website

Library    RPA.Browser.Playwright
Library    RPA.FileSystem
Library    RPA.HTTP


*** Tasks ***
Store Webpage Containt
    Open Browser   https://robotframework.org/
    ${text} =    Get Text   css= h1.title
    Create File    ${OUTPUT_DIR}${/}text.txt    ${text}    overwrite=True
    [Teardown]    Close Browser