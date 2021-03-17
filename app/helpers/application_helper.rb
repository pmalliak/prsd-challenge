module ApplicationHelper
  def date_to_text(date)
    if date.present?
      date.strftime("#{date.day.ordinalize} of %B %Y")
    else
      nil
    end
  end
  
  def date_with_slash(date)
    if date.present?
      date.strftime("%d/%m/%Y")
    else
      nil
    end
  end
end
