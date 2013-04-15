class Section < ActiveRecord::Base
  attr_accessible :chapter_id, :title, :section_text
	belongs_to :chapter
	validates :chapter_id, :presence => true
	validates :title, :presence => true
end
