# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Campaign, type: :model do
  before(:each) do
    @subject = Campaign.new(name: 'Some campaign',
                            image: 'some image',
                            percent_raised: 50,
                            target_amount: 100,
                            sector: 'Charity',
                            country: 'UK',
                            invest_multiple: 5)
  end

  it 'shows the campaign name' do
    expect(@subject.name).to eq('Some campaign')
  end
end
