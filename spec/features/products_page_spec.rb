# frozen_string_literal: true

require_relative '../shared_login_spec.rb'

RSpec.describe ProductsPage do
    let(:products) { described_class.new(@driver) }

    include_context 'login'

    it 'verify that there are products in Products page' do

    end

end