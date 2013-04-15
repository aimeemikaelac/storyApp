class Section < ActiveRecord::Base
  attr_accessible :chapter_id, :title
	belongs_to :chapter
	validates :chapter_id, :presence => true
	validates :title, :presence => true
end
