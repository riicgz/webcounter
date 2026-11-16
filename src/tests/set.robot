*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter To Zero

*** Test Cases ***
When counter is set to 8 the counter value is eight 
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  8
    Click  button >> text=Aseta arvo
    Get Text  body  *=  nappia painettu 8 kertaa

When counter is set to 18 the counter value is eighteen
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  18
    Click  button >> text=Aseta arvo
    Get Text  body  *=  nappia painettu 18 kertaa
