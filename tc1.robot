*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${browser}   chrome
${url}   https://www.google.com




*** Test Cases ***
Login Test
    open browser    ${url}  ${browser}
    maximize browser window
    input text    xpath://input[@type='text']    RobotFramework
    click button    xpath://div[@class='FPdoLc lJ9FBc']//input[@class='gNO89b']

Print the required links
    ${web1}=     get element attribute    xpath://div[@class='eKjLze']//a   href
    ${web2}=    get text    xpath://div[@class='eKjLze']//a/h3
    log to console    ${web1}
    log to console    ${web2}
    ${web3}=    get text    //a[@href='https://github.com/robotframework/robotframework']//div[@class='TbwUpd NJjxre']//cite[@role='text']
    ${web4}=    get text    //h3[normalize-space()='Robot Framework - GitHub']
    log to console    ${web3}
    log to console    ${web4}



*** Keywords ***







