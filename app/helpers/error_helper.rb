module ErrorHelper
  def error_explanation(object)
    return if object.errors.none?

    content_tag(:div, id: 'error_explanation') do
      concat error_title(object)
      concat error_messages(object)
    end
  end

  def error_title(object)
    content_tag(:h2,
                t('error_title',
                  count: object.errors.count,
                  model: object.class.model_name.human.downcase).capitalize)
  end

  def error_messages(object)
    content_tag(:ul) do
      object.errors.map do |error|
        concat(error_message(error))
      end
    end
  end

  def error_message(error)
    content_tag(:li, error.full_message)
  end
end
