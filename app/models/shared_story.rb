class SharedStory < ActiveRecord::Base
	belongs_to :user
	has_one :story
  attr_accessible :story_id, :user_id, :story
	
end
