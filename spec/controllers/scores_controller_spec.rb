require 'rails_helper'

RSpec.describe ScoresController, type: :controller do
  let(:photo) { double 'Photo' }
  let(:score) { double 'Score' }
  let(:scores) { [1, 2, 3] }
  let(:params) { { id: '2', photo_id: photo } }

  before(:each) do
    allow(Photo).to receive(:find).and_return(photo)
    allow(photo).to receive(:scores).and_return(scores)
  end

  describe 'GET #index' do
    it 'returns http success' do
      get :index, params: params
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      get :index, params: params
      expect(response).to render_template :index
    end

    it 'assigns the scores for that photo to @scores' do
      get :index, params: params
      expect(assigns(:scores)).to match_array([1, 2, 3])
    end
  end

  describe '#create' do
    it 'creates a new score for the photo'
  end
end
