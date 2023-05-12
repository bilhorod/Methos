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



#Account Precondition
#New User
#Interests selected


#Appium execution 
=begin
    1. Tap Recs>> Person_recs_view fires 						
    2. Tap to connect > Person_recs_action fires
    3. Tap to pass > Person_recs_action fires 
    4. Hit back > Feed_view fires
    5. Tap groups > group_recs_view fires
    6. Tap to like > group_recs_action fires
    7. Tap to pass > group_recs_action fires 
    8. Hit back > Feed_view fires
    9. Tap news > news_recs_view fires
    10. Tap to like > news_recs_action fires
    11. Tap to pass > news_recs_action fires
    12. Hit back > Feed_view fires
    13. Tap search > feed_search fires
    14. Search a name
    15. Tap on result > user_view fires
    16. Tap to connect > connection_request fires

#sequential
app_open
feed_view
person_recs_view
person_recs_action
person_recs_view
person_recs_action
person_recs_view
group_recs_view
group_recs_action
group_recs_view
group_join
group_recs_action
group_recs_view
news_recs_view
news_recs_action
news_recs_view
discussion_join
news_recs_action
news_recs_view
feed_search
user_view
connection_request
=end



sleep (4)

tap_connections = driver.find_element(id: "com.methos.android:id/packet_connections").click
sleep(1)
tap_connect = driver.find_element(:id, "com.methos.android:id/action_connect").click
sleep(1)
tap_pass = driver.find_element(:id, "com.methos.android:id/action_pass").click
sleep(1)
tap_back = driver.find_element(:accessibility_id, "Action back").click
sleep(1)
tap_groups = driver.find_element(id: "com.methos.android:id/packet_groups").click
sleep(1)
tap_connect = driver.find_element(:id, "com.methos.android:id/action_connect").click
sleep(1)
tap_pass = driver.find_element(:id, "com.methos.android:id/action_pass").click
sleep(3)
tap_back= driver.find_element(:accessibility_id, "Action back").click
sleep(2)
tap_news = driver.find_element(id: "com.methos.android:id/packet_news").click
sleep(1)
tap_connect = driver.find_element(:id, "com.methos.android:id/action_connect").click
sleep(1)
tap_pass = driver.find_element(:id, "com.methos.android:id/action_pass").click
sleep(3)
tap_back = driver.find_element(:accessibility_id, "Action back").click
sleep(1)
tap_search = driver.find_element(:id, "com.methos.android:id/search").click
sleep(1)
search = driver.find_element(:id, "com.methos.android:id/input").send_keys "A"
sleep(1)
tap_any_name = driver.find_element(:id, "com.methos.android:id/name").click
sleep(3)
request_connection = driver.find_element(:id, "com.methos.android:id/connect_request").click
sleep(3)
tap_back = driver.find_element(:id, "com.methos.android:id/back").click
sleep(2)
tap_back = driver.find_element(:id, "com.methos.android:id/back").click
sleep(1)






puts "Test Passed Successfully"