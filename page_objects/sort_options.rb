# frozen_string_literal: true

# This class is for SortOptions
class SortOptions
  SORT_DROPDOWN = { css: '.select_container' }.freeze
  SORT_A_TO_Z = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[1]' }.freeze
  SORT_Z_TO_A = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[2]' }.freeze
  SORT_LOW_TO_HIGH = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[3]' }.freeze
  SORT_HIGH_TO_LOW = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[4]' }.freeze
  FIRST_ELEMENT_NAME = { css: '.inventory_list .inventory_item:nth-of-type(1) .inventory_item_name' }.freeze
  SECOND_ELEMENT_NAME = { css: '.inventory_list .inventory_item:nth-of-type(2) .inventory_item_name' }.freeze
  THIRD_ELEMENT_NAME = { css: '.inventory_list .inventory_item:nth-of-type(3) .inventory_item_name' }.freeze
  FOURTH_ELEMENT_NAME = { css: '.inventory_list .inventory_item:nth-of-type(4) .inventory_item_name' }.freeze
  FIFTH_ELEMENT_NAME = { css: '.inventory_list .inventory_item:nth-of-type(5) .inventory_item_name' }.freeze
  SIX_ELEMENT_NAME = { css: '.inventory_list .inventory_item:nth-of-type(6) .inventory_item_name' }.freeze
  FIRST_ELEMENT_PRICE = { css: '.inventory_list .inventory_item:nth-of-type(1) .inventory_item_price' }.freeze
  SECOND_ELEMENT_PRICE = { css: '.inventory_list .inventory_item:nth-of-type(2) .inventory_item_price' }.freeze
  THIRD_ELEMENT_PRICE = { css: '.inventory_list .inventory_item:nth-of-type(3) .inventory_item_price' }.freeze
  FOURTH_ELEMENT_PRICE = { css: '.inventory_list .inventory_item:nth-of-type(4) .inventory_item_price' }.freeze
  FIFTH_ELEMENT_PRICE = { css: '.inventory_list .inventory_item:nth-of-type(5) .inventory_item_price' }.freeze
  SIX_ELEMENT_PRICE = { css: '.inventory_list .inventory_item:nth-of-type(6) .inventory_item_price' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def click_dropdown
    @driver.find_element(SORT_DROPDOWN).click
  end

  def z_to_a_element
    @driver.find_element(SORT_Z_TO_A)
  end

  def first_element_name_text
    @driver.find_element(FIRST_ELEMENT_NAME).text
  end

  def names_sorted_alphabetically
    names_array = [
      @driver.find_element(FIRST_ELEMENT_NAME).text,
      @driver.find_element(SECOND_ELEMENT_NAME).text,
      @driver.find_element(THIRD_ELEMENT_NAME).text,
      @driver.find_element(FOURTH_ELEMENT_NAME).text,
      @driver.find_element(FIFTH_ELEMENT_NAME).text,
      @driver.find_element(SIX_ELEMENT_NAME).text
    ]
    names_array.sort { |a, b| a <=> b }
  end

  def frist_element_price
    price = @driver.find_element(FIRST_ELEMENT_PRICE).text
    remove_dollar = price.to_s.gsub(/[^0-9.]/, '')
    remove_dollar.to_f
  end

  def prices_array
    [
      @driver.find_element(FIRST_ELEMENT_PRICE).text,
      @driver.find_element(SECOND_ELEMENT_PRICE).text,
      @driver.find_element(THIRD_ELEMENT_PRICE).text,
      @driver.find_element(FOURTH_ELEMENT_PRICE).text,
      @driver.find_element(FIFTH_ELEMENT_PRICE).text,
      @driver.find_element(SIX_ELEMENT_PRICE).text
    ]
  end

  def price_sorted
    price = prices_array.map { |x| x.to_s.gsub(/[^0-9.]/, '') }
    price_without_dollar = price.map!(&:to_f)
    price_without_dollar.sort { |a, b| a <=> b }
  end

  def order_a_to_z
    @driver.find_element(SORT_A_TO_Z).click
  end

  def order_z_to_a
    z_to_a_element.click
  end

  def order_low_to_high
    @driver.find_element(SORT_LOW_TO_HIGH).click
  end

  def order_high_to_low
    @driver.find_element(SORT_HIGH_TO_LOW).click
  end
end
