require 'rails_helper'

describe PagesController do

  describe 'Static pages' do
    it 'includes a privacy page' do
      get :show, id: :privacy
      expect(response).to be_ok
    end

    it 'includes a conditions page' do
      get :show, id: :conditions
      expect(response).to be_ok
    end

    it 'includes a general terms page' do
      get :show, id: :general_terms
      expect(response).to be_ok
    end

    it 'includes a terms page' do
      get :show, id: :census_terms
      expect(response).to be_ok
    end

    it 'includes a accessibility page' do
      get :show, id: :accessibility
      expect(response).to be_ok
    end
  end

  describe 'More info pages' do

    it 'includes a more info page' do
      get :show, id: 'more_info/index'
      expect(response).to be_ok
    end

    it 'includes a how_to_use page' do
      get :show, id: 'more_info/how_to_use/index'
      expect(response).to be_ok
    end

    it 'includes a faq page' do
      get :show, id: 'more_info/faq/index'
      expect(response).to be_ok
    end
  end

  describe 'Not found pages' do
    it 'returns a 404 message' do
      get :show, id: "nonExistentPage"
      expect(response).to be_missing
    end
  end

end
