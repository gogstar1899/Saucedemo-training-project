# frozen_string_literal: true

require_relative '../shared_login_spec'

RSpec.describe ProductsPage do
  let(:products) { described_class.new(@driver) }
  zero = 0

  include_context 'login'

  # TC_4.2
  it 'verify that the "ADD TO CART" button works' do
    products.add_backpack
    expect(products.shopping_cart_text).to be > zero
  end

  # TC_4.8
  it 'verify that the "REMOVE" button works' do
    products.remove_backpack
    expect(products.shopping_cart_text).to eq zero
  end

  # TC_4.3
  it 'verify that the description page loads' do
    products.description_bike_light
    description = '1 AAA battery included'
    expect(products.in_to_bike_light_description).to include description
  end

  # TC_4.5
  it 'verify that the price in product description page is correct' do
    price = '$9.99'
    expect(products.in_to_bike_light_price).to eq price
  end

  # TC_4.4
  it 'verify that the "ADD TO CART" button works from the product description page' do
    products.add_bike_light
    expect(products.shopping_cart_text).to be > zero
  end

  # TC_4.7
  it 'verify that the "REMOVE" button works from the product description page' do
    products.remove_bike_light
    expect(products.shopping_cart_text).to eq zero
  end

  # TC_4.9
  it 'verify that the user can go back to the products page' do
    products.back_to_products
    expect(products.verify_website_logo).to be_displayed
  end
end
