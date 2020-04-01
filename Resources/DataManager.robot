*** Settings ***
Documentation  Use this layer to get data from external files
Library  ../CustomLibs/Csv.py


*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]  ${Data}