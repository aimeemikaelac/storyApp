class AddColumnToSections < ActiveRecord::Migration
  def change
    add_column :sections, :section_text, :text
  end
end
