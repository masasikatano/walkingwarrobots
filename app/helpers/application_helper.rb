module ApplicationHelper
  def title(page_title)
    base_title = "WWRR - Walking War Robots Ranking ウォーキングウォーロボッツランキング"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end    
end
