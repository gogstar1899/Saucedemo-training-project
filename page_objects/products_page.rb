# frozen_string_literal: true

#This class is for ProductsPage
class ProductsPage
  WEBSITE_LOGO = { xpath: '//*[@id="header_container"]/div[2]/div[1]' }.freeze
  SHOPPING_CART = { id: 'shopping_cart_container' }.freeze
  ADD_TO_CART_RED_TSHIRT = { name: 'add-to-cart-test.allthethings()-t-shirt-(red)' }.freeze
  ADD_TO_CART_ONESIE = { name: 'add-to-cart-sauce-labs-onesie' }.freeze
  ADD_TO_CART_JACKET = { name: 'add-to-cart-sauce-labs-fleece-jacket' }.freeze
  ADD_TO_CART_BOLT_TSHIRT = { name: 'add-to-cart-sauce-labs-bolt-t-shirt' }.freeze
  ADD_TO_CART_BIKE_LIGHT = { name: 'add-to-cart-sauce-labs-bike-light' }.freeze
  ADD_TO_CART_BACKPACK = { name: 'add-to-cart-sauce-labs-backpack' }.freeze
  DESCRIPTION_RED_TSHIRT = { xpath: "//a[@pathname='/inventory.html']/div[@innertext='Test.allTheThings() T-Shirt (Red)']" }.freeze
  DESCRIPTION_ONESIE = { xpath: "//a[@pathname='/inventory.html']/div[@innertext='Sauce Labs Onesie']" }.freeze
  DESCRIPTION_JACKET = { xpath: "//a[@pathname='/inventory.html']/div[@innertext='Sauce Labs Fleece Jacket']" }.freeze
  DESCRIPTION_BOLT_TSHIRT = { xpath: "//a[@pathname='/inventory.html']/div[@innertext='Sauce Labs Bolt T-Shirt']" }.freeze
  DESCRIPTION_BIKE_LIGHT = { xpath: "//a[@pathname='/inventory.html']/div[@innertext='Sauce Labs Bike Light']" }.freeze
  DESCRIPTION_BACKPACK = { xpath: "//a[@pathname='/inventory.html']/div[@innertext='Sauce Labs Backpack']" }.freeze
  BACK_TO_PRODUCTS = { name: 'back-to-products' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def verify_website_logo
    @driver.find_element(WEBSITE_LOGO).displayed?
  end

  def click_shopping_cart
    @driver.find_element(SHOPPING_CART).click
  end

  def add_red_tshirt
    @driver.find_element(ADD_TO_CART_RED_TSHIRT).click
  end

  def add_onesie
    @driver.find_element(ADD_TO_CART_ONESIE).click
  end

  def add_jacket
    @driver.find_element(ADD_TO_CART_JACKET).click
  end

  def add_bolt_tshirt
    @driver.find_element(ADD_TO_CART_BOLT_TSHIRT).click
  end

  def add_bike_light
    @driver.find_element(ADD_TO_CART_BIKE_LIGHT).click
  end

  def add_backpack
    @driver.find_element(ADD_TO_CART_BACKPACK).click
  end

  def description_red_tshirt
    @driver.find_element(DESCRIPTION_RED_TSHIRT).click
  end

  def description_onesie
    @driver.find_element(DESCRIPTION_ONESIE).click
  end

  def description_jacket
    @driver.find_element(DESCRIPTION_JACKET).click
  end

  def description_bolt_tshirt
    @driver.find_element(DESCRIPTION_BOLT_TSHIRT).click
  end

  def description_bike_light
    @driver.find_element(DESCRIPTION_BIKE_LIGHT).click
  end

  def description_backpack
    @driver.find_element(DESCRIPTION_BACKPACK).click
  end

  def back_to_products
    @driver.find_element(BACK_TO_PRODUCTS).click
  end

end