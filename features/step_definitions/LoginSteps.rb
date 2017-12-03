Given(/^I open the website$/) do
  homepage = HomePage.new(@driver)
  homepage.navigate
end

When(/^I login with credentials (.*) and (.*)$/) do |username, password|
  homepage = HomePage.new(@driver)
  homepage.login(username, password)
end

When(/^I login with credentials using record (.*)$/) do |record|
  homepage = HomePage.new(@driver)
  homepage.login_yaml(record)
end

Then(/^Flight Finder page is displayed$/) do
  homepage = HomePage.new(@driver)
  homepage.verify
end
