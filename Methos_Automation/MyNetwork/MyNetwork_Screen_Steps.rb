require 'json'

file = File.read('')

puts file

=begin
connections_view 
direct_message_send (image, profile_share, group_share, objective) text present: true or false
card_scan_view
connection_create_contact_view
connection_create_contact
connection_scan_id_view
=end



=begin
#these do not appear to be firing or are not implemented
connection_request
connection_new
connection_scan_id
connection_add_menu_view
connection_add_by_name_view
direct_message_react
=end

#Expected Sequence of events 
app_open
feed_view
connections_view
user_view
direct_message_send
direct_message_send
direct_message_send
direct_message_send
connections_view
card_scan_view
connection_create_contact_view
connection_create_contact
connections_view
