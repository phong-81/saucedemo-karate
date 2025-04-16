Feature: Checkout Page

Scenario: Complete checkout process
  Given def user = __arg
  And input('#first-name', user.firstName)
  And input('#last-name', user.lastName)
  And input('#postal-code', user.postalCode)
  And click('#continue')
  Then click('#finish')
