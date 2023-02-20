# frozen_string_literal: true

require_relative '../shared_login_spec'

RSpec.describe SortOptions do
  let(:options) { described_class.new(@driver) }

  include_context 'login'

  # TC_3.2
  it 'verify that the "sort" options are expandable' do
    options.click_dropdown
    expect(options.z_to_a_element).to be_displayed
  end

  # TC_3.3
  it 'verify the sort option "Name (A to Z)"' do
    options.order_a_to_z
    expect(options.first_element_name_text).to be < options.names_sorted_alphabetically[1]
  end

  # TC_3.4
  it 'verify the sort option "Name (Z to A)"' do
    options.click_dropdown
    options.order_z_to_a
    expect(options.first_element_name_text).to be > options.names_sorted_alphabetically[4]
  end

  # TC_3.5
  it 'verify the sort option "Price (low to high)"' do
    options.click_dropdown
    options.order_low_to_high
    expect((options.frist_element_price)).to be < options.price_sorted[1]
  end

  # TC_3.6
  it 'verify the sort option "Price (high to low)"' do
    options.click_dropdown
    options.order_high_to_low
    expect((options.frist_element_price)).to be > options.price_sorted[4]
  end
end
