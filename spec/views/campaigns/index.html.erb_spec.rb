# frozen_string_literal: true

# # frozen_string_literal: true
#
# require 'rails_helper'
#
# RSpec.describe 'campaigns/index', type: :view do
#   before(:each) do
#     assign(:campaigns, [
#              Campaign.create!(
#                name: 'Name',
#                image: 'Image',
#                percent_raised: 2,
#                target_amount: 3,
#                sector: 'Sector',
#                country: 'Country',
#                invest_multiple: 4
#              ),
#              Campaign.create!(
#                name: 'Name',
#                image: 'Image',
#                percent_raised: 2,
#                target_amount: 3,
#                sector: 'Sector',
#                country: 'Country',
#                invest_multiple: 4
#              )
#            ])
#   end
#
#   it 'renders a list of campaigns' do
#     render
#     assert_select 'tr>td', text: 'Name'.to_s, count: 2
#     assert_select 'tr>td', text: 'Image'.to_s, count: 2
#     assert_select 'tr>td', text: 2.to_s, count: 2
#     assert_select 'tr>td', text: 3.to_s, count: 2
#     assert_select 'tr>td', text: 'Sector'.to_s, count: 2
#     assert_select 'tr>td', text: 'Country'.to_s, count: 2
#     assert_select 'tr>td', text: 4.to_s, count: 2
#   end
# end
