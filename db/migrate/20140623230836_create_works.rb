class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.text :description
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
