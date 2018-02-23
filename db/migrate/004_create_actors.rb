class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t|
      # Actor has a first and last name
      t.string :first_name
      t.string :last_name
    end
  end
end
