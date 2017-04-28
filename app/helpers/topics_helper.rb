module TopicsHelper
  def user_is_admin?
    current_user && current_user.admin?
  end

  def user_is_moderator_admin?
    current_user && (current_user.moderator? || current_user.admin?)
  end
end
