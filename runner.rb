require 'pry'
require 'open-uri'
require 'nokogiri'
require 'json'

url = "https://instances.mastodon.xyz/instances.json"


board_cat_body = Nokogiri::HTML(open(url))

puts JSON.parse(board_cat_body)

binding.pry
