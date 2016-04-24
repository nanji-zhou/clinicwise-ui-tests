load File.dirname(__FILE__) + '/../test_helper.rb'

describe "User Auth" do
  include TestHelper

  before(:all) do    
    @driver = $browser = Selenium::WebDriver.for(browser_type)
    @driver.navigate.to(site_url)
  end

  after(:all) do
    @driver.quit unless debugging?
  end


  it "[1] User can log in OK" do
    login("mark", "test")
    expect(page_text).to include("Signed in successfully.")
  end

end
