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

RAILS NAMING CONVENTION
Model name: article
Class name: Article -> Capitalized A and singular, CamelCase
File name: article.rb -> singular and all lowercase, snake_case
Table name: articles -> plural of model name and all lowercase