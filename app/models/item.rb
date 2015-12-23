class Item < ActiveRecord::Base
  belongs_to :user

#  private

#  def name=(s)
#    write_attribute(:name, s.to_s.titleize)
#  end
end
