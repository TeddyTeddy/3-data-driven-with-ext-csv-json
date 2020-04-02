*** Settings ***
Documentation  Use this layer to get data from external files
Resource  ../Data/InputData.robot
Library  ../CustomLibs/CSV_Reader.py   ${INVALID_CREDENTIALS_PATH_CSV}


*** Keywords ***
Get Row From CSV File
    ${Data} =  read row from csv file
    [Return]  ${Data}