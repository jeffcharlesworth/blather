class FavoriteMailer < ApplicationMailer
  default from: "test@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["Refrences"] = "<post/#{post.id}@your-app-name.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(user, post)
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["Refrences"] = "<post/#{post.id}@your-app-name.example>"

    @user = user
    @post = post

    mail(to: user.email, subject: "New post #{post.title}", body: "You will receive updates when your post is commented on.")
  end
end
