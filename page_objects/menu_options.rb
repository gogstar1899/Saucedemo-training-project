# frozen_string_literal: true

#This class is for MenuOptions
class MenuOptions
    MENU_BUTTON = { id: 'react-burger-menu-btn' }.freeze
    CLOSE_MENU = { id: 'react-burger-cross-btn' }.freeze
    ALL_ITEMS = { id: 'inventory_sidebar_link' }.freeze
    ABOUT = { id: 'about_sidebar_link' }.freeze
    LOGOUT = { id: 'logout_sidebar_link' }.freeze
    RESET_APP_STATE { id: 'reset_sidebar_link' }.freeze

    def initialize(driver)
        @driver = driver
    end

    def click_menu_button
        @driver.find_element(MENU_BUTTON).click
    end

    def click_close_menu_button
        @driver.find_element(CLOSE_MENU).click
    end

    def click_all_items_button
        @driver.find_element(ALL_ITEMS).click
    end

    def click_about_button
        @driver.find_element(ABOUT).click
    end

    def click_logout_button
        @driver.find_element(LOGOUT).click
    end

    def click_reset_state_button
        @driver.find_element(RESET_APP_STATE).click
    end

end