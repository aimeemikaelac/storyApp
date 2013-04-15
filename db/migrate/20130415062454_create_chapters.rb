class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :story_id
      t.string :title

      t.timestamps
    end
  end
end
