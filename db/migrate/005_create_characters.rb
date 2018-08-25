#Create a class and inherit from ActiveRecord::Migration

#by convention, the class name should match the part of the
#file name after the number, so in this case:
#001_create_networks.rb becomes class CreateNetworks
class CreateCharacters < ActiveRecord::Migration[4.2]
  #define a change method in which to do the migration
  def change
    create_table :characters do |t| #we get a block variable here for the table
      t.string :name
      t.integer :show_id
      t.integer :actor_id
    end
  end
end
