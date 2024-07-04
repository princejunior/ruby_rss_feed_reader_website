class EntriesController < ApplicationController
    # Before executing actions, find the associated feed
    before_action :set_feed
  
    # Action to display all entries for a specific feed
    def index
      @entries = @feed.entries
    end
  
    # Action to display a specific entry
    def show
      @entry = @feed.entries.find(params[:id])
    end
  
    private
  
    # Method to find the associated feed
    def set_feed
      @feed = Feed.find(params[:feed_id])
    end
  end
  