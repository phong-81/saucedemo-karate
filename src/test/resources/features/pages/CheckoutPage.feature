Feature: Checkout Page

Background:
  * def user = __arg
  * def firstName = "//input[@data-test='firstName']"
  * def lastName = "//input[@data-test='lastName']"
  * def postalCode = "//input[@data-test='postalCode']"
  * def continueBtn = "//input[@type='submit' and @value='CONTINUE']"
  * def finishBtn = "//a[@class='btn_action cart_button' and text()='FINISH']"

@completeCheckout
Scenario: Complete checkout process
  * input(firstName, user.firstName)
  * input(lastName, user.lastName)
  * input(postalCode, user.postalCode)
  * click(continueBtn)
  * click(finishBtn)
