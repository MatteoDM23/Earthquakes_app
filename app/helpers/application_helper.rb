module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "CS2012 Assignment 2: Earthquake Data App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
