## Synopsis

Blather allows users to post topics, create sub posts on those topics and comment on the sub posts. Blather uses authentication for user profiles, test driven development, automated mailing systems and model relations. Blather allows users to sign up, create topics and comments, favorite and receive updates on comments via email.

## Live
https://pure-springs-31865.herokuapp.com/

## Installation

-Ruby 2.1
-RoR 4.2.5

To get started with the app, clone the repo and then install the needed gems:

$ bundle install --without production
Next, migrate the database:

$ rails db:migrate
Finally, run the test suite to verify that everything is working correctly:

$ rails rspec
If the test suite passes, you'll be ready to run the app in a local server:

$ rails server

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
  
## Credit

Jeff Charlesworth. Some samples provided by Bloc for learning purposes. No code copied. 
