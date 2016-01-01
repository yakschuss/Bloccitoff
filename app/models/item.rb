class Item < ActiveRecord::Base
  belongs_to :user

  default_scope {order('created_at DESC')}
#  private

#  def name=(s)
#    write_attribute(:name, s.to_s.titleize)
#  end
end
