*** Settings ***

*** Variables ***
${MY_VALUE} =  50

*** Keywords ***
Keyword 1
    log  Keyword 1
Keyword 2
    Log  Keyword 2
*** Test Cases ***
Testing a True IF statement
    run keyword if  ${MY_VALUE} > 50  Keyword 1
    ...  ELSE  Keyword 2