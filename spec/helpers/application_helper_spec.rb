require 'spec_helper'

describe ApplicationHelper do
  describe "full title" do
  	it "should include the page title" do
  	  expect(full_title("foo")).to match(/foo/)
  	end

  	it "should resolve to the base title" do
  	  expect(full_title("")).to match(GlobalConstants::BASE_TITLE)
  	end
  end
end