require 'rails_helper'

RSpec.describe Feed, type: :model do
  
 it "is not valid without a description" do 
 	feed = Feed.new
 	expect(feed).not_to be_valid
end

end
