require 'selenium-webdriver'

class HomePage
  def initialize(driver)
    @driver = driver
  end

  def navigate
    @driver.get "http://newtours.demoaut.com/"
    @driver.manage.window.maximize
    @driver.manage.timeouts.implicit_wait = 5
  end

  def login(usr, pwd)
    @driver.find_element(:name, "userName").send_keys usr
    @driver.find_element(:name, "password").send_keys pwd
    @driver.find_element(:name, "login").click
  end

  def verify
    @driver.find_element(:name, "findFlights")
  end
end