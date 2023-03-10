# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.shared_context 'login' do
  creds = YAML.load_file('./config/test_data.yml')
  let(:username) { creds.fetch('username')['standard_user'] }
  let(:password) { creds.fetch('password')['all_password'] }
  let(:login) { LoginPage.new(@driver) }
  let(:products) { ProductsPage.new(@driver) }

  # TC_1.1
  it 'verify that can login with valid username and valid password' do
    login.fill_username(username)
    login.fill_password(password)
    login.click_login
    @wait.until { products.verify_website_logo }
    expect(products.verify_website_logo).to be_displayed
  end
end
