class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name
      t.text :description
      t.string :icon

      t.timestamps
    end
  end
end
