require 'minitest_helper'

describe "Pages integration" do
  
  describe "Home page" do
    it "should have the content 'MetaboDB Home'" do
      visit '/pages/home'
      #page.has_content?('MetaboDB Home').must_equal true
      #or thanks to capybara_minitest_gem we can use rspec style:
      page.must_have_content('MetaboDB')
    end

    it "should have the right title" do
      visit '/pages/home'
      page.must_have_selector('title',
                        :text => "MetaboDB | Home")
    end
  end

  describe "About page" do
    it "should have the right title" do
      skip "Do this later"
    end
  end

end