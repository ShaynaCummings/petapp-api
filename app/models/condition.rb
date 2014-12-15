class Condition < ActiveRecord::Base
  belongs_to :pet
  has_many :pets
  belongs_to :medication
  has_many :medications


  # methods for getting content from pedmd via Feedjira

  # def fetch_conditions
  #   url = %w[http://www.petmd.com/rss/cat.health]
  #   feeds = Feedjira::Feed.fetch_and_parse url
  #   feed = feeds['http://www.petmd.com/rss/cat.health']
  #   @entries = feed.entries
  # end

  # def display_conditions
  #   fetch_conditions
  #   render json: @entries
  # end


end
