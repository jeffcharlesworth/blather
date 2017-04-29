module PostsHelper
  def user_is_authorized_for_post?
    post = Post.find(params[:id])
    current_user && (current_user == post.user || current_user.admin?)
  end
end
