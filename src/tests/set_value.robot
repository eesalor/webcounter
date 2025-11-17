*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value 10 is written to the form field the value becomes 10
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa

Reset counter
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
