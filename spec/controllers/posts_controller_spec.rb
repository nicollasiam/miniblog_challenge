require 'rails_helper'
require 'spec_helper'

RSpec.describe PostsController, :type => :controller do
  describe 'Login with a regular user' do
    render_views

    before do
      sign_in FactoryGirl.create(:user)
    end

    describe 'GET index page' do
      it 'Returns status 200 OK' do
        get :index
        expect(response.status).to eql(200)
      end

      it "renders the template" do
        get :index
        expect(response).to render_template(:index)
      end
    end
  end


  # =================================================
  describe 'Login with a admin user' do
    render_views

    before do
      admin = FactoryGirl.create(:admin)
      sign_in admin, scope: :user
    end

    describe 'GET index page' do
      it 'Returns status 200 OK' do
        get :index
        expect(response.status).to eql(200)
      end

      it "renders the template" do
        get :index
        expect(response).to render_template(:index)
      end
    end

    describe 'GET the new Post page' do
      it 'Returns status 200' do
        get :new
        expect(response.status).to eql(200)
      end
    end
  end
end
