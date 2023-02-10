# frozen_string_literal: true

require_relative '../shared_login_spec.rb'

RSpec.describe ProductsPage do
    let(:products) { described_class.new(@driver) }
    let(:order) { SortOptions.new(@driver) }

    include_context 'login'

    it 'verify that there are products in Products page' do
        order.click_dropdown
        sleep(5)
    end

end