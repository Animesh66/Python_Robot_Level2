*** Settings ***

*** Variables ***
${MY_VALUE} =  50

*** Keywords ***

*** Test Cases ***
Testing a True IF statement
    run keyword if  ${MY_VALUE} > 50  Keyword 1  ELSE  Keyword 2