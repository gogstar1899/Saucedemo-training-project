# frozen_string_literal: true

require_relative '../shared_login_spec.rb'

RSpec.describe MenuOptions, type: :feature do
    let(:menu) { described_class.new(@driver) }
    let(:login) { LoginPage.new(@driver) }

    include_context 'login'

    it 'verify that there is "menu" button in the website' do
        menu.click_menu_button
        @wait.until { menu.about_element.displayed? } 
        expect(menu.about_element).to be_displayed
    end

    it 'verify that the user can close the menu' do
        menu.click_close_menu_button
        @wait.until { menu.menu_button_element.displayed? }
        url = 'https://www.saucedemo.com/inventory.html'
        menu_element = '.bm-menu-wrap'
        expect(url).not_to have_selector(menu_element) 
    end

    it 'verify that the "ALL ITEM" submenu navigate to the right page' do
        menu.click_menu_button
        @wait.until { menu.about_element.displayed? }
        menu.click_about_button
        expected_url = 'https://saucelabs.com/'
        expect(@driver.current_url).to eq expected_url
    end

    it 'verify that the "LOGOUT" submenu is logout the user from the account' do
        @driver.navigate.back
        menu.click_logout_button
        expect(login.login_button).to be_displayed
    end

end