class Entry < ActiveRecord::Base

  def self.get_response
    response = HTTParty.get("http://www.petmd.com/rss/cat.health")
    entries = response['rss']['channel']['item'].map { |item| { 'title' => item["title"], 'link' => item["link"] }  }
  end

end
