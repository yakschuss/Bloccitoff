require 'rails_helper'

RSpec.describe ItemsController, type: :controller do


  let(:my_user) {create(:example_user)}
  let(:my_item) {create(:item)}


=begin
  context "guest" do
    describe "POST create" do
      it "redirects the example_user to the sign in view" do
        post :create
        expect(response).to redirect_to(new_session_path)
    end
  end

    describe "DELETE destroy" do
      it "redirects the example_user to the sign in view" do
        delete :destroy
        expect(response).to redirect_to(new_session_path)
      end
    end
  end
=end

  context "signed-in example_user doing CD on a comment they own" do
    before do
    #  log-in the example_user
    end

    describe "POST create" do
      it "increase the number of items by 1" do
        expect {post :create, item: {name:"This is a test", user_id: my_user.id} }.to change(Item, :count).by(1)
      end

      it "returns http success" do
        post :create, item: {name: "This is a test", user_id: my_user.id}
        expect(response).to have_http_status(:success)
      end
    end

    describe "DELETE destroy" do
      it "deletes the item" do
        delete :destroy, user_id: my_user.id, id: my_item.id
        count = Item.where({id: my_item.id}).count
        expect(count).to eq 0
      end

      it "returns http success" do
        delete :destroy, user_id: my_user.id, id: my_item.id
        expect(response).to have_http_status(:success)
      end
    end
  end
end
