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

rails _5.2.4.1_ new test_erd -BT -d postgresql
bundle exec rails g erd:install
bundle exec rails db:migrate:reset

Entity Relationship Diagram, also known as ERD, ER Diagram or ER model, is a type of structural diagram for use in database design. An ERD contains different symbols and connectors that visualize two important information: The major entities within the system scope, and the inter-relationships among these entities.
https://github.com/voormedia/rails-erd
****************Diagram saved to 'erd.pdf'.************************
cd project/
add "gem"rails-erd"" to Gemfile
bundle
bundle exec rails g erd:install
bundle exec erd
bundle exec rails db:migrate
****************Diagram saved to 'erd.jpg'.************************
brew install graphviz
erd --inheritance --direct --attributes=foreign_keys,content --filetype=dot
dot -Tjpg erd.dot > erd.jpg
