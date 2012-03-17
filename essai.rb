require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome 
driver.get "http://news.ycombinator.com"
titles = driver.find_elements(class: "title")
titles.each do |element|
  driver.execute_script("arguments[0].style.fontFamily = 'Times New Roman'", element)
end

driver.save_screenshot("./hacker news times new roman.png")