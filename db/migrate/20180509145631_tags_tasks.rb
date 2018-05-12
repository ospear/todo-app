class TagsTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tags_tasks do |t|
      t.integer :tag_id
      t.integer :task_id
    end
  end
end
