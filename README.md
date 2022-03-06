# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

MVC STRUCTURE
pages#home
this will send to the pages_controller.rb and to the method home
this expects a view called home.html.erb in the views/pages folder

TO GENERATE A CONTROLLER
rails generate controller pages
or
rails g controller home index

TO GENERATE A MIGRATION
rails generate migration {name_migration}

TO GENERATE A SCAFOLD
rails generate scaffold {Name} tile:string description:text <-some examples of data that we can defie

TO RUN MIGRATION
rails db:migrate

TO ROLLBACK MIGRATION (rolls back the last migration)
rails db:rollback

EXTRA NOTES
rails routes --> list all the current routes
rails routes --expanded
rails routes --expanded | grep edit #search for an specific word

RAILS NAMING CONVENTION
Model name: article
Class name: Article -> Capitalized A and singular, CamelCase
File name: article.rb -> singular and all lowercase, snake_case
Table name: articles -> plural of model name and all lowercase

USING THE RAILS CONSOLE TO CREATE AN OBJECT
Article.all
Article.create(title: "My dear Dairy", description: "This is my dairy, do not read please")
Article.find(1)
--preferred way
article = Article.new
article.title= "My first book"
article.description= "This is my first book that i'm creating from the console"
article.save
--other way
article = Article.new(title: "My dear Dairy", description: "This is my dairy, do not read please")
article.save
-reading
Article.find(1)
Article.first
Article.last
-deleting
article = Article.find(3)
article.destroy
-reading errors when trying to save an object
article.save
article.errors or article.errors.full_messages

COURSE REPOSITORY: https://github.com/udemyrailscourse/alpha-blog-6