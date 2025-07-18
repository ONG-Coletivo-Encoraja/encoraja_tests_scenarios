*** Settings ***

Library     SeleniumLibrary
Library    OperatingSystem

#=================================== data ===================================#
Resource    data/urls.resource
Resource    data/env.resource


#=================================== keywords ===================================#
#flows
Resource    keywords/flows/kw_login.resource

#pages
Resource    keywords/pages/kw_login.resource

#validations


#=================================== locators ===================================#
Resource    locators/var_login.resource