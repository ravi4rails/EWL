class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :role, :string
    add_column :users, :profile_image, :string
    add_column :users, :contact1, :string
    add_column :users, :contact2, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :address, :string
  end
end
