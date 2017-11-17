class Twitter_api
require 'twitter'

  def self.client
  client = Twitter::REST::Client.new do |config|
    config.consumer_key    = 'dOvsDX8dcSH7vO7EDX3DTTAyf'
    config.consumer_secret = 'RaTk7CUX6kWSnSsQwSWhZqnio69Vn9ohmn0KpdKXaKgdS90S2P'
    config.access_token    = '766170028572114944-RPsZp3KmjhBW5StY6Zwm7B36VuzGXEK'
    config.access_token_secret = 'cOtPuCzdSmLBtFbiEkO0cC8sgRcIfBCKMWBfN1XVv2GBD'
  end
  binding.pry
  client.user_timeline("pso2_emg_hour").each do |timeline|
    puts client.status(timeline.id).text
  end
end

  # 特定ユーザのtimeline取得
  def get_tl
    client.user_timeline("pso2_emg_hour").each do |timeline|
      puts @client.status(timeline.id).text
    end
  end

  # 特定ユーザのtimelineを件数(2件)指定して取得
  client.user_timeline("pso2_emg_hour", { count: 2 } ).each do |timeline|
    puts client.status(timeline.id).text
  end

  def self.aaa
    puts "hello"
  end

end
