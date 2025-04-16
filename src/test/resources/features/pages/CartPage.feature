Feature: Checkout Page

Scenario: Complete checkout process
  When click('#checkout')
  Then waitFor('#checkout_info_container')
