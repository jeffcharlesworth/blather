Synopsis

Blather allows users to post topics, create sub posts on those topics and comment on the sub posts. Blather uses authentication for user profiles, test driven development, automated mailing systems and model relations. Blather allows users to sign up, create topics and comments, favorite and receive updates on comments via email.

Installation

-Ruby 2.1
-RoR 4.2.5

Tests

All tests are created with RSpec and can be run with the rspec commmand. The application uses factory girl to create models for testing.

Points of Interest
-Rating system
  app/models/post.rb
  app/controllers/votes_controller.rb
-favorites
  app/controllers/favorites_controller.rb
-Automated mailer
  app/mailer/favorite_mailer.rb
  app/models/comment.rb
-Roles
  app/models/user.rb
-TDD
  spec/
