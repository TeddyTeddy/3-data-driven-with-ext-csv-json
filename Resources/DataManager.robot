*** Settings ***
Documentation  Use this layer to get data from external files
Library  ../CustomLibs/CSV_Reader.py   ${INVALID_CREDENTIALS_PATH_CSV}
Library  ../CustomLibs/JSON_Reader.py

*** Keywords ***
Get Row From CSV File
    ${row} =  read row from csv file
    [Return]  ${row}

Get Rows From JSON File
    ${rows} =   read json file    ${INVALID_CREDENTIALS_PATH_JSON}
    [Return]    ${rows}