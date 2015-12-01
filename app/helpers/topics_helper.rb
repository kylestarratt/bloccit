module TopicsHelper
  def user_is_authorized_for_topics?(action, topic=nil)
    if action == "destroy" || action == 'new'
      current_user.admin?
    elsif action == "edit" || action == "update"
      current_user.admin? || current_user.moderator?    
    end
  end
end
