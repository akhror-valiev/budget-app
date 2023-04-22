require 'rails_helper'

RSpec.describe 'Operations', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'user1', password: '123456', email: 'user1@mail.com')
    @group = @user.groups.create(name: 'food', icon: 'https://google.com')
    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get group_operations_path(@group)
      expect(response).to have_http_status(:success)
    end
  end
end
