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

  def login_button # locates login button element
    @driver.find_element(LOGIN_BTN)
  end

  def fill_username(value) # sends data to username field
    @driver.find_element(USERNAME_FIELD).send_keys(value)
  end

  def fill_password(value) # sends data to password field
    @driver.find_element(PASSWORD_FIELD).send_keys(value)
  end

  def click_login # clicks login button
    login_button.click
  end

  def invalid_credentials_error_message # takes the text from error message element
    @driver.find_element(INVALID_CREDS_ERROR_MESSAGE).text
  end

  def clear_username # this is method that locate the username field, mark the text init and delete it
    @driver.find_element(USERNAME_FIELD).click
    @driver.action.key_down(:command).send_keys('a').key_up(:command).perform
    @driver.action.key_down(:backspace).key_up(:backspace).perform
  end

  def clear_password # same as privious method but for password field
    @driver.find_element(USERNAME_FIELD).click
    @driver.action.key_down(:command).send_keys('a').key_up(:command).perform
    @driver.action.key_down(:backspace).key_up(:backspace).perform
  end

  def close_error_message # closes the error message popup
    @driver.find_element(ERROR_MESSACE_CLOSE).click
  end
end
