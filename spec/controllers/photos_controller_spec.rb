require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  let(:photo) { double 'Photo' }
  let(:all_photos) { %w[photo1 photo2] }
  let(:params) { { id: '2' } }
  let(:time) { Time.zone.now }

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end

    it 'populates an array for all photos' do
      allow(Photo).to receive(:all).and_return(all_photos)
      get :index
      expect(assigns(:photos)).to match_array(%w[photo1 photo2])
    end
  end

  describe 'GET #show' do
    before(:each) do
      allow(Photo).to receive(:find).and_return(photo)
    end

    it 'returns http success' do
      get :show, params: params
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do
      get :show, params: params
      expect(response).to render_template :show
    end

    it 'assigns the requested photo to @photo' do
      get :show, params: params
      expect(assigns(:photo)).to eq photo
    end

    it 'assigns the current time to @time' do
      allow(Time).to receive(:now).and_return(time)
      get :show, params: params
      expect(assigns(:start_time)).to eql time
    end
  end
end
