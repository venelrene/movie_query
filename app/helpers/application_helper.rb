module ApplicationHelper

#show the date like this Jan 2, 2005
  def formatted_date(date)
    date.strftime('%b %d, %y')
  end


end
