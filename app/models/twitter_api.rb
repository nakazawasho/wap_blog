class Twitter_api
require 'twitter'

  client = Twitter::REST::Client.new do |config|
    config.consumer_key    = 'dOvsDX8dcSH7vO7EDX3DTTAyf'
    config.consumer_secret = 'RaTk7CUX6kWSnSsQwSWhZqnio69Vn9ohmn0KpdKXaKgdS90S2P'
    config.access_token    = '766170028572114944-RPsZp3KmjhBW5StY6Zwm7B36VuzGXEK'
    config.access_token_secret = 'cOtPuCzdSmLBtFbiEkO0cC8sgRcIfBCKMWBfN1XVv2GBD'
  end


  def self.get_timeline(client)
    client.user_timeline({count: 5}).each do |tweet|
      puts tweet.full_text
      puts "FAVORITE: #{tweet.favorite_count}"
      puts "RETWEET : #{tweet.retweet_count}"
    end
  end

  def self.get_tweets(client)
    client.user_timeline("wapnaitei", { count: 5 } ).each do |timeline|
      tweet = client.status(timeline.id)
      puts tweet.created_at
      puts tweet.text
    end
  end

  self.get_timeline(client)
  # self.get_tweets(client)
end
