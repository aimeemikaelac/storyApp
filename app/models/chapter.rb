class Chapter < ActiveRecord::Base
  attr_accessible :story_id, :title
	belongs_to :story
	has_many :sections
	validates :story_id, :presence => true
	validates :title, :presence => true
end
