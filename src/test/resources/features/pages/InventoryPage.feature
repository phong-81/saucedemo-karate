Feature: Inventory Page

Scenario: Add an item to cart
  Given def user = __arg
  And def itemSelector = "//*[text()='" + user.item + "']/ancestor::div[@class='inventory_item']//button"
  When click(itemSelector)
  Then click('.shopping_cart_link')
