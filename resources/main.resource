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
Resource    locators/var_home.resource
Resource    locators/var_events.resource
Resource    locators/var_inscription.resource
Resource    locators/var_sidebar.resource