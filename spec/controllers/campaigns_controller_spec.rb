# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe Api::V1::CampaignsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Campaign. As you add validations to Campaign, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { "name": 'Some campaign', "image": 'some image', "percent_raised": 50, "target_amount": 100, "sector": 'Charity', "country": 'UK', "invest_multiple": 5 }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CampaignsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      campaign = Campaign.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      campaign = Campaign.create! valid_attributes
      get :show, params: { id: campaign.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Campaign' do
        expect do
          post :create, params: { campaign: valid_attributes }, session: valid_session
        end.to change(Campaign, :count).by(1)
      end

      it 'renders a JSON response with the new campaign' do
        post :create, params: { campaign: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(api_v1_campaign_url(Campaign.last))
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { "name": 'Some campaign', "image": 'some image', "percent_raised": 50, "target_amount": 100, "sector": 'Charity', "country": 'UK', "invest_multiple": 5 }
      end

      it 'updates the requested campaign' do
        campaign = Campaign.create! valid_attributes
        put :update, params: { id: campaign.to_param, campaign: new_attributes }, session: valid_session
        campaign.reload
        { "name": 'Some campaign', "image": 'some image', "percent_raised": 50, "target_amount": 100, "sector": 'Other', "country": 'UK', "invest_multiple": 5 }
      end

      it 'renders a JSON response with the campaign' do
        campaign = Campaign.create! valid_attributes

        put :update, params: { id: campaign.to_param, campaign: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested campaign' do
      campaign = Campaign.create! valid_attributes
      expect do
        delete :destroy, params: { id: campaign.to_param }, session: valid_session
      end.to change(Campaign, :count).by(-1)
    end
  end
end
