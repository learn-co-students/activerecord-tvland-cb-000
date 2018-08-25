#Create a class and inherit from ActiveRecord::Migration

#by convention, the class name should match the part of the
#file name after the number, so in this case:
#001_create_networks.rb becomes class CreateNetworks
class AddsCatchphraseToCharacters < ActiveRecord::Migration[4.2]
  #define a change method in which to do the migration
  def change
    add_column :characters, :catchphrase, :string
    
  end
end
