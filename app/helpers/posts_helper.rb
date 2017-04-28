module PostsHelper
  def user_is_admin_post?
    post = Post.find(params[:id])
    current_user && (current_user.id == post.user.id || current_user.admin?)
  end

  def user_is_moderator_admin_post?
    post = Post.find(params[:id])
    current_user && (current_user.id == post.user.id || current_user.moderator? || current_user.admin?)
  end
end
