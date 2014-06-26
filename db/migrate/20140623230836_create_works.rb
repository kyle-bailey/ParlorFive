class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.text :description
      t.string :work_type
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
