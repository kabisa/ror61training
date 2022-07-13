module NoticeHelper
  def show_notice(text)
    return if text.blank?

    content_tag(:p, text, id: 'notice')
  end
end
