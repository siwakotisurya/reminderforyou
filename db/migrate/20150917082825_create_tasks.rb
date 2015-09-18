class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :task_description
      t.datetime :task_date
      t.string :task_categories
      t.integer :task_time
      t.integer :task_hour
      t.integer :task_minute
      t.timestamps null: false
    end
  end
end
