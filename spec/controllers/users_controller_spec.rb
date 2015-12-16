require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) {User.create!(email: "email@email.com", password: "password")}

  describe "GET #show" do
    it "returns http success" do
      get :show, id: user.id
      expect(response).to have_http_status(:success)
    end
  end

  it "should return http status success after user signs in" do
    pending "write code"
  end







end
