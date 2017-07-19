require 'rubygems'
require 'watir-webdriver'
require 'rspec/expectations'

url = "http://#{ENV['brstckName']}:#{ENV['brstckKey']}@hub.browserstack.com/wd/hub"

Before do |scenario|

  caps = Selenium::WebDriver::Remote::Capabilities.new
  caps['os'] = 'OS X'
  caps['os_version'] = 'Sierra'
  caps['browser'] = 'Safari'
  caps['browser_version'] = '10.0'
  caps['browserstack.debug'] = true

  browser= Watir::Browser.new(
      :remote,
      :url => url,
      :desired_capabilities => caps
  )
  @browser = browser
  puts "Browser is open"
end

After do |scenario|
  sleep(2)
  @browser.quit
end