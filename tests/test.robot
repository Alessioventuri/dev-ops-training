*** Settings ***
Documentation       Search Google
Library             SeleniumLibrary
*** Variables ***

${GOOGLE_URL}    http://www.google.com
${BROWSER}    headlesschrome 



*** Test Cases ***
Search Google with "Google Search" button via Chrome

    Open Browser     ${GOOGLE_URL}    ${BROWSER}   
