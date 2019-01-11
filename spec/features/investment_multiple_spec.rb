# frozen_string_literal: true

require 'rails_helper'

describe 'Make the user stick to the investment multiple', type: :feature do
  it 'should have an investment box' do
    visit '/campaigns/3'
    click_link 'Invest'
    fill_in 'campaign[amount_raised]', with: 30
    click_button 'Update Campaign'
    expect(page).to have_content(30)
  end

  it 'should have an investment box' do
    visit '/campaigns/3'
    click_link 'Invest'
    fill_in 'campaign[amount_raised]', with: 31
    click_button 'Update Campaign'
    expect { page }
      .to raise_error('Amount must be within the investment multiple')
  end
end
