# frozen_string_literal: true

require_relative '../shared_login_spec.rb'

RSpec.describe YourCart do
    let(:cart) { described_class.new(@driver) }
    let(:products) { ProductsPage.new (@driver) }
    creds = YAML.load_file('/Users/gdemirev/Desktop/Saucedemo training project/config/test_data.yml')
    let(:first_name) { creds.fetch('names')['real_first_name'] }
    let(:last_name) { creds.fetch('names')['real_last_name'] }
    let(:zip_code) { creds.fetch('zip_code')['real_zip_code'] }

    include_context 'login'

    it 'verify that the "YOUR CART" button works' do
        products.add_jacket
        products.click_shopping_cart
        expect(cart.continue_shopping_element).to be_displayed
    end

    it 'verify that the user can remove a product from the cart' do
        cart.click_remove_jacket
        expect(cart.removed_item).not_to be_displayed
    end

    it 'verify that the user can continue shopping by clicking on the "CONTINUE SHOPPING" button' do
        cart.click_continue_shopping
        expect(products.verify_website_logo).to be_displayed
    end

    it 'verify that the user can proceed to checkout by clicking on the "CHECKOUT" button' do
        products.add_bike_light
        products.click_shopping_cart
        cart.click_checkout
        expect(cart.continue_button_element).to be_displayed
    end

    it "verify that user can't continue with empty fields" do
        cart.click_continue
        first_name_error = 'Error: First Name is required'
        expect(cart.error_message_element.text).to eq first_name_error
    end

    it "verify that user can't continue with empty password field" do
        cart.fill_first_name(first_name)
        cart.click_continue
        last_name_error = 'Error: Last Name is required'
        expect(cart.error_message_element.text).to eq last_name_error
    end

    it "verify that user can't continue with empty zip code field" do
        cart.fill_last_name(last_name)
        cart.click_continue
        zip_code_error = 'Error: Postal Code is required'
        expect(cart.error_message_element.text).to eq zip_code_error
    end

    it 'verify that user can provide needed information' do
        cart.fill_zip_code(zip_code)
        cart.click_continue
        @wait.until { cart.overview_element.displayed? }
        expect(cart.overview_element).to be_displayed
    end

    it 'verify that the order is confirmed by clicking on the "FINISH" button' do
        cart.click_finish
        expect(cart.back_home_element).to be_displayed
    end

    it 'verify that there is confirmation message on Complete page' do
        message = 'THANK YOU FOR YOUR ORDER'
        expect(cart.thank_you_message.text).to eq message
    end

    it 'verify that the  "Back Home" button redirect to products page' do
        cart.click_back_home
        expect(products.verify_website_logo).to be_displayed
    end

end