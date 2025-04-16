Feature: Test

Scenario: Open Firefox
  * driver 'https://www.google.com'
  * waitForUrl('google')
