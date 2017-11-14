@client = Twitter::REST::Client.new do |config|
  config.consumer_key    = ''
  config.consumer_secret = ''
  config.access_token    = ''
  config.access_token_secret = ''
end

# 特定ユーザのtimeline取得
@client.user_timeline("pso2_emg_hour").each do |timeline|
  puts @client.status(timeline.id).text
end

# 特定ユーザのtimelineを件数(2件)指定して取得
@client.user_timeline("pso2_emg_hour", { count: 2 } ).each do |timeline|
  puts @client.status(timeline.id).text
end
