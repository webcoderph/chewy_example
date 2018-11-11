# README

##Requirement
* elasticsearch

##Installation

Run first elasticsearch on your terminal:
  elasticsearch

Then go to your app path and type:
  bundle install
  rake db:setup
  rake db:migrate
  rake chewy:reset


After that you have to set and import the index:
  rails c
  > PostsIndex.create!
  > PostsIndex.import!

Then your good to go:
  rails s
  localhost:3000/posts



