Feature: Place order on saucedemo.com using POM and Data Driven

Scenario Outline: Order product
  Given def data = karate.read('classpath:data/order-data.json')
  And def user = data[<index>]

When call read('classpath:features/pages/LoginPage.feature@login') user
And call read('classpath:features/pages/InventoryPage.feature@addToCart') user
And call read('classpath:features/pages/CartPage.feature@checkout')
And call read('classpath:features/pages/CheckoutPage.feature@completeCheckout') user
  
  Then match driver.url contains '/checkout-complete.html'

Examples:
  | index |
  | 0     |
  | 1     |
  | 2     |
