Feature: Inventory Page

Background:
  * def user = __arg
  * def itemSelector = "//div[normalize-space(@class)='inventory_item_name' and normalize-space(text())='" + user.item + "']/ancestor::div[contains(@class, 'inventory_item')]//button"
  * def cartLink = ".shopping_cart_link"

@addToCart
Scenario: Add an item to cart
  * click(itemSelector)
  * click(cartLink)
