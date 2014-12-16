class Condition < ActiveRecord::Base
  belongs_to :pet
  # has_many :pets
  # belongs_to :medication
  # has_many :medications


# # insane 'if' logic.. pass in a variable based on category here

#   if @pet.category == "cat"
#   if @pet.category == "dog"
#   if @pet.category == "bird"
#   if @pet.category == "horse"
#   if @pet.category == "fish"
#   if @pet.category == "exotic"
#   if @pet.category == "rabbit"
#   if @pet.category == "ferret"
#   if @pet.category == "reptile"

#   # methods for getting content from petmd via Feedjira

  def self.fetch_condition_entries
    url = %w[http://www.petmd.com/rss/cat.health]
    feeds = Feedjira::Feed.fetch_and_parse url
    feed = feeds['http://www.petmd.com/rss/cat.health']
    @entries = feed.entries
  end

  def display_condition_entries
    fetch_conditions
    render json: @entries
  end


end
