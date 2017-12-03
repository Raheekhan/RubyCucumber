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

  def login_yaml(record)
    data_record = YAML.load(File.read("/Users/ibrahimkhan/RubymineProjects/RubyCucumber/features/data/record.yaml"))
    usr_value = data_record["#{record}"]["username"]
    pwd_value = data_record["#{record}"]["password"]
    @driver.find_element(:name, "userName").send_keys usr_value
    @driver.find_element(:name, "password").send_keys pwd_value
    @driver.find_element(:name, "login").click
  end

  def verify
    @driver.find_element(:name, "findFlights")
  end
end