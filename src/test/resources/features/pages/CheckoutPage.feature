Feature: Checkout Page

Scenario: Complete checkout process
  * def sleep = function(pause){ java.lang.Thread.sleep(pause*1000) }
  Given def user = __arg
  And input('#first-name', user.firstName)
  And input('#last-name', user.lastName)
  And input('#postal-code', user.postalCode)
  Then click("input[value='CONTINUE']")
  Then click('{a}FINISH')
