class Story < ActiveRecord::Base
  # attr_accessible :title, :body
	belongs_to :user
	belongs_to :shared_story
	has_many :chapters
	validates :title, :presence => true
	validate :user_id, :presence => true
	attr_accessible :title, :user_id, :id
end
