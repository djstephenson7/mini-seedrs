# frozen_string_literal: true

require 'rails_helper'

describe 'the list of campaigns page', type: :feature do
  it 'should display the test campaign' do
    visit '/'
    expect(page).to have_content('Some campaign')
  end
end
