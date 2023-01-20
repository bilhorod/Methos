#function to extract key value by passing any of the above events
def extract_key_value_pair(hash, key)
	value = hash[key]
	return value
end

nested_key_value_pair = extract_key_value_pair(person_recs_view_one, "event")
nested_value = nested_key_value_pair["$city"]
print nested_value



#function to extract inner key of a nested hash by passing any of the above events and key 
def extract_nested_hash (hash, first_key, second_key, inner_key, second_inner_key)
	event_name = hash[first_key]
	city = hash[second_key][inner_key]
	brand = hash[second_key][second_inner_key]
	
	return { event_name:event_name ,city:city , brand:brand }
	
end
