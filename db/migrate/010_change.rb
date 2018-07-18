class Change < ActiveRecord::Migration[4.2]


  remove_column :shows, :season, :integer
  add_column :shows, :season, :string

end
