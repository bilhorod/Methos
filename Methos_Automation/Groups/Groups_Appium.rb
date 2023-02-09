#Desired Capabilities
require 'appium_lib_core'


#Account Precondition
#New User
#Biotech is an interest


caps = {}
caps["appium:deviceName"] = "Galaxy A12"
caps["platformName"] = "Android"
caps["appium:appPackage"] = "com.methos.android"
caps["appium:appActivity"] = "com.methos.ui.MainActivity"
caps["appium:noReset"] = true
caps["appium:ensureWebviewsHavePages"] = true
caps["appium:nativeWebScreenshot"] = true
caps["appium:newCommandTimeout"] = 3600
caps["appium:connectHardwareKeyboard"] = true
opts = {
    server_url: "http://127.0.0.1:4723/wd/hub"
}
driver = Appium::Core.for({caps: caps, appium_lib: opts}).start_driver


sleep(4)
#tap to view news
tap_new = driver.find_element(id: "com.methos.android:id/packet_news").click
sleep(1)
tap_connect_news = driver.find_element(id: "com.methos.android:id/action_connect").click
sleep(6)
tap_back_to_discover = driver.find_element(id: "com.methos.android:id/back").click
puts "News swiped Successfully"

#tap to view groups tab and type message in news convo
tap_groups = driver.find_element(id: "com.methos.android:id/groups").click
sleep(1)
tap_news_convo = driver.find_element(id: "com.methos.android:id/cei_drawable_vessel").click
sleep(1)
type_news_convo_message = driver.find_element(id: "com.methos.android:id/chat_message_edittext").send_keys "Wow"
send_message = driver.find_element(id: "com.methos.android:id/chat_button_send").click
sleep(1)
tap_back = driver.find_element(id: "com.methos.android:id/back").click
sleep(1)
puts "Message in convo sent Successfully"


#begin 'create a group'
create_group_button = driver.find_element(:id, "com.methos.android:id/create_group_action").click
sleep(1)
el3 = driver.find_element(:id, "com.methos.android:id/textinput_placeholder").click
sleep(1)
text_field = driver.find_element(:xpath, "//*[contains(@text, 'Group Name')]").send_keys "Auto_Mation"
save_group = driver.find_element(:id, "com.methos.android:id/rightAction").click
sleep(1)
add_description = driver.find_element(:id, "com.methos.android:id/description_input").send_keys "Auto_Automation_Group"
save_description = driver.find_element(:id, "com.methos.android:id/rightAction").click



#select private group and add photo
private_group_button = driver.find_element(:id, "com.methos.android:id/layout_private").click
save_button = driver.find_element(:id, "com.methos.android:id/rightAction").click
sleep(1)
#add photo
add_group_photo = driver.find_element(:id, "com.methos.android:id/action_add_photo").click
sleep(1)
select_camera = driver.find_element(:id, "com.methos.android:id/camera").click
sleep(2)
capture_button = driver.find_element(:id, "com.sec.android.app.camera:id/bottom_background").click
sleep(3)
save_capture = driver.find_element(:accessibility_id, "OK").click
sleep(7)
save_group_create = driver.find_element(:id, "com.methos.android:id/rightAction").click
sleep(1)



#choose interests for the group
parent_interest = driver.find_element(:xpath, "//*[contains(@text, 'Business')]").click
child_interest = driver.find_element(:xpath, "//*[contains(@text, 'Business Strategy')]").click
#save interests in the group
save_interest = driver.find_element(id: "com.methos.android:id/save").click
#create group by tapping 'continue'
create_group_continue = driver.find_element(id: "com.methos.android:id/rightAction").click
sleep(3)
puts "Group created Successfully"



#post in groups message+react, photo, link, news - FOR NOW, OUTREACH IS OMITTED 
group_post = driver.find_element(:id, "com.methos.android:id/new_post_input").click
type_message_group = driver.find_element(:id, "com.methos.android:id/input").send_keys "Test Message"
post_message_group = driver.find_element(:id, "com.methos.android:id/send").click
sleep(1)
tap_to_react = driver.find_element(:id, "com.methos.android:id/reactions_add").click
tap_on_reaction = driver.find_element(:id, "com.methos.android:id/reaction").click
sleep(2)


post_photo = driver.find_element(id: "com.methos.android:id/photo").click
sleep(2)
takea_photo = driver.find_element(id: "com.methos.android:id/camera").click
sleep(1)
capture_photo = driver.find_element(id: "com.sec.android.app.camera:id/bottom_background").click
sleep(3)
tap_ok = driver.find_element(id: "com.sec.android.app.camera:id/okay").click
sleep(6)
tap_post = driver.find_element(id: "com.methos.android:id/send").click
sleep(2)
post_link = driver.find_element(id: "com.methos.android:id/link").click
sleep(6)
tap_add_link = driver.find_element(id: "com.methos.android:id/input").send_keys "www.sf49ers.com"
sleep(9)
post_link = driver.find_element(id: "com.methos.android:id/action").click
sleep(3)
post_link = driver.find_element(id: "com.methos.android:id/send").click
puts "Posted in Groups Successfully"



puts "Test Passed Successfully "



    







