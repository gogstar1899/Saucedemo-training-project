# frozen_string_literal: true

#This class is for SortOptions
class SortOptions
    SORT_DROPDOWN = { css: '.select_container' }.freeze
    SORT_A_TO_Z = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[1]' }.freeze
    SORT_Z_TO_A = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[2]' }.freeze
    SORT_LOW_TO_HIGH = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[3]' }.freeze
    SORT_HIGH_TO_LOW = { xpath: '//*[@id="header_container"]/div[2]/div[2]/span/select/option[4]' }.freeze
    
    def initialize(driver)
        @driver = driver
    end

    def click_dropdown
        @driver.find_element(SORT_DROPDOWN).click
    end

    def order_a_to_z
        @driver.find_element(SORT_A_TO_Z).click
    end

    def order_z_to_a
        @driver.find_element(SORT_Z_TO_A).click
    end

    def order_low_to_high
        @driver.find_element(SORT_LOW_TO_HIGH).click
    end

    def order_low_to_high
        @driver.find_element(SORT_HIGH_TO_LOW).click
    end

end