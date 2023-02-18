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

  def continue_shopping_element
    @driver.find_element(CONTINUE_SHOPPING_BUTTON)
  end

  def click_continue_shopping
    continue_shopping_element.click
  end

  def click_checkout
    @driver.find_element(CHECKOUT_BUTTON).click
  end

  def fill_first_name(value)
    @driver.find_element(FIRST_NAME_FIELD).send_keys(value)
  end

  def fill_last_name(value)
    @driver.find_element(LAST_NAME_FIELD).send_keys(value)
  end

  def fill_zip_code(value)
    @driver.find_element(ZIP_CODE_FIELD).send_keys(value)
  end

  def continue_button_element
    @driver.find_element(CONTINUE_BUTTON)
  end

  def click_continue
    continue_button_element.click
  end

  def click_cancel
    @driver.find_element(CANCEL_BUTTON).click
  end

  def finish_button_element
    @driver.find_element(FINISH_BUTTON)
  end

  def click_finish
    finish_button_element.click
  end

  def back_home_element
    @driver.find_element(BACK_HOME_BUTTON)
  end

  def click_back_home
    back_home_element.click
  end

  def click_remove_backpack
    @driver.find_element(REMOVE_BACKPACK).click
  end

  def click_remove_bolt_tshirt
    @driver.find_element(REMOVE_BOLT_TSHIRT).click
  end

  def click_remove_onesie
    @driver.find_element(REMOVE_ONESIE).click
  end

  def click_remove_bike_light
    @driver.find_element(REMOVE_BIKE_LIGHT).click
  end

  def click_remove_jacket
    @driver.find_element(REMOVE_JACKET).click
  end

  def click_remove_red_tshirt
    @driver.find_element(REMOVE_RED_TSHIRT).click
  end

  def removed_item
    @driver.find_element(REMOVE_CART_ITEM)
  end

  def overview_element
    @driver.find_element(CHECKOUT_OVERVIEW)
  end

  def error_message_element_text
    @driver.find_element(ERROR_MESSAGE).text
  end

  def thank_you_message_text
    @driver.find_element(THANKS_MESSAGE).text
  end
end
