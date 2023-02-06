# frozen_string_literal: true

require_relative '../spec_helper.rb'

RSpec.describe LoginPage do
    creds = YAML.load_file('/Users/gdemirev/Desktop/Saucedemo training project/config/test_data.yml')
    let(:user) { creds.fetch('username')['standard_user'] }
    let(:invalid_user) { creds.fetch('username')['invaliduser'] }
    let(:password) { creds.fetch('password')['all_password'] }
    let(:invalid_password) { creds.fetch('password')['invalidpassword'] }
    let(:login) { described_class.new(@driver) }
    let(:products) { ProductsPage.new(@driver) }

    it 'verify that the user can login with valid credentials' do
         login.fill_username(user)
         login.fill_password(password)
         login.click_login
         @wait.until { products.verify_website_logo }
         expect(products.verify_website_logo)
    end
 
end