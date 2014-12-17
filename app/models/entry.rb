class Entry < ActiveRecord::Base

  # def self.sub_in_url(category_name)
  #   url = "http://www.petmd.com/rss/" + category_name + ".health"
  # end

  def self.get_response
    response = HTTParty.get("http://www.petmd.com/rss/cat.health")
    # response = HTTParty.get(url)
    entries = response['rss']['channel']['item'].map { |item| { 'title' => item["title"], 'link' => item["link"] }  }
  end

end
