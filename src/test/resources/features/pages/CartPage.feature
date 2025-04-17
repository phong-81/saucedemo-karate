Feature: Checkout Page

Scenario: Complete checkout process
  When click('.checkout_button')
  Then waitFor('#checkout_info_container')
