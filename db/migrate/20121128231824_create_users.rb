class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :zip
      t.datetime :when

      t.timestamps
      
      add_column :users, :latitude,  :float #you can change the name, see wiki
      add_column :users, :longitude, :float #you can change the name, see wiki
      add_column :users, :gmaps, :boolean #not mandatory, see wiki     
    end
  end
end
