# RSS Feeder

This is an RSS feed reader web application built with Ruby on Rails. It allows users to add RSS feeds and view the entries for each feed.

## Prerequisites

- Ruby 3.1.2
- Rails 7.x
- SQLite (default database)
- Bundler

## Setup Instructions

Follow these steps to set up and run the application on your local machine.

### 1. Create a New Rails Project

Create a new Rails project and navigate to the project directory:

- ```bash
- rails new rss_feeder
- cd rss_feeder

### 2. Create the database for the project:
rails db:create

### 3. Generate Models and Controllers

- rails generate model Feed title:string url:string
- rails generate model Entry feed:references title:string url:string summary:text published_at:datetime
- rails generate controller Feeds
- rails generate controller Entries

### 4. Run Database Migrations

- rails db:migrate

### 5. Add the feedjira Gem for Parsing RSS Feeds in the Gemfile

- gem 'feedjira'

### 6. Run Bundle 

- bundle install

### 7. Implement Feed Parsing Logic

- Feed model (app/models/feed.rb)

### 8. Set Up Routes

- config/routes.rb

### 9. Create Views

- app/views/feeds/index.html.erb
- app/views/feeds/new.html.erb
- app/views/entries/index.html.erb

### 10. Implement Controllers

- app/controllers/feeds_controller.rb
- app/controllers/entries_controller.rb

### 11. Test Your Application
- rails server
