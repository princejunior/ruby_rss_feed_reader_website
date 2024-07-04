class FeedsController < ApplicationController
    # Action to display all feeds
    def index
      @feeds = Feed.all
    end
  
    # Action to display the form for creating a new feed
    def new
      @feed = Feed.new
    end
  
    # Action to create a new feed
    def create
      @feed = Feed.new(feed_params)
      if @feed.save
        # Fetch and parse the feed from the given URL
        Feed.update_from_feed(@feed.url)
        redirect_to feeds_path
      else
        render :new
      end
    end
  
    private
  
    # Strong parameters to allow only the permitted attributes
    def feed_params
      params.require(:feed).permit(:title, :url)
    end
  end
  
  
