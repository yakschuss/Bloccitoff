require 'rails_helper'


RSpec.describe UsersController, type: :controller do
  let(:user) {create(:example_user, confirmed_at: Time.now)}
context "for signed in users" do
  before do
#    user.confirm
    sign_in user
  end

  it "returns http status success after user signs in" do
     expect(response).to have_http_status :success
  end

  it "sets current_user variable" do
      expect(subject.current_user).to eq(user)
  end

    context "GET #show" do
    it "succeeds" do
        get :show, id: user.id
        expect(subject).to render_template(:show)
    end
  end

end





end
