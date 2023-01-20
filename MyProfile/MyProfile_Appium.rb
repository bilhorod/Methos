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



el1 = driver.find_element(id: "com.methos.android:id/profile").click
el2 = driver.find_element(id: "com.methos.android:id/settings").click
sleep (1)
el3 = driver.find_element(id: "com.methos.android:id/add_email").click

el4 = driver.find_element :id, "com.methos.android:id/email_input"
el4.send_keys "a@a.com"

el6 = driver.find_element :id, "com.methos.android:id/action"
el6.click
sleep(2)
el9 = driver.find_element :id, "com.methos.android:id/name"
el9.click
el10 = driver.find_element :id, "com.methos.android:id/first_name_input"
el10.click
el10.send_keys "Ivanaa"
el10.click
el11 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[2]"
el11.click
el12 = driver.find_element :accessibility_id, "Close"
el12.click
el13 = driver.find_element :accessibility_id, "Action back"
el13.click

#clicks on influence view then on profile stats/insights 
driver.find_element(id:"com.methos.android:id/icon").click 
sleep (1)
driver.find_element(id:"com.methos.android:id/close").click 
sleep(1)
driver.find_element(id:"com.methos.android:id/profile_stats").click 
sleep(1)
driver.find_element(id:"com.methos.android:id/back").click 


#tap on scan an id then navigate to scan camera view 
driver.scroll(:down, id:"com.methos.android:id/intent")




driver.find_element(id:"com.methos.android:id/qr_code").click 









    
el14 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[2]/android.view.ViewGroup/android.widget.TextView"
el14.click
el15 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.TextView"
el15.click

el16 = driver.find_element :id, "com.methos.android:id/bio"
el16.click
el17 = driver.find_element :id, "com.methos.android:id/bio"
el17.click
el17.send_keys "Auto Test"
el17.click
el18 = driver.find_element :id, "com.methos.android:id/action_done"
el18.click

    
el19 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]"
el19.click
el20 = driver.find_element :id, "com.methos.android:id/company_name"
el20.click
el21 = driver.find_element :id, "com.methos.android:id/input"
el21.send_keys "Snapchat"
el22 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]"
el22.click
el23 = driver.find_element :id, "com.methos.android:id/positive"
el23.click
el24 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]"
el24.click
el25 = driver.find_element :id, "com.methos.android:id/institute_name"
el25.click
el26 = driver.find_element :id, "com.methos.android:id/input"
el26.send_keys "Stanford"
el27 = driver.find_element :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]"
el27.click
el28 = driver.find_element :id, "com.methos.android:id/positive"
el28.click

el29 = driver.find_element :id, "com.methos.android:id/action"
el29.click
