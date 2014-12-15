class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :conditions
  has_many :medications, through: :conditions
  belongs_to :medication
  has_many :veterinarians, through: :appointments
  belongs_to :veterinarian
  has_many :expenses
  has_many :supplies


  #   # methods for getting breeds from petmd via Feedjira

  # if @pet.category == "cat"
  # if @pet.category == "dog"
  # if @pet.category == "horse"
#    def fetch_breeds
#      url = %w[http://www.petmd.com/rss/cat.breeds]
#      feeds = Feedjira::Feed.fetch_and_parse url
#      feed = feeds['http://www.petmd.com/rss/cat.breeds']
#       @entries = feed.entries
#    end

  # def display_breeds
  #   fetch_breeds
  #   render json: @entries
  # end


end
