module ItemsHelper
  include ActionView::Helpers::DateHelper


  def days_left(item)
    distance_of_time_in_words(item.created_at, Date.today - 6.days)
  end

end
