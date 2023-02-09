require 'json'

file = File.read("Groups.json")
json = JSON.parse(file)

app_open = json[0]
feed_view = json[1]
news_recs_view_one = json[2]
news_recs_action = json[3]
news_recs_view_two = json[4]
discussion_join = json[5]
groups_view = json[6]
discussion_message_send = json[7]
group_create = json[9]
group_message_react = json[10]

#Account Precondition
#New User
#Biotech selected as an interest

#sequential 
#app_open
#feed_view
#news_recs_view
#news_recs_action
#news_recs_view
#discussion_join
#groups_view
#discussion_message_send (message only sending once, should fire 4 times)
#group_create
#group_message_send (does not fire)
#group_message_react


def extract_event_name(hash, first_key) 
	event_name = hash[first_key]
	return {event_name:event_name}
end



#app_open
app_open_properties = extract_event_name(app_open, "event")
app_open_properties.each do |key, value|
	if key == :event_name && value == "app_open"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'app_open'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end


#feed_view
feed_view_properties = extract_event_name(feed_view, "event")
feed_view_properties.each do |key, value|
	if key == :event_name && value == "feed_view"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'feed_view'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end


#news_recs_view_one
news_recs_view_one_properties = extract_event_name(news_recs_view_one, "event")
news_recs_view_one_properties.each do |key, value|
	if key == :event_name && value == "news_recs_view"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'news_recs_view'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end




#news_recs_action
news_recs_action_properties = extract_event_name(news_recs_action, "event")
news_recs_action_properties.each do |key, value|
	if key == :event_name && value == "news_recs_action"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'news_recs_action'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end




#news_recs_view_two
news_recs_view_two_properties = extract_event_name(news_recs_view_two, "event")
news_recs_view_two_properties.each do |key, value|
	if key == :event_name && value == "news_recs_view"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'news_recs_view'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end


#discussion_join
discussion_join_properties = extract_event_name(discussion_join, "event")
discussion_join_properties.each do |key, value|
	if key == :event_name && value == "discussion_join"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'discussion_join'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end




#groups_view
groups_view_properties = extract_event_name(groups_view, "event")
groups_view_properties.each do |key, value|
	if key == :event_name && value == "groups_view"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'groups_view'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end


#discussion_message_send 
def extract_event_name_text_present(hash, first_key, second_key, inner_key)
	event_name = hash[first_key]
	text_present = hash[second_key][inner_key]
	return {event_name:event_name, text_present:text_present}
end


discussion_message_send_properties = extract_event_name_text_present(discussion_message_send , "event", "properties", "text_present")
discussion_message_send_properties.each do |key, value|
	if key == :event_name && value == "discussion_message_send"
		puts "Passed - #{key}: #{value}"
	elsif
		key == :text_present && value == true
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'discussion_message_send'"
						elsif key ==:text_present
							true
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end


#group_create
def extract_event_name_visibility(hash, first_key, second_key, inner_key)
	event_name = hash[first_key]
	visibility = hash[second_key][inner_key]
	return {event_name:event_name, visibility:visibility}
end


group_create_properties = extract_event_name_visibility(group_create, "event", "properties", "visibility")
group_create_properties.each do |key, value|
	if key == :event_name && value == "group_create"
		puts "Passed - #{key}: #{value}"
	elsif 
		key == :visibility && value == "private"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'group_create'"
							elsif key ==:visibility
								"'private'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end





#group_message_react
group_message_react_properties = extract_event_name(group_message_react, "event")
group_message_react_properties.each do |key, value|
	if key == :event_name && value == "group_message_react"
		puts "Passed - #{key}: #{value}"
	else 
			comparison_value = if key ==:event_name
							"'group_message_react'"
	end 
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end 
end
