require 'spec_helper'

describe ApplicationHelper do

  #// Note - these are TESTS to make sure that the "full_title" helper, defined in /app/helps/appliction_helper.rb is functioning correctly for use in our tests.  Ie, the is a pre-test for the full_title helper.  The full_title helper was included in /spec/support/utilities with the "include ApplicationHelper" statement.  See: http://stackoverflow.com/questions/16088921/rails-tutorial-chap-5-exercise-3-what-did-the-original-full-title-function-do/16120860#16120860
  describe "full_title" do
    it "should include the page title" do
      expect(full_title("foo")).to match(/foo/)
    end
  
    it "should include the base title" do
      expect(full_title("foo")).to match(/^Ruby on Rails Tutorial Sample App/)
      #// The /^.../ means that ... will match the beginning of a line.  In other words, the full_title will be a string that starts with the phrase "Ruby on Rails Tutorial Sample App" and then is followed by anything else.
    end
  
    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end