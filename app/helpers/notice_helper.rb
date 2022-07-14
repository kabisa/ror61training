module NoticeHelper
  def show_notice(text)
    return if text.blank?

    content_tag(:div, id: 'notice') do
      concat text
      concat content_tag(:button, '×', class: 'btn-close', title: 'Close')
    end
  end
end
