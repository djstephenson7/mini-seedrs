# frozen_string_literal: true

require 'rails_helper'

describe 'Make the user stick to the investment multiple', type: :feature do
  it 'should have an investment box' do
    visit '/campaigns/1'
    expect(page).to have_field('Invest')
  end
end
