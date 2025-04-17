Feature: Login Page

Scenario: login with username and password
  Given def user = __arg
  When driver baseUrl
  And input('#user-name', user.username)
  And input('#password', user.password)
  And click('#login-button')
  Then waitFor('.inventory_list')

