#Desired Capabilities
require 'appium_lib_core'




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






tap_my_network = driver.find_element(id: "com.methos.android:id/connections").click
#click on first view
el2 = driver.find_element(id: "com.methos.android:id/content").click
sleep(1) 

#types message
el3 = driver.find_element(:id, "com.methos.android:id/chat_message_edittext")
el3.send_keys "Test Keys"
el3.click

#sends message
send_button = driver.find_element(id: "com.methos.android:id/chat_button_send").click
sleep(1)
#clicks on message itself to launch reaction view
el5 = driver.find_element(id: "com.methos.android:id/text").click
#clicks on reaction
tap_on_a_reaction = driver.find_element(id: "com.methos.android:id/reaction").click


#share photo 
photo_share_element = driver.find_element(id:'com.methos.android:id/photos').click
sleep(1)	
click_take_photo = driver.find_element(id:'com.methos.android:id/camera').click
sleep(1)
click_capture_photo = driver.find_element(id:'com.sec.android.app.camera:id/bottom_background').click
sleep(3)
click_ok_to_confirm = driver.find_element(id:'com.sec.android.app.camera:id/okay').click
sleep(6)
chat_send_button = driver.find_element(id:'com.methos.android:id/chat_button_send').click



#group share
group_share_element = driver.find_element(id:'com.methos.android:id/groups').click
sleep(1)
click_group_icon = driver.find_element(id:'com.methos.android:id/icon').click
sleep(2)
chat_send_button = driver.find_element(id:'com.methos.android:id/chat_button_send').click



#profile share
profile_share_element = driver.find_element(id:'com.methos.android:id/profiles').click
sleep(1)
click_profile_photo_share = driver.find_element(id:'com.methos.android:id/photo').click
sleep(1)
chat_send_button = driver.find_element(id:'com.methos.android:id/chat_button_send').click



#clicks back
tap_back = driver.find_element(id: "com.methos.android:id/back").click
sleep(2)




=begin commented out because the event is not firing
#connection request view 
sleep(1)
el8 = driver.find_element(id: "com.methos.android:id/counter").click
sleep (1)
el10 = driver.find_element :accessibility_id, "Close"
el10.click
=end 


#clicks on card scan
sleep(1)
el13 = driver.find_element(id: "com.methos.android:id/circle").click
sleep(1)
el14 = driver.find_element(id: "com.methos.android:id/dialog_header").click
el15 = driver.find_element :id, "com.methos.android:id/first_name"
el15.send_keys "Brock"
el16 = driver.find_element :id, "com.methos.android:id/last_name"
el16.click
el16.send_keys "Purdy"
el16.click
sleep (1)
el18 = driver.find_element(id: "com.methos.android:id/dialog_header").click
sleep (2)
el18 = driver.find_element(id: "com.methos.android:id/dialog_header").click
sleep(2)
el19 = driver.find_element(id: "com.methos.android:id/save").click








#invite friends code below
=begin
el24 = driver.find_element :id, "com.methos.android:id/invite_friends"
el24.click
el25 = driver.find_element :id, "com.methos.android:id/action_sync"
el25.click
el26 = driver.find_element :id, "com.android.permissioncontroller:id/permission_allow_button"
el26.click
el27 = driver.find_element :accessibility_id, "Close"
el27.click

=end

