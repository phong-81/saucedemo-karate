Feature: Login Page

Background:
  * def user = __arg
  * driver baseUrl
  * def userName = "//input[@data-test='username']"
  * def password = "//input[@data-test='password']"
  * def loginBtn = "//input[@id='login-button']"
  * def inventoryList = ".inventory_list"

@login
Scenario: login with username and password
  * input(userName, user.username)
  * input(password, user.password)
  * click(loginBtn)
  * waitFor(inventoryList)

