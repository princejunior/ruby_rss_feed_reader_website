# app/models/feed.rb
class Feed < ApplicationRecord
    # Establish a one-to-many relationship with the Entry model
    has_many :entries, dependent: :destroy
  
    # Class method to fetch and parse RSS feeds
    def self.update_from_feed(feed_url)
      # Fetch and parse the RSS feed from the given URL
      feed = Feedjira::Feed.fetch_and_parse(feed_url)
      # Iterate over each entry in the parsed feed and create a corresponding Entry record
      feed.entries.each do |entry|
        create_entry(entry)
      end
    end
  
    # Class method to create an Entry record from a parsed feed entry
    def self.create_entry(entry)
      # Create an Entry record with the given attributes
      Entry.create(
        title: entry.title,
        url: entry.url,
        summary: entry.summary,
        published_at: entry.published
      )
    end
  end
  