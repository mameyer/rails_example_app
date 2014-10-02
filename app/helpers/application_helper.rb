module ApplicationHelper
  # returns full title of each page
  def full_title(page_title)
  	if page_title.empty?
  	  GlobalConstants::BASE_TITLE
  	else
  	  "#{GlobalConstants::BASE_TITLE} | #{page_title}"
  	end
  end
end