Feature: Checkout Page

Background:
  * def checkoutBtn = "//a[contains(@class, 'checkout_button') and contains(text(), 'CHECKOUT')]"
  * def checkoutContainer = "//div[@id='checkout_info_container']"

@checkout
Scenario: Complete checkout process
  * click(checkoutBtn)
  * waitFor(checkoutContainer)
