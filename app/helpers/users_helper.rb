module UsersHelper

  def check_for_something(what)
    if current_user.send(what).present?
      "<h2>#{what.capitalize}</h2>".html_safe
    else
      "<h4>#{current_user.name} has not submitted any #{what} yet.</h4>".html_safe
    end
  end

end
