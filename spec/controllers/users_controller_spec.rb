require 'rails_helper'


RSpec.describe UsersController, type: :controller do
  let(:user) {create(:user)}

  before do
    sign_in user
  end

  it "should return http status success after user signs in" do
    pending "expect(response).to have_http_status :success"
  end

  it "should set current_user variable" do
    pending "current_user.should_not be_nil"
  end

  it "should redirect to user#show" do
    pending "expect(response).to redirect_to(user_show_path)"
  end






end
