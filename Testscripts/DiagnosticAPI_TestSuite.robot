##############################################################################
#    Filename   :
#    Description:
#    Version    :  1.0
#    Created    :
#    Compiler   :  python
#    Author     :
#    Company    :
#    Revision History:
#
################################################################################
*** Settings ***

Library         Selenium2Library
#Library      ../SitePackages/Selenium2Library/

Resource    ../ResourceFiles/ResourceFile_DiagnosticAPI.txt

Suite Setup   Create Connection

*** Variables ***

*** Comment ***

*** Test Cases ***

Test Case: 01- GET Request Response Code
   [Teardown]    Test Teardown    ${TEST STATUS}    01
#  Syntax:  GET  <Endpoint>   <Expected_Status_Code>
   GET   status    200
   GET   DiagnosticRequests    200

#  Example of GET with parameter in the endpoint url
#  Syntax:     GET    <Endpoint>    <Expected_Status_Code>    <Parameters if any>
   GET   DiagnosticRequests    200   c2c35aa9-f9f0-4511-903d-00384af79418


Test Case: 02- GET Request Content
   [Teardown]    Test Teardown    ${TEST STATUS}    02
#  Syntax:     GET CONTENT    <Endpoint>    <Expected_Status_Code>    <JSON path for Object>  <Object index, defaults to zero>
   GET CONTENT    DiagnosticRequests    200    diagnosticRequestId
   GET CONTENT    DiagnosticRequests    200    diagnosticRequestId    1


Test Case: 03- POST Request
   [Teardown]    Test Teardown    ${TEST STATUS}    03
#  Syntax: POST   <Endpoint>    <Expected_Status_Code>    <JSON path for Object>  <JSON File Name>
   POST    BulkDiagnosticRequest    201    sample2






