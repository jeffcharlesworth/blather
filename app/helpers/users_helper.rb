module UsersHelper
  def has_posts(user)
    user.posts.empty? ? false : true
  end

  def has_comments(user)
    user.comments.empty? ? false : true
  end
end
