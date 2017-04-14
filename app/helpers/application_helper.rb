module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    full_title = "#{page_title} | #{base_title}"
    if page_title.empty? base_title else full_title
  end
end
