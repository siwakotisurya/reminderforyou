class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :task_id
      t.string :category_name
      t.string :sub_task_name
      t.text :sub_task_desc

      t.timestamps null: false
    end
  end
end
