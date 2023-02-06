# frozen_string_literal: true

#This class is for LoginPage
class ProductsPage
  WEBSITE_LOGO = { xpath: '//*[@id="header_container"]/div[2]/div[1]' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def verify_website_logo
    @driver.find_element(WEBSITE_LOGO).displayed?
  end

end