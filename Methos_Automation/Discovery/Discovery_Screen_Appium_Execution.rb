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


person_recs_view
group_recs_view
news_recs_view
person_recs_action
group_recs_action
news_recs_action
person_recs_open
group_recs_open
news_recs_open
feed_view
group_join
discussion_join



=end

el1 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout[2]"
el1.click
el2 = driver.find_element :id, "com.methos.android:id/action_connect"
el2.click
el3 = driver.find_element :id, "com.methos.android:id/action_pass"
el3.click
el4 = driver.find_element :accessibility_id, "Action back"
el4.click
el5 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.FrameLayout[2]"
el5.click
el6 = driver.find_element :id, "com.methos.android:id/action_connect"
el6.click
el7 = driver.find_element :id, "com.methos.android:id/action_pass"
el7.click
el8 = driver.find_element :accessibility_id, "Action back"
el8.click
el9 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.widget.FrameLayout/android.widget.FrameLayout[2]"
el9.click
el10 = driver.find_element :id, "com.methos.android:id/action_connect"
el10.click
el11 = driver.find_element :id, "com.methos.android:id/action_pass"
el11.click
el12 = driver.find_element :accessibility_id, "Action back"
el12.click