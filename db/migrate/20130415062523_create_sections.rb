class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :chapter_id
      t.string :title

      t.timestamps
    end
  end
end
