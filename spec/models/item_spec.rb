require 'rails_helper'

RSpec.describe Item, type: :model do

  let(:my_user){create(:user)}
  let(:item) { create(:item, user: my_user) }


   it { should belong_to(:user) }

   it { should validate_presence_of(:name) }
   it { should validate_length_of(:name).is_at_least(1) }

end
