*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Variables        ../Locators/xpaths.py




*** Keywords ***
Launch web App
    maximize browser window


Login To Application
    Log                             Clearing existing email ID
    Clear Element Text              ${email_text_filed}

    Input Text                      ${email_text_filed}     admin@yourstore.com
    Log                             Clearing existing password
    Clear Element Text              ${password_text_filed}
    Input Text                      ${password_text_filed}     admin
    Click Element                   ${login_btn}
    Log                             login successfully
    #execute javascript              window.scrollTo(0,2000)
    execute javascript              window.scrollTo(0, document.body.scrollHeight)
    #Scroll Element Into View        xpath:/html/body/div[3]/div[2]/div/div/div/div[3]/b
    #Click Element                   ${logout_btn}
    execute javascript              window.scrollTo(0, -document.body.scrollHeight)
    Log                             logout successfully














