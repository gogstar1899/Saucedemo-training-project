# frozen_string_literal: true

# This class is for LoginPage
class LoginPage
  USERNAME_FIELD = { id: 'user-name' }.freeze
  PASSWORD_FIELD = { id: 'password' }.freeze
  LOGIN_BTN = { id: 'login-button' }.freeze
  PASSWORD_ERROR = { css: '.error.error-message-container' }.freeze
  INVALID_CREDS_ERROR_MESSAGE = { xpath: '//*[@id="login_button_container"]/div/form/div[3]/h3' }.freeze
  ERROR_MESSACE_CLOSE = { css: "button > svg[role='img']" }.freeze

  def initialize(driver)
    @driver = driver
  end

  # locates login button element
  def login_button
    @driver.find_element(LOGIN_BTN)
  end

  # sends data to username field
  def fill_username(value)
    @driver.find_element(USERNAME_FIELD).send_keys(value)
  end

  # sends data to password field
  def fill_password(value)
    @driver.find_element(PASSWORD_FIELD).send_keys(value)
  end

  # clicks login button
  def click_login
    login_button.click
  end

  # takes the text from error message element
  def invalid_credentials_error_message
    @driver.find_element(INVALID_CREDS_ERROR_MESSAGE).text
  end

  # this is method that locate the username field, mark the text init and delete it
  def clear_username
    @driver.find_element(USERNAME_FIELD).click
    @driver.action.key_down(:command).send_keys('a').key_up(:command).perform
    @driver.action.key_down(:backspace).key_up(:backspace).perform
  end

  # same as privious method but for password field
  def clear_password
    @driver.find_element(USERNAME_FIELD).click
    @driver.action.key_down(:command).send_keys('a').key_up(:command).perform
    @driver.action.key_down(:backspace).key_up(:backspace).perform
  end

  # closes the error message popup
  def close_error_message
    @driver.find_element(ERROR_MESSACE_CLOSE).click
  end
end
