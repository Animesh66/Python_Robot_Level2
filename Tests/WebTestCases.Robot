*** Settings ***

*** Variables ***

${MY_VALUE} =  50  # Scaler variables
@{NEW_LIST} =  cat  dog  goat  # List variables
&{NEW_DICT} =  i=1  j=2  k=3  # Dictionary Variables

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

Testing a Loop Statement using list
    @{MY_LIST} =  create list  cat  dog  elephant
    FOR  ${ITEM}  IN  @{MY_LIST}
        log  ${ITEM}
    END

Testing a dictionary creation
    &{MY_DICT}  create dictionary  dev=dev.url.com  test=qa.url.com  prod=www.url.com
    log  ${MY_DICT.test}
    log  ${NEW_DICT.i}
    log  ${NEW_LIST}[0]

