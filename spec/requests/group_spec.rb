require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Kelvin', password: 'password', email: 'kelybush@gmail.com')
    @group = @user.groups.create(name: 'Birthday', icon: 'https://google.com')
    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get group_index_path
      expect(response).to have_http_status(:success)
    end
  end
end
