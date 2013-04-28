class Section < ActiveRecord::Base
  attr_accessible :chapter_id, :title, :section_text, :section_doc
  has_attached_file :section_doc,
  	:url => "/assets/files/:id/:style/:basename.:extension",
  	:path => "cs446/coughlin/#{Rails.env}:url"
	belongs_to :chapter
	validates :chapter_id, :presence => true
	validates :title, :presence => true
	
	validates_attachment_presence :section_doc`
	validates_attachment_content_type :attachment, :content_type => [ 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' ]
end
