# frozen_string_literal: true

# This class is for YourCart
class YourCart
  CONTINUE_SHOPPING_BUTTON = { name: 'continue-shopping' }.freeze
  CHECKOUT_BUTTON = { name: 'checkout' }.freeze
  FIRST_NAME_FIELD = { name: 'firstName' }.freeze
  LAST_NAME_FIELD = { name: 'lastName' }.freeze
  ZIP_CODE_FIELD = { name: 'postalCode' }.freeze
  CONTINUE_BUTTON = { name: 'continue' }.freeze
  CANCEL_BUTTON = { name: 'cancel' }.freeze
  FINISH_BUTTON = { name: 'finish' }.freeze
  BACK_HOME_BUTTON = { name: 'back-to-products' }.freeze
  REMOVE_BACKPACK = { name: 'remove-sauce-labs-backpack' }.freeze
  REMOVE_BOLT_TSHIRT = { name: 'remove-sauce-labs-bolt-t-shirt' }.freeze
  REMOVE_ONESIE = { name: 'remove-sauce-labs-onesie' }.freeze
  REMOVE_BIKE_LIGHT = { name: 'remove-sauce-labs-bike-light' }.freeze
  REMOVE_JACKET = { name: 'remove-sauce-labs-fleece-jacket' }.freeze
  REMOVE_RED_TSHIRT = { name: 'remove-test.allthethings()-t-shirt-(red)' }.freeze
  REMOVE_CART_ITEM = { css: '.removed_cart_item' }.freeze
  CHECKOUT_OVERVIEW = { css: '.title' }.freeze
  ERROR_MESSAGE = { css: '.error.error-message-container' }.freeze
  THANKS_MESSAGE = { css: '.complete-header' }.freeze

  def initialize(driver)
    @driver = driver
  end

  # locates the continue shopping button on cart page
  def continue_shopping_element
    @driver.find_element(CONTINUE_SHOPPING_BUTTON)
  end

  # clicks the continue shopping button on cart page
  def click_continue_shopping
    continue_shopping_element.click
  end

  # clicks the checkout button on cart page
  def click_checkout
    @driver.find_element(CHECKOUT_BUTTON).click
  end

  # sends data to first name field
  def fill_first_name(value)
    @driver.find_element(FIRST_NAME_FIELD).send_keys(value)
  end

  # sends data to last name field
  def fill_last_name(value)
    @driver.find_element(LAST_NAME_FIELD).send_keys(value)
  end

  # send data to zip code field
  def fill_zip_code(value)
    @driver.find_element(ZIP_CODE_FIELD).send_keys(value)
  end

  # locates the continue button on cart page
  def continue_button_element
    @driver.find_element(CONTINUE_BUTTON)
  end

  # clicks the continue button on the page
  def click_continue
    continue_button_element.click
  end

  # clicks cancel button on the page
  def click_cancel
    @driver.find_element(CANCEL_BUTTON).click
  end

  # locates the finish button element
  def finish_button_element
    @driver.find_element(FINISH_BUTTON)
  end

  # clicks the finish button
  def click_finish
    finish_button_element.click
  end

  # locates the back to home button element
  def back_home_element
    @driver.find_element(BACK_HOME_BUTTON)
  end

  # clicks back to home button
  def click_back_home
    back_home_element.click
  end

  # clicks the remove button for Sauce Labs Backpack on cart page
  def click_remove_backpack
    @driver.find_element(REMOVE_BACKPACK).click
  end

  # clicks the remove button for Sauce Labs Bolt T-Shirt on cart page
  def click_remove_bolt_tshirt
    @driver.find_element(REMOVE_BOLT_TSHIRT).click
  end

  # clicks the remove button for Sauce Labs Onesie on cart page
  def click_remove_onesie
    @driver.find_element(REMOVE_ONESIE).click
  end

  # clicks the remove button for Sauce Labs Bike Light on cart page
  def click_remove_bike_light
    @driver.find_element(REMOVE_BIKE_LIGHT).click
  end

  # clicks the remove button for Sauce Labs Fleece Jacket on cart page
  def click_remove_jacket
    @driver.find_element(REMOVE_JACKET).click
  end

  # clicks the remove button for Red T-Shirt on cart page
  def click_remove_red_tshirt
    @driver.find_element(REMOVE_RED_TSHIRT).click
  end

  # locates the element that is expected not be displayed when all items from the cart are removed
  def removed_item
    @driver.find_element(REMOVE_CART_ITEM)
  end

  # locates the overview label on checkout step two page
  def overview_element
    @driver.find_element(CHECKOUT_OVERVIEW)
  end

  # tekes the text from error message for empty field on ckeckout step one page
  def error_message_element_text
    @driver.find_element(ERROR_MESSAGE).text
  end

  # takes the text from thank message when you finish the order
  def thank_you_message_text
    @driver.find_element(THANKS_MESSAGE).text
  end
end
