require 'rails_helper'

RSpec.describe ItemsController, type: :controller do


  let(:confirmed_user) {create(:example_user, confirmed_at: Time.now)}
  let(:my_item) {create(:item, user: confirmed_user)}


  context "signed-in example_user doing CD on a comment they own" do
    before do
      sign_in confirmed_user
    end

    describe "POST create" do
      it "increase the number of items by 1" do
        expect {post :create, format: :js, user_id: confirmed_user.id, item: {name:"This is a test"} }.to change(Item, :count).by(1)
      end

      it "returns http redirect" do
        post :create, format: :js, user_id: confirmed_user.id, item: {name: "This is a test"}
        expect(response).to have_http_status(:success)
      end
    end

    describe "DELETE destroy" do
      it "deletes the item" do
        delete :destroy, format: :js, user_id: confirmed_user.id, id: my_item.id
        count = Item.where({id: my_item.id}).count
        expect(count).to eq 0
      end

      it "returns http success" do
        delete :destroy, format: :js, user_id: confirmed_user.id, id: my_item.id
        expect(response).to have_http_status(:success)
      end
    end
  end
end
