# frozen_string_literal: true

# This class is for MenuOptions
class MenuOptions
  MENU = { css: '.bm-menu' }.freeze
  MENU_BUTTON = { css: 'button#react-burger-menu-btn' }.freeze
  CLOSE_MENU = { id: 'react-burger-cross-btn' }.freeze
  ALL_ITEMS = { id: 'inventory_sidebar_link' }.freeze
  ABOUT = { id: 'about_sidebar_link' }.freeze
  LOGOUT = { id: 'logout_sidebar_link' }.freeze
  RESET_APP_STATE = { id: 'reset_sidebar_link' }.freeze

  def initialize(driver)
    @driver = driver
  end

  # locates the About element in the menu
  def about_element
    @driver.find_element(ABOUT)
  end

  # locates the menu button element on the products page
  def menu_button_element
    @driver.find_element(MENU_BUTTON)
  end

  # clicks the menu button on the products page
  def click_menu_button
    menu_button_element.click
  end

  # clicks the close menu button inside the menu
  def click_close_menu_button
    @driver.find_element(CLOSE_MENU).click
  end

  # clicks the All Items tab in the menu
  def click_all_items_button
    @driver.find_element(ALL_ITEMS).click
  end

  # clicks the About tab in the menu
  def click_about_button
    about_element.click
  end

  # clicks the Logout tab in the menu
  def click_logout_button
    @driver.find_element(LOGOUT).click
  end

  # clicks the Reset App State tab in the menu
  def click_reset_state_button
    @driver.find_element(RESET_APP_STATE).click
  end
end
