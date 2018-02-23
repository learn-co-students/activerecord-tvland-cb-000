class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      # A character should have a name and a show_id
      t.string :name
      t.integer :show_id
    end
  end
end
