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


#(sleep) is used to throughtout to ensure events fire sequentially
#Account state precondtion 
#No bio
#No education
#only 1 work experience
#Interests: Business Development, Business Intelligence, Business Strategy, Economics. NOT SELECTED
#Portoflio Item not present
#5 interests selected, not from the mentioned above



#Tap My profile and settings
sleep(2)
click_profile = driver.find_element(id: "com.methos.android:id/profile").click
sleep(1)
tap_settings = driver.find_element(id: "com.methos.android:id/settings").click
sleep (1)


#add email and save
add_email_click = driver.find_element(id: "com.methos.android:id/add_email").click
enter_email = driver.find_element(:id, "com.methos.android:id/email_input").send_keys "a@a.com"
save_email_input = driver.find_element(:id, "com.methos.android:id/action").click
sleep(2)
puts "Email input successfully"


#tap to add name and input the name
edit_name = driver.find_element(:id, "com.methos.android:id/name").click
input_first_name = driver.find_element(:id, "com.methos.android:id/first_name_input").send_keys "Mo"
save_button = driver.find_element(id: "com.methos.android:id/action").click
sleep(1)
save = driver.find_element(:accessibility_id, "Action back").click
puts "Name input successfully"
sleep(1)


#clicks on influence view then on profile stats/insights 
driver.find_element(id:"com.methos.android:id/icon").click #the influence icon
sleep(1)
driver.find_element(id:"com.methos.android:id/close").click 
sleep(1)
driver.find_element(id:"com.methos.android:id/profile_stats").click #profile stats clicked
sleep(1)
driver.find_element(id:"com.methos.android:id/back").click 
sleep(1)
puts "Influence viewed and insights viewed successfully"


#tap on scan an id then navigate to scan camera view 
driver.find_element(id:"com.methos.android:id/qr_code").click 
sleep(2)
scan_text_in_scan_view = driver.find_element(:accessibility_id, "SCAN").click
sleep(2)
driver.find_element(id:"com.methos.android:id/close").click
sleep(2)
puts "Scan View opened and closed"



#scroll to a point below(just enough to see intent.) 9 indicating the bottom and 0 the top. 
Appium::Core::TouchAction.new(driver).swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.5).perform
sleep(2)

#click on 'current status' and select a status
current_status_button = driver.find_element(:id, "com.methos.android:id/intent").click
sleep(1)
any_intent = driver.find_element(:xpath, "//*[contains(@text, 'Hiring New Position')]").click
sleep(3)
puts "Status changed successfully"


#scroll further down enough to see bio and industry
Appium::Core::TouchAction.new(driver).swipe(start_x: 0.5, start_y: 0.9, end_x: 0.5, end_y: 0.5).perform
sleep(4)


#edit bio
edit_bio = driver.find_element(id: "com.methos.android:id/imageView2").click
sleep(2)
enter_bio = driver.find_element(id: "com.methos.android:id/bio").send_keys "I am automation"
done_button_clicked = driver.find_element(:id, "com.methos.android:id/action_done").click
sleep(1)
puts "Bio added successfully"


#scroll further down enough to see work experience 
Appium::Core::TouchAction.new(driver).swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.7).perform
sleep(2)


#add job by searching methos and selecting any input
add_job_button_clicked = driver.find_element(:id, "com.methos.android:id/description").click
sleep(1)
add_company_name = driver.find_element(:id, "com.methos.android:id/company_name").click
sleep(1)
input_company_name = driver.find_element(:id, "com.methos.android:id/input").send_keys "Methos"
sleep(1)
driver.find_element(id: "com.methos.android:id/title").click
sleep(1)
save_add_job = driver.find_element(:id, "com.methos.android:id/positive").click
sleep(1)
puts "Job added successfully"


#scroll further down enough to see education
Appium::Core::TouchAction.new(driver).swipe(start_x: 0.5, start_y: 0.7, end_x: 0.5, end_y: 0.6).perform
sleep(2)


#add education by searching stanford and selecting any input
add_education_click = driver.find_element(id: "com.methos.android:id/body").click
sleep(1)
add_institute_click = driver.find_element(id: "com.methos.android:id/institute_name").click
sleep(2)
click_on_search_field = driver.find_element(id: "com.methos.android:id/input").click 
enter_school = driver.find_element(id: "com.methos.android:id/input").send_keys "Stanford"
select_school = driver.find_element(id: "com.methos.android:id/title").click
sleep(1)
save_add_school = driver.find_element(id: "com.methos.android:id/positive").click
puts "School added successfully"


#scroll further down enough to see interests and skills
Appium::Core::TouchAction.new(driver).swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.6).perform
sleep(2)


#edit interests
add_interests_click = driver.find_element(id: "com.methos.android:id/add").click
sleep(1)
select_parent_interest = driver.find_element(:xpath, "//*[contains(@text, 'Business')]").click
sleep(1)
select_interest = driver.find_element(:xpath, "//*[contains(@text, 'Business Management')]").click
sleep(1)
select_interest = driver.find_element(:xpath, "//*[contains(@text, 'Business Intelligence')]").click
sleep(1)
select_interest = driver.find_element(:xpath, "//*[contains(@text, 'Business Strategy')]").click
sleep(1)
select_interest = driver.find_element(:xpath, "//*[contains(@text, 'Economics')]").click
sleep(1)
save_interests = driver.find_element(id: "com.methos.android:id/save").click
sleep(1)
puts 'Interest added successfully'


#edit skills 
click_edit_skills = driver.find_element(id: "com.methos.android:id/action").click
sleep(1)
click_on_skill = driver.find_element(id: "com.methos.android:id/label").click
sleep(1)
click_on_skill_icon = driver.find_element(id: "com.methos.android:id/icon").click
sleep(1)
save_skill = driver.find_element(id: "com.methos.android:id/save").click
sleep(1)
save_skill_view = driver.find_element(id: "com.methos.android:id/save").click
puts 'Skills added successfully'


#edit portfolio 
click_portfolio = driver.find_element(id: "com.methos.android:id/body").click
sleep(1)
add_attachment = driver.find_element(id: "com.methos.android:id/plus").click 
sleep(1)
add_link = driver.find_element(id: "com.methos.android:id/link").click
sleep(1)
input_keys = driver.find_element(id: "com.methos.android:id/input").send_keys "www.google.com"
sleep(3)
click_add = driver.find_element(id: "com.methos.android:id/action").click
sleep(1)
click_save = driver.find_element(id: "com.methos.android:id/action").click






puts "Portfolio Added successfully"
puts "Test passed successfully"








=begin
#add social media 
add_social_media_button = driver.find_element(:id, "com.methos.android:id/add_social_media_menu").click
select_instagram = driver.find_element(:id, "com.methos.android:id/instagram").click
=end






