# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Campaigns', type: :request do
  describe 'GET /campaigns' do
    it 'works! (now write some real specs)' do
      get api_v1_campaigns_path
      expect(response).to have_http_status(200)
    end
  end
end