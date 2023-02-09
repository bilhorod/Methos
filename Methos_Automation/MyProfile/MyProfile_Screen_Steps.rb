require 'json'

file = File.read('My_Profile(testjson).json')
json = JSON.parse(file)

#json declaration of events in the json file
app_open = json[0]
feed_view = json[1]
my_profile_view = json[2]
settings_view = json[3]
my_profile_edit_email = json[4]
my_profile_edit_name = json[6]
influence_rank_view = json[8]
insights_view = json[9]
connection_scan_id_view = json[10]
my_profile_edit_intent = json[11]
my_profile_edit_bio = json[12]
my_profile_add_experience = json[13]
my_profile_add_education = json[14]


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



#my_profile_view
my_profile_view_properties = extract_event_name(my_profile_view, "event")
my_profile_view_properties.each do |key, value|
	if key == :event_name && value == "my_profile_view"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'my_profile_view'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end



#settings_view
settings_view_properties = extract_event_name(settings_view, "event")
settings_view_properties.each do |key, value|
	if key == :event_name && value == "settings_view"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'settings_view'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end



#my_profile_edit_email
my_profile_edit_email_properties = extract_event_name(my_profile_edit_email, "event")
my_profile_edit_email_properties.each do |key, value|
	if key == :event_name && value == "my_profile_edit_email"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'my_profile_edit_email'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end


#my_profile_edit_name
my_profile_edit_name_properties = extract_event_name(my_profile_edit_name, "event")
my_profile_edit_name_properties.each do |key, value|
	if key == :event_name && value == "my_profile_edit_name"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'my_profile_edit_name'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end


#influence_rank_view_properties
influence_rank_view_properties = extract_event_name(influence_rank_view, "event")
influence_rank_view_properties.each do |key, value|
	if key == :event_name && value == "influence_rank_view"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'influence_rank_view'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end



#insights_view_properties
insights_view_properties = extract_event_name(insights_view, "event")
insights_view_properties.each do |key, value|
	if key == :event_name && value == "insights_view"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'insights_view'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end



#connection_scan_id_view
connection_scan_id_view_properties = extract_event_name(connection_scan_id_view, "event")
connection_scan_id_view_properties.each do |key, value|
	if key == :event_name && value == "connection_scan_id_view"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'connection_scan_id_view'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end




#my_profile_edit_intent
my_profile_edit_intent_properties = extract_event_name(my_profile_edit_intent, "event")
my_profile_edit_intent_properties.each do |key, value|
	if key == :event_name && value == "my_profile_edit_intent"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'my_profile_edit_intent"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end




#my_profile_edit_bio
my_profile_edit_bio_propeties = extract_event_name(my_profile_edit_bio, "event")
my_profile_edit_bio_propeties.each do |key, value|
	if key == :event_name && value == "my_profile_edit_bio"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'my_profile_edit_bio'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end



#my_profile_add_experience
my_profile_add_experience_properties = extract_event_name(my_profile_add_experience, "event")
my_profile_add_experience_properties.each do |key, value|
	if key == :event_name && value == "my_profile_add_experience"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'my_profile_add_experience'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end




#my_profile_add_education
my_profile_add_education_properties = extract_event_name(my_profile_add_education, "event")
my_profile_add_education_properties.each do |key, value|
	if key == :event_name && value == "my_profile_add_education"
		puts "Passed - #{key}: #{value}"
	else
		comparison_value = if key == :event_name
							"'my_profile_add_education'"
	end
		puts "Error: expected #{key} to be #{comparison_value}, but got '#{value}'"
end
end








=begin
#events covered in this test case
my_profile_view
my_profile_edit_bio
my_profile_edit_intent
my_profile_add_experience
my_profile_add_education
my_profile_add_social_media (not immplemented)
my_profile_edit_interests (not implemented)
my_profile_edit_skills		(not implemented)
my_profile_edit_portfolio (not implemented)
my_profile_edit_name
my_profile_edit_email
insights_view
influence_rank_view

connection_add_by_name_view (not implemented)



#sequence of the events fired
app_open
feed_view
my_profile_view
settings_view
my_profile_edit_email
my_profile_edit_name
influence_rank_view
insights_view
connection_scan_id_view
my_profile_edit_intent
my_profile_edit_bio
my_profile_add_experience
my_profile_add_education
my_profile_edit_interests
my_profile_edit_skills
=end 



