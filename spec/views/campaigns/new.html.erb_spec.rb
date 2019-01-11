# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'campaigns/new', type: :view do
  before(:each) do
    assign(:campaign, Campaign.new(
                        name: 'MyString',
                        image: 'MyString',
                        percent_raised: 1,
                        target_amount: 1,
                        sector: 'MyString',
                        country: 'MyString',
                        invest_multiple: 1
                      ))
  end

  it 'renders new campaign form' do
    render

    assert_select 'form[action=?][method=?]', campaigns_path, 'post' do
      assert_select 'input[name=?]', 'campaign[amount_raised]'
    end
  end
end
