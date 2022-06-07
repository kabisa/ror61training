module ApplicationHelper
  def company_name
    'My company'
  end

  # human_change_time(__FILE__)
  def human_change_time(file)
    "#{time_ago_in_words(File.ctime(file))} ago"
  end

  # truncated_link_to(post, :title)
  def truncated_link_to(object, attribute)
    text = object.send(attribute)
    link_to(truncate(text), object, title: text)
  end
end
