module ApplicationHelper

  def full_title(page_title = '')
    if page_title.empty?
      base_title = "Ruby on Rails Tutorial Sample App"
    else
      full_title = "#{page_title} | #{base_title}"
    end
  end
end
