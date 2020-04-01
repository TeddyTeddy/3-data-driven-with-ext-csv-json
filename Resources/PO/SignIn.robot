*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_IN_EMAIL_FIELD} =          xpath=//input[@ng-model='$ctrl.credentials.email']
${SIGN_IN_PASSWORD_FIELD} =       xpath=//input[@ng-model='$ctrl.credentials.password']
${LOGIN_SUBMIT_BUTTON} =          Log In

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL}[${ENVIRONMENT}]  ${LOGIN_URL}
    Go To  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    run keyword unless  '${Credentials[0]}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL_FIELD}  ${Credentials[0]}
    run keyword unless  '${Credentials[1]}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD_FIELD}  ${Credentials[1]}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage}

