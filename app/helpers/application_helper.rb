module ApplicationHelper
  def title(page_title)
    base_title = "WWRR - Walking War Robots Ranking ウォーキングウォーロボッツランキング"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  def format_time(time)
    time.strftime("%Y-%m-%d %H:%M:%S")
  end
end
