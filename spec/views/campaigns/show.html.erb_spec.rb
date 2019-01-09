require 'rails_helper'

RSpec.describe "campaigns/show", type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :name => "Name",
      :image => "Image",
      :percent_raised => 2,
      :target_amount => 3,
      :sector => "Sector",
      :country => "Country",
      :invest_multiple => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Sector/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/4/)
  end
end
