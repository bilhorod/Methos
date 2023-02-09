#This suite will cover discovery screen analytics event.
require 'json'

file = File.read('Discovery_Screen.json')
json = JSON.parse(file)

#events 
person_recs_view_one = json[0]
person_recs_action_one = json[1]
person_recs_view_two = json[2]
person_recs_action_two = json[3]
feed_view = json[4]
group_recs_view_one = json[5]
group_recs_action_one = json[6]
group_recs_view_two = json[7]
group_join = json[8]
group_recs_view_three = json[9]
group_recs_action_two = json[10]
feed_view_two = json[11]
news_recs_view_one = json[12]
news_recs_action_one = json[13]
discussion_join = json[14]
news_recs_view_two = json[15]
news_recs_action_two = json[16]

#function to extract inner key of a nested hash by passing any of the above events and key 
def extract_event_name_and_city(hash, first_key, second_key, inner_key)
	event_name = hash[first_key]
	city = hash[second_key][inner_key]

	return {event_name:event_name , city:city}	
end

person_recs_view_one_properties = extract_event_name_and_city(person_recs_view_one, "event" , "properties" , "$city")

#looping through the hash to extract specific key values and verifying the key and value is equal to expected result
person_recs_view_one_properties.each do |key, value|
	if  key == :event_name && value == "person_recs_view"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :city && value == "Venice"
		puts "Passed - #{key}: #{value}"
	else 
		puts "Error #{key} - expecting: #{key == :event_name ? 'person_recs_view' : 'Venice'}, got: #{value}"
end
	end




#function to extract inner key of a nested hash by passing any of the above events and key 
def extract_event_name_action_method_source(hash, first_key, second_key, inner_key, second_inner_key, third_inner_key)
	event_name = hash[first_key]
	action = hash[second_key][inner_key]
	method = hash[second_key][second_inner_key]
	source = hash[second_key][third_inner_key]
	
	return {event_name:event_name , action:action , method:method, source:source}
end
person_recs_action_one_properties = extract_event_name_action_method_source(person_recs_action_one, "event", "properties", "action", "method", "source")

person_recs_action_one_properties.each do |key, value|
	if  key == :event_name && value == "person_recs_action"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :action && value == "button"
		puts "Passed - #{key}: #{value} "
	elsif
		key == :method && value == "inside"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :source && value == "connect"
		puts "Passed - #{key}: #{value} "
	else
		comparison_value = if key == :event_name
							"'person_recs_action"
							elsif key == :action
								"'button'"
							elsif key == :method
								"'inside'"
							elsif key == :source
								"'connect'"
							end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
	end
end



person_recs_view_two_properties = extract_event_name_and_city(person_recs_view_two, "event", "properties", "$city")
person_recs_view_two_properties.each do |key, value|
	if key == :event_name && value == "person_recs_view"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :city && value == "Venice"
		puts "Passed - #{key}: #{value} " 
	else 
		comparison_value = if key == :event_name
							"'person_recs_view'"
						elsif key == :city
							"'Venice'"
						end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
	end
end


#person_recs_action_two_properties = extract_event_name_action_method_source(person_recs_action_two, "event", "properties", "action", "method", "source")

#function to check properties by passing the event and specifying which properties to look for
def check_properties(event_name, properties)
	properties.each do |key, value|
		if key == :event_name && value == "person_recs_action"
			puts "Passed - #{key}: #{value}"
		elsif key == :action && value == "button"
			puts "Passed - #{key}: #{value}"
		elsif key == :method && value == "inside"
			puts "Passed - #{key}: #{value}"
		elsif key == :source && value == "pass"
			puts "Passed - #{key}: #{value}"
		else
			comparison_value = if key ==:event_name
							"'person_recs_action'"
						elsif key == :action
							"'button'"
						elsif key == :method
							"'inside'"
						elsif key == :source
							"'pass'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end
end

person_recs_action_two_properties = {
  event_name: "person_recs_action",
  action: "button",
  method: "inside",
  source: "pass"
}
check_properties("person_recs_action_two", person_recs_action_two_properties)




#function to extract inner key of a nested hash by passing any of the above events and key 
def extract_event_name_newscount_peoplecount_newsstatus_peoplestatus(hash, first_key, second_key, inner_key, second_inner_key, third_inner_key, fourth_inner_key, fifth_inner_key, sixth_inner_key)
	event_name = hash[first_key]
	news_count = hash[second_key][inner_key]
	people_count = hash[second_key][second_inner_key]
	groups_count = hash[second_key][third_inner_key]
	people_status = hash[second_key][fourth_inner_key]
	news_status = hash[second_key][fifth_inner_key]
	groups_status = hash[second_key][sixth_inner_key]
	return {event_name:event_name , news_count:news_count , people_count:people_count, groups_count:groups_count, people_status:people_status, news_status:news_status, groups_status:groups_status}
end


feed_view_properties = extract_event_name_newscount_peoplecount_newsstatus_peoplestatus(feed_view, 'event', 'properties', 'news_count', 'people_count', 'groups_count' , 'people_status', 'news_status', 'groups_status')
feed_view_properties.each do |key, value|
	if key == :event_name && value == "feed_view"
		puts "Passed - #{key}: #{value}"
	elsif key == :news_count && value == 10
		puts "Passed - #{key}: #{value}"
	elsif key == :people_count && value == 9
		puts "Passed - #{key}: #{value}"
	elsif key == :groups_count && value == 4
		puts "Passed - #{key}: #{value}"
	elsif key == :people_status && value == ""
		puts "Passed - #{key}: #{value}"
	elsif key == :news_status && value == ""
		puts "Passed - #{key}: #{value}"
	elsif key == :groups_status && value == ""
		puts "Passed - #{key}: #{value}"
	else
			comparison_value = if key ==:event_name
							"'feed_view'"
						elsif key == :news_count
							"10"
						elsif key == :people_count
							"9"
						elsif key == :groups_count
							"4"
						elsif key == :people_status
							""
						elsif key == :news_status
							""
						elsif key == :groups_status
							""
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end



group_recs_view_one_properties = extract_event_name_and_city(group_recs_view_one, 'event', 'properties', '$city')
group_recs_view_one_properties.each do |key, value|
	if  key == :event_name && value == "group_recs_view"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :city && value == "Venice"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'group_recs_view'"
						elsif key == :city
							"'Venice'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end



group_recs_action_one_properties = extract_event_name_action_method_source(group_recs_action_one, "event", "properties", "action", "method", "source")
group_recs_action_one_properties.each do |key, value|
	if  key == :event_name && value == "group_recs_action"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :action && value == "button"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :method && value == "inside"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :source && value == "join"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'group_recs_action'"
							elsif key == :action
								"'button'"
							elsif key == :method
								"'inside'"
							elsif key == :source
								"'join'"
							end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
	end
end




group_recs_view_two_properties = extract_event_name_and_city(group_recs_view_two, "event", "properties", "$city")
group_recs_view_two_properties.each do |key, value|
	if  key == :event_name && value == "group_recs_view"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :city && value == "Venice"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'group_recs_view'"
						elsif key == :city
							"'Venice'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end




def extract_event_name_and_source(hash, first_key, second_key, inner_key)
	event_name = hash[first_key]
	source = hash[second_key][inner_key]

	return {event_name:event_name , source:source}	
end

group_join_properties = extract_event_name_and_source(group_join, "event", "properties", "source")
group_join_properties.each do |key, value|
	if  key == :event_name && value == "group_join"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :source && value == "feed"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'group_join'"
						elsif key == :source
							"'feed'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end




group_recs_view_three_properties = extract_event_name_and_city(group_recs_view_three, "event", "properties", "$city")
group_recs_view_three_properties.each do |key, value|
		if  key == :event_name && value == "group_recs_view"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :city && value == "Venice"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'group_recs_view'"
						elsif key == :city
							"'Venice'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end




group_recs_action_two_properties = extract_event_name_action_method_source(group_recs_action_two, "event", "properties", "action", "method", "source")
group_recs_action_two_properties.each do |key, value|
	if  key == :event_name && value == "group_recs_action"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :action && value == "button"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :method && value == "inside"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :source && value == "pass"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'group_recs_action'"
							elsif key == :action
								"'button'"
							elsif key == :method
								"'inside'"
							elsif key == :source
								"'pass'"
							end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
	end
end




feed_view_two_properties = extract_event_name_newscount_peoplecount_newsstatus_peoplestatus(feed_view_two, 'event', 'properties', 'news_count', 'people_count', 'groups_count' , 'people_status', 'news_status', 'groups_status')
feed_view_two_properties.each do |key, value|
	if key == :event_name && value == "feed_view"
		puts "Passed - #{key}: #{value}"
	elsif key == :news_count && value == 0
		puts "Passed - #{key}: #{value}"
	elsif key == :people_count && value == 10
		puts "Passed - #{key}: #{value}"
	elsif key == :groups_count && value == 3
		puts "Passed - #{key}: #{value}"
	elsif key == :people_status && value == ""
		puts "Passed - #{key}: #{value}"
	elsif key == :news_status && value == ""
		puts "Passed - #{key}: #{value}"
	elsif key == :groups_status && value == ""
		puts "Passed - #{key}: #{value}"
	else
			comparison_value = if key ==:event_name
							"'feed_view'"
						elsif key == :news_count
							"10"
						elsif key == :people_count
							"9"
						elsif key == :groups_count
							"4"
						elsif key == :people_status
							""
						elsif key == :news_status
							""
						elsif key == :groups_status
							""
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end





news_recs_view_one_properties = extract_event_name_and_city(news_recs_view_one, "event", "properties", "$city")
news_recs_view_one_properties.each do |key, value|
		if  key == :event_name && value == "news_recs_view"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :city && value == "Venice"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'news_recs_view'"
						elsif key == :city
							"'Venice'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end



news_recs_action_one_properties = extract_event_name_action_method_source(news_recs_action_one, "event", "properties", "action", "method", "source")
news_recs_action_one_properties.each do |key, value|
	if  key == :event_name && value == "news_recs_action"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :action && value == "button"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :method && value == "inside"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :source && value == "join"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'news_recs_action'"
							elsif key == :action
								"'button'"
							elsif key == :method
								"'inside'"
							elsif key == :source
								"'join'"
							end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
	end
end



discussion_join_properties = extract_event_name_and_source(discussion_join, "event", "properties", "source")
discussion_join_properties.each do |key, value|
	if  key == :event_name && value == "discussion_join"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :source && value == "feed"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'discussion_join'"
						elsif key == :source
							"'feed'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end



news_recs_view_two_properties = extract_event_name_and_city(news_recs_view_two, 'event', "properties", "$city")
news_recs_view_two_properties.each do |key, value|
	if  key == :event_name && value == "news_recs_view"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :city && value == "Venice"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'news_recs_view'"
						elsif key == :city
							"'Venice'"
						end
			puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
		end
	end

news_recs_action_two_properties = extract_event_name_action_method_source(news_recs_action_two, "event", "properties", "action", "method", "source")
news_recs_action_two_properties.each do |key, value|
	if  key == :event_name && value == "news_recs_action"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :action && value == "button"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :method && value == "inside"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :source && value == "pass"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'news_recs_action'"
							elsif key == :action
								"'button'"
							elsif key == :method
								"'inside'"
							elsif key == :source
								"'pass'"
							end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
	end
end









=begin
#Below is all one flow 
#function to extract key value by passing any of the above events
def extract_key_value_pair(hash, key)
	value = hash[key]
	return value
end

nested_key_value_pair = extract_key_value_pair(person_recs_view_one, "event")
nested_value = nested_key_value_pair["$city"]
print nested_value




#same below
event_name = extract_key_value_pair(person_recs_view_one, "event")
if event_name != "person_recs_view"
	puts "Event Name Incorrect: person_recs_view_one"
else
	puts "first test case pases: person_recs_view_one"
end

event_name_two = extract_key_value_pair(person_recs_action_one, "event")
if event_name_two != "person_recs_action"
	puts "Event Name Incorrect: person_recs_action_one"
else
	puts "first test case pases: person_recs_action_one"
end
=end








