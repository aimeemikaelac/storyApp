class AddAttachmentSectionDocToSections < ActiveRecord::Migration
  def self.up
    change_table :sections do |t|
      t.attachment :section_doc
    end
  end

  def self.down
    drop_attached_file :sections, :section_doc
  end
end
