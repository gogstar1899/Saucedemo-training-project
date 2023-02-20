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

  def continue_shopping_element # locates the continue shopping button on cart page
    @driver.find_element(CONTINUE_SHOPPING_BUTTON)
  end

  def click_continue_shopping # clicks the continue shopping button on cart page
    continue_shopping_element.click
  end

  def click_checkout # clicks the checkout button on cart page
    @driver.find_element(CHECKOUT_BUTTON).click
  end

  def fill_first_name(value) # sends data to first name field
    @driver.find_element(FIRST_NAME_FIELD).send_keys(value)
  end

  def fill_last_name(value) # sends data to last name field
    @driver.find_element(LAST_NAME_FIELD).send_keys(value)
  end

  def fill_zip_code(value) # send data to zip code field
    @driver.find_element(ZIP_CODE_FIELD).send_keys(value)
  end

  def continue_button_element # locates the continue button on cart page
    @driver.find_element(CONTINUE_BUTTON)
  end

  def click_continue # clicks the continue button on the page
    continue_button_element.click
  end

  def click_cancel # clicks cancel button on the page
    @driver.find_element(CANCEL_BUTTON).click
  end

  def finish_button_element # locates the finish button element
    @driver.find_element(FINISH_BUTTON)
  end

  def click_finish # clicks the finish button
    finish_button_element.click
  end

  def back_home_element # locates the back to home button element
    @driver.find_element(BACK_HOME_BUTTON)
  end

  def click_back_home # clicks back to home button
    back_home_element.click
  end

  def click_remove_backpack # clicks the remove button for Sauce Labs Backpack on cart page
    @driver.find_element(REMOVE_BACKPACK).click
  end

  def click_remove_bolt_tshirt # clicks the remove button for Sauce Labs Bolt T-Shirt on cart page 
    @driver.find_element(REMOVE_BOLT_TSHIRT).click
  end

  def click_remove_onesie # clicks the remove button for Sauce Labs Onesie on cart page
    @driver.find_element(REMOVE_ONESIE).click
  end

  def click_remove_bike_light # clicks the remove button for Sauce Labs Bike Light on cart page
    @driver.find_element(REMOVE_BIKE_LIGHT).click
  end

  def click_remove_jacket # clicks the remove button for Sauce Labs Fleece Jacket on cart page
    @driver.find_element(REMOVE_JACKET).click
  end

  def click_remove_red_tshirt # clicks the remove button for Red T-Shirt on cart page
    @driver.find_element(REMOVE_RED_TSHIRT).click
  end

  def removed_item # locates the element that is expected not be displayed when all items from the cart are removed
    @driver.find_element(REMOVE_CART_ITEM)
  end

  def overview_element # locates the overview label on checkout step two page
    @driver.find_element(CHECKOUT_OVERVIEW)
  end

  def error_message_element_text # tekes the text from error message for empty field on ckeckout step one page
    @driver.find_element(ERROR_MESSAGE).text
  end

  def thank_you_message_text # takes the text from thank message when you finish the order
    @driver.find_element(THANKS_MESSAGE).text
  end
end
