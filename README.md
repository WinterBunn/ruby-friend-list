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

rails routes --> list all the current routes