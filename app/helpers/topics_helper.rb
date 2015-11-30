module TopicsHelper
  def user_is_authorized_for_topics?(topic, action)
    if action == "destroy"
      current_user == post.user || current_user.admin?
    elsif action == "edit" || action == "update"
      current_user == post.user || current_user.admin? || current_user.moderator?
    end
  end
end
