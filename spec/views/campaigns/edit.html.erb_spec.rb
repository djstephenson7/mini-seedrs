# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'campaigns/edit', type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
                                    name: 'MyString',
                                    image: 'MyString',
                                    percent_raised: 1,
                                    target_amount: 1,
                                    sector: 'MyString',
                                    country: 'MyString',
                                    invest_multiple: 1
                                  ))
  end

  it 'renders the edit campaign form' do
    render

    assert_select 'form[action=?][method=?]', campaign_path(@campaign), 'post' do
      assert_select 'input[name=?]', 'campaign[amount_raised]'
    end
  end
end
