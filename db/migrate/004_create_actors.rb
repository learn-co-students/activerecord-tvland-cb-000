#Create a class and inherit from ActiveRecord::Migration
#by convention, the class name should match the part of the
#file name after the number, so in this case:
#004_create_actors.rb becomes class CreateActors
class CreateActors < ActiveRecord::Migration[4.2]
  #define a change method in which to do the migration
  def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :first_name
      t.string :last_name
    end
  end
end
