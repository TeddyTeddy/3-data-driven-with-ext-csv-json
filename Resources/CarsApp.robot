*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Login with Many Invalid Credentials
    [Arguments]  ${InvalidLoginScenarios}
    FOR  ${LoginScenario}  IN  @{InvalidLoginScenarios}
        run keyword and continue on failure  SignIn.Navigate To
        run keyword and continue on failure  Attempt Login  ${LoginScenario}
        run keyword and continue on failure  Verify Login Page Error Message  ${LoginScenario[2]}
    END

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  3s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}