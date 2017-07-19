Given(/^I visit "([^"]*)"$/) do |uri|
  @browser.goto(uri)
end

When(/^I search for "([^"]*)"$/) do |arg1|
  @browser.text_field(:name => 'q').set arg1
end

Then(/^I can see my results for "([^"]*)"$/) do |arg1|
  @browser.link(:text => /#{arg1}/).wait_until_present
end
