#Create a class and inherit from ActiveRecord::Migration
#005_create_characters.rb becomes class CreateCharacters
class CreateCharacters < ActiveRecord::Migration[4.2]
  #define a change method in which to do the migration
  def change
    create_table :characters do |t|
      #primary key of :id is created for us!
      t.string :name
      t.integer :show_id
    end
  end
end
