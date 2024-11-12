*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is set to a specific value
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Click Button  Paina
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 3 kertaa
    Input Text  name=value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa