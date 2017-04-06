require 'open-uri'
require 'nokogiri'
require 'json'

url = "https://instances.mastodon.xyz/instances.json"

# Or, if you saved down a local copy...
# url = "instances.json"

instance_json = Nokogiri::HTML(open(url))
puts "got the json"
instance_array = JSON.parse(instance_json)
puts "parsed the json"

number_of_instances = instance_array.count

puts "Before deleting duplicates, we have #{number_of_instances} instances"

# downcase names...
instance_array.each do |instance|
  instance['name'].downcase!
end

instance_array.sort_by! do |instance|
  instance["name"]
end

# ...delete duplicates
instance_array.uniq! do |instance|
  instance['name'] 
end

number_of_instances = instance_array.count

# count number of "UP" instances

number_of_up_instances = 0
instance_array.each do |instance|
  if instance['up']
    number_of_up_instances = number_of_up_instances + 1
  end
end
# sort by number of users
instance_array.sort_by! do |instance|
  instance["users"]
end.reverse!

total_users = 0
instance_array.each do |instance|
  total_users = total_users + instance["users"]
end

def format(n)
  formatted_n = n.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
end

puts "Current Mastodon stats!"
puts ""
puts "#{format(total_users)} users across #{format(number_of_instances)} instances (#{number_of_up_instances} are UP)"
puts ""

puts "Top 15 instances by # of users:"
instance_array[0..14].each do |instance|
  puts "#{instance['name']} (#{format(instance['users'])})"
end

puts ""
puts "via https://instances.mastodon.xyz"
