*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  ../Resources/Common.robot
Resource  ../Resources/CarsApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# python -m robot -d Results Tests/Cars.robot

*** Variables ***

*** Test Cases ***
Should see correct error messages with invalid logins
    CarsApp.Login with Many Invalid Credentials
