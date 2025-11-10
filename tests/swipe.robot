*** Settings ***
Resource    ../resources/base.resource


*** Test Cases ***
Deve remover o Darth Vader

    Start session
    Get started
    Navigate to     Star Wars
    Go to item      Lista      Darth Vader

    ${positions}    Get Element Location    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/textAbout" and @text="@darthvader"]

    
    ${start_x}    Set Variable        ${positions}[x]                              
    ${start_y}    Set Variable        ${positions}[y]                               
    ${offset_x}   Evaluate            ${positions}[x] - 650                  
    ${offset_y}   Set Variable        ${positions}[y]                                   

    Swipe    start_x=${start_x}    start_y=${start_y}    end_x=${offset_x}    end_y=${offset_y}    duration=10000

    Click Element    id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Darth Vader    
   

    Close
