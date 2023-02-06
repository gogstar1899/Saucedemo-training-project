# frozen_string_literal: true

#This class is for LoginPage
class LoginPage
  USERNAME_FIELD = { id: 'user-name' }.freeze
  PASSWORD_FIELD = { id: 'password' }.freeze
  LOGIN_BTN = { id: 'login-button' }.freeze
  PASSWORD_ERROR = {css: '.error.error-message-container' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def fill_username(value)
    @driver.find_element(USERNAME_FIELD).send_keys(value)
  end

  def fill_password(value)
    @driver.find_element(PASSWORD_FIELD).send_keys(value)
  end

  def click_login
    @driver.find_element(LOGIN_BTN).click
  end
end