
*** Variables ***
# Configuration
${BROWSER} =  ff
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  profile/secure/login
${INVALID_CREDENTIALS_PATH_CSV}=       /home/hakan/Python/Robot/data-driven/3-data-driven-with-ext-csv-json/Data/Users.csv
${INVALID_CREDENTIALS_PATH_JSON}=      /home/hakan/Python/Robot/data-driven/3-data-driven-with-ext-csv-json/Data/Users.json