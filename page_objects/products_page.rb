# frozen_string_literal: true

# This class is for ProductsPage
class ProductsPage
  WEBSITE_LOGO = { xpath: '//*[@id="header_container"]/div[2]/div[1]' }.freeze
  SHOPPING_CART = { id: 'shopping_cart_container' }.freeze
  ADD_TO_CART_RED_TSHIRT = { name: 'add-to-cart-test.allthethings()-t-shirt-(red)' }.freeze
  ADD_TO_CART_ONESIE = { name: 'add-to-cart-sauce-labs-onesie' }.freeze
  ADD_TO_CART_JACKET = { name: 'add-to-cart-sauce-labs-fleece-jacket' }.freeze
  ADD_TO_CART_BOLT_TSHIRT = { name: 'add-to-cart-sauce-labs-bolt-t-shirt' }.freeze
  ADD_TO_CART_BIKE_LIGHT = { name: 'add-to-cart-sauce-labs-bike-light' }.freeze
  ADD_TO_CART_BACKPACK = { name: 'add-to-cart-sauce-labs-backpack' }.freeze
  REMOVE_RED_TSHIRT = { name: 'remove-test.allthethings()-t-shirt-(red)' }.freeze
  REMOVE_ONESIE = { name: 'remove-sauce-labs-onesie' }.freeze
  REMOVE_JACKET = { name: 'remove-labs-fleece-jacket' }.freeze
  REMOVE_BOLT_TSHIRT = { name: 'remove-sauce-labs-bolt-t-shirt' }.freeze
  REMOVE_BIKE_LIGHT = { name: 'remove-sauce-labs-bike-light' }.freeze
  REMOVE_BACKPACK = { name: 'remove-sauce-labs-backpack' }.freeze
  GO_TO_DESCRIPTION_RED_TSHIRT = { id: 'item_3_title_link' }.freeze
  GO_TO_DESCRIPTION_ONESIE = { id: 'item_2_title_link' }.freeze
  GO_TO_DESCRIPTION_JACKET = { id: 'item_5_title_link' }.freeze
  GO_TO_DESCRIPTION_BOLT_TSHIRT = { id: 'item_1_title_link' }.freeze
  GO_TO_DESCRIPTION_BIKE_LIGHT = { id: 'item_0_title_link' }.freeze
  GO_TO_DESCRIPTION_BACKPACK = { id: 'item_4_title_link' }.freeze
  BACK_TO_PRODUCTS = { name: 'back-to-products' }.freeze
  IN_TO_DESCRIPTION_BIKE_LIGHT = { css: '.inventory_details_desc.large_size' }.freeze
  IN_TO_DESCRIPTION_BIKE_LIGHT_PRICE = { css: '.inventory_details_price' }.freeze

  def initialize(driver)
    @driver = driver
  end

  # takes the text from description of Sauce Labs Bike Light
  def in_to_bike_light_description
    @driver.find_element(IN_TO_DESCRIPTION_BIKE_LIGHT).text
  end

  # takes the text of the price of Sauce Labs Bike Light
  def in_to_bike_light_price
    @driver.find_element(IN_TO_DESCRIPTION_BIKE_LIGHT_PRICE).text
  end

  # locates the website logo element
  def verify_website_logo
    @driver.find_element(WEBSITE_LOGO)
  end

  # locates the website shoping cart logo
  def shopping_cart_element
    @driver.find_element(SHOPPING_CART)
  end

  # takes the number that is displayed on shoping cart when you add items init
  def shopping_cart_text
    shopping_cart_element.text.to_i
  end

  # clicks the shopping cart
  def click_shopping_cart
    shopping_cart_element.click
  end

  # adds Sauce Labs Onesie to the cart
  def add_onesie
    @driver.find_element(ADD_TO_CART_ONESIE).click
  end

  # adds Sauce Labs Fleece Jacket to the cart
  def add_jacket
    @driver.find_element(ADD_TO_CART_JACKET).click
  end

  # adds Sauce Labs Bolt T-Shirt to the cart
  def add_bolt_tshirt
    @driver.find_element(ADD_TO_CART_BOLT_TSHIRT).click
  end

  # adds Sauce Labs Bike Light to the cart
  def add_bike_light
    @driver.find_element(ADD_TO_CART_BIKE_LIGHT).click
  end

  # adds Sauce Labs Backpack to the cart
  def add_backpack
    @driver.find_element(ADD_TO_CART_BACKPACK).click
  end

  # removes Red T-Shirt from the cart
  def remove_red_tshirt
    @driver.find_element(REMOVE_RED_TSHIRT).click
  end

  # removes Sauce Labs Onesie from the cart
  def remove_onesie
    @driver.find_element(REMOVE_ONESIE).click
  end

  # removes Sauce Labs Fleece Jacket from the cart
  def remove_jacket
    @driver.find_element(REMOVE_JACKET).click
  end

  # removes Sauce Labs Bolt T-Shirt from the cart
  def remove_bolt_tshirt
    @driver.find_element(REMOVE_BOLT_TSHIRT).click
  end

  # removes Sauce Labs Bike Light from the cart
  def remove_bike_light
    @driver.find_element(REMOVE_BIKE_LIGHT).click
  end

  # removes Sauce Labs Backpack from the cart
  def remove_backpack
    @driver.find_element(REMOVE_BACKPACK).click
  end

  # removes Red T-Shirt from the cart
  def description_red_tshirt
    @driver.find_element(GO_TO_DESCRIPTION_RED_TSHIRT).click
  end

  # removes Sauce Labs Onesie from the cart
  def description_onesie
    @driver.find_element(GO_TO_DESCRIPTION_ONESIE).click
  end

  # removes Sauce Labs Fleece Jacket from the cart
  def description_jacket
    @driver.find_element(GO_TO_DESCRIPTION_JACKET).click
  end

  # goes to Sauce Labs Bolt T-Shirt description
  def description_bolt_tshirt
    @driver.find_element(GO_TO_DESCRIPTION_BOLT_TSHIRT).click
  end

  # goes to Sauce Labs Bile Light description
  def description_bike_light
    @driver.find_element(GO_TO_DESCRIPTION_BIKE_LIGHT).click
  end

  # goes to Sauce Labs Backpack description
  def description_backpack
    @driver.find_element(GO_TO_DESCRIPTION_BACKPACK).click
  end

  # goes back to the products page
  def back_to_products
    @driver.find_element(BACK_TO_PRODUCTS).click
  end
end
