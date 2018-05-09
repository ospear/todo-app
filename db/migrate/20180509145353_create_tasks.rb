class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :status, limit: 1, null: false, default: 0
      t.datetime :due_at

      t.timestamps
    end
  end
end
