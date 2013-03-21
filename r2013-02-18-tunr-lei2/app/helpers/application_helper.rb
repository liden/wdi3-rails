module ApplicationHelper
  def is_admin
    @auth.present? && @auth.is_admin
  end

  def intellinav
    links = ""

    if @auth.present?
      links = "#{render :partial => 'layouts/navuser'}"

      if @auth.is_admin
        links = "<li>#{link_to('Show Users', users_path)}</li>"
      end

      links += "#{render :partial => 'layouts/navlogout'}"

    else
      links = "#{render :partial => 'layouts/navnonuser'}"
    end
  end
end
