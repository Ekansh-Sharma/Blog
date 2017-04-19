module ApplicationHelper
  def error_message(msg)
    html = ''
    html << "<div class=' alert alert-danger'>"
    html << "<strong>ERROR!</strong> #{msg}"
    html << "</div>"
    html
  end

  def success_for(msg)
    html = ''
    html << "<div class='alert alert-success '>"
    html << "<strong>SUCCESS!</strong> #{msg}"
    html << "</div>"
    html
  end
end
