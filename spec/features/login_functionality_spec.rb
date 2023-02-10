# frozen_string_literal: true

require_relative '../spec_helper.rb'

RSpec.describe LoginPage do
    creds = YAML.load_file('/Users/gdemirev/Desktop/Saucedemo training project/config/test_data.yml')
    let(:user) { creds.fetch('username')['standard_user'] }
    let(:invalid_user) { creds.fetch('username')['invalid_user'] }
    let(:password) { creds.fetch('password')['all_password'] }
    let(:invalid_password) { creds.fetch('password')['invalid_password'] }
    let(:login) { described_class.new(@driver) }
    error_message = 'Epic sadface: Username and password do not match any user in this service'

    after(:each) do
        @driver.navigate.refresh
    end

    # TC_1.2
    it "verify that can't login with invalid username and valid password" do 
        login.fill_username(invalid_user)
        login.fill_password(password)
        login.click_login
        expect(login.invalid_credentials_error_message).to eq error_message
    end

    # TC_1.3
    it "verify that can't login with valid username and invalid password" do 
        login.fill_username(user)
        login.fill_password(invalid_password)
        login.click_login
        expect(login.invalid_credentials_error_message).to eq error_message
    end

    # TC_1.4
    it "verify that can't login with invalid username and invalid password" do 
        login.fill_username(invalid_user)
        login.fill_password(invalid_password)
        login.click_login
        expect(login.invalid_credentials_error_message).to eq error_message
    end

    # TC_1.5
    it "verify that can't login when the username and password fields are blank" do 
        login.click_login
        username_error_message = 'Epic sadface: Username is required'
        expect(login.invalid_credentials_error_message).to eq username_error_message
    end

    # TC_1.6
    it "verify that can't login when only password field is blank" do
        login.fill_username(user)
        login.click_login
        password_error_message = 'Epic sadface: Password is required'
        expect(login.invalid_credentials_error_message).to eq password_error_message
    end
 
end