require 'rails_helper'

RSpec.describe 'Articles', type: :request do
  describe 'GET/articles' do
      before(:each) do
    @test_user = User.create(name: ' Mr David', email: 'david@test.com', password: '123456')
    sign_in @test_user
    get '/articles'
end
it 'returns an http success response' do
  expect(response).to have_http_status(:success)
end
it 'renders the right template' do
  expect(response).to render_template('articles/index')
end
  end
end