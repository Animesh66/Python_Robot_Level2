*** Settings ***

*** Variables ***
${MY_VALUE} =  50

*** Keywords ***
Keyword 1
    log  Keyword 1
Keyword 2
    log  Keyword 2
Keyword 3
    log  Keyword 3
*** Test Cases ***
Testing a True IF statement
    run keyword if  ${MY_VALUE} > 50  Keyword 1
    ...  ELSE IF ${MY_VALUE} == 50  Keyword 3
    ...  ELSE  Keyword 2

Testing a Loop Statement
    FOR  ${ITEM}  IN RANGE  5
      log  ${ITEM}
    END


